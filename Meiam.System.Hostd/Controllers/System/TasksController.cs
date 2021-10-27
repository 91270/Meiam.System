using Mapster;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Meiam.System.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SqlSugar;
using System;
using System.Threading.Tasks;

namespace Meiam.System.Hostd.Controllers.System
{
    /// <summary>
    /// 计划任务
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class TasksController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<TasksController> _logger;
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;
        /// <summary>
        /// 用户权限接口
        /// </summary>
        private readonly ISysTasksQzService _tasksQzService;

        /// <summary>
        /// 定时服务接口
        /// </summary>
        private readonly ITaskSchedulerServer _schedulerServer;

        public TasksController(ILogger<TasksController> logger, TokenManager tokenManager, ISysTasksQzService tasksQzService, ITaskSchedulerServer schedulerServer)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _tasksQzService = tasksQzService;
            _schedulerServer = schedulerServer;
        }

        /// <summary>
        /// 查询计划任务列表
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_TASKS_VIEW")]
        public IActionResult Query([FromBody] TasksQueryDto parm)
        {
            //开始拼装查询条件
            var predicate = Expressionable.Create<Sys_TasksQz>();

            predicate = predicate.AndIF(!string.IsNullOrEmpty(parm.QueryText), m => m.Name.Contains(parm.QueryText) || m.JobGroup.Contains(parm.QueryText) || m.AssemblyName.Contains(parm.QueryText));

            var response = _tasksQzService.GetPages(predicate.ToExpression(), parm);

            return toResponse(response);
        }

        /// <summary>
        /// 查询计划任务
        /// </summary>
        /// <param name="id">编码</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_TASKS_VIEW")]
        public IActionResult Get(string id)
        {
            if (!string.IsNullOrEmpty(id))
            {
                return toResponse(_tasksQzService.GetId(id));
            }
            return toResponse(_tasksQzService.GetAll());
        }

        /// <summary>
        /// 添加任务
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_TASKS_CREATE")]
        public IActionResult Create([FromBody] TasksCreateDto parm)
        {
            //判断是否已经存在
            if (_tasksQzService.Any(m => m.Name == parm.Name))
            {
                return toResponse(StatusCodeType.Error, $"添加 {parm.Name} 失败，该用任务存在，不能重复！");
            }

            // 根据 触发器模式 判断必填字段
            if (parm.TriggerType == 0)
            {
                if (parm.BeginTime == null || parm.EndTime == null)
                {
                    return toResponse(StatusCodeType.Error, $"触发器 Simple 模式下，开始结束时间不能为空");
                }

                if (parm.IntervalSecond <= 0)
                {
                    return toResponse(StatusCodeType.Error, $"触发器 Simple 模式下，执行间隔时间不能小于 0 秒");
                }
            }
            else
            {
                if (string.IsNullOrEmpty(parm.Cron))
                {
                    return toResponse(StatusCodeType.Error, $"触发器 Corn 模式下，运行时间表达式必须填写");
                }
            }

            //从 Dto 映射到 实体
            var tasksQz = parm.Adapt<Sys_TasksQz>().ToCreate(_tokenManager.GetSessionInfo());


            return toResponse(_tasksQzService.Add(tasksQz));
        }


        /// <summary>
        /// 更新任务
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_TASKS_UPDATE")]
        public IActionResult Update([FromBody] TasksUpdateDto parm)
        {
            //判断是否已经存在
            if (_tasksQzService.Any(m => m.Name == parm.Name && m.ID != parm.ID))
            {
                return toResponse(StatusCodeType.Error, $"更新 {parm.Name} 失败，该用任务存在，不能重复！");
            }

            // 根据 触发器模式 判断必填字段
            if (parm.TriggerType == 0)
            {
                if (parm.BeginTime == null || parm.EndTime == null)
                {
                    return toResponse(StatusCodeType.Error, $"触发器 Simple 模式下，开始结束时间不能为空");
                }

                if (parm.IntervalSecond <= 0)
                {
                    return toResponse(StatusCodeType.Error, $"触发器 Simple 模式下，执行间隔时间不能小于 0 秒");
                }
            }
            else
            {
                if (string.IsNullOrEmpty(parm.Cron))
                {
                    return toResponse(StatusCodeType.Error, $"触发器 Corn 模式下，运行时间表达式必须填写");
                }
            }

            var tasksQz = _tasksQzService.GetFirst(m => m.ID == parm.ID);

            if (tasksQz.IsStart)
            {
                return toResponse(StatusCodeType.Error, $"该任务正在运行中，请先停止在更新");
            }

            var userSession = _tokenManager.GetSessionInfo();

            #region 更新任务信息

            var response = _tasksQzService.Update(m => m.ID == parm.ID, m => new Sys_TasksQz
            {
                Name = parm.Name,
                JobGroup = parm.JobGroup,
                Cron = parm.Cron,
                AssemblyName = parm.AssemblyName,
                ClassName = parm.ClassName,
                Remark = parm.Remark,
                BeginTime = parm.BeginTime,
                EndTime = parm.EndTime,
                TriggerType = parm.TriggerType,
                IntervalSecond = parm.IntervalSecond,
                JobParams = parm.JobParams,
                UpdateID = userSession.UserID,
                UpdateName = userSession.UserName,
                UpdateTime = DateTime.Now
            });

            #endregion

            return toResponse(response);
        }

        /// <summary>
        /// 删除任务
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_TASKS_DELETE")]
        public async Task<IActionResult> Delete(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "删除任务 Id 不能为空");
            }

            if (!_tasksQzService.Any(m => m.ID == id))
            {
                return toResponse(StatusCodeType.Error, "任务不存在");
            }

            var tasksQz = _tasksQzService.GetFirst(m => m.ID == id);
            var taskResult = await _schedulerServer.DeleteTaskScheduleAsync(tasksQz);

            if (taskResult.StatusCode == 200)
            {
                _tasksQzService.Delete(id);
            }
            return new JsonResult(taskResult);
        }

        /// <summary>
        /// 启动任务
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_TASKS_UPDATE")]
        public async Task<IActionResult> Start(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "启动任务 Id 不能为空");
            }

            if (!_tasksQzService.Any(m => m.ID == id))
            {
                return toResponse(StatusCodeType.Error, "任务不存在");
            }

            var tasksQz = _tasksQzService.GetFirst(m => m.ID == id);
            var taskResult = await _schedulerServer.AddTaskScheduleAsync(tasksQz);

            if (taskResult.StatusCode == 200)
            {
                tasksQz.IsStart = true;
                _tasksQzService.Update(tasksQz);
            }

            return new JsonResult(taskResult);
        }

        /// <summary>
        /// 停止任务
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_TASKS_UPDATE")]
        public async Task<IActionResult> Stop(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "删除任务 Id 不能为空");
            }

            if (!_tasksQzService.Any(m => m.ID == id))
            {
                return toResponse(StatusCodeType.Error, "任务不存在");
            }

            var tasksQz = _tasksQzService.GetFirst(m => m.ID == id);
            var taskResult = await _schedulerServer.DeleteTaskScheduleAsync(tasksQz);

            if (taskResult.StatusCode == 200)
            {
                tasksQz.IsStart = false;
                _tasksQzService.Update(tasksQz);
            }

            return new JsonResult(taskResult);
        }
    }
}
