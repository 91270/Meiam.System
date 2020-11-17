using Mapster;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SqlSugar;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace Meiam.System.Hostd.Controllers.Basic
{
    /// <summary>
    /// 工序定义
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class ProductProcessController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<ProductProcessController> _logger;
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 工序定义接口
        /// </summary>
        private readonly IBaseProductProcessService _processService;

        /// <summary>
        /// 数据关系接口
        /// </summary>
        private readonly ISysDataRelationService _dataRelationService;


        public ProductProcessController(ILogger<ProductProcessController> logger, TokenManager tokenManager, IBaseProductProcessService processService, ISysDataRelationService dataRelationService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _processService = processService;
            _dataRelationService = dataRelationService;
        }


        /// <summary>
        /// 查询工序定义列表
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization]
        public IActionResult Query([FromBody] ProductProcessQueryDto parm)
        {
            var response = _processService.QueryProcessPages(parm);
            return toResponse(response);
        }


        /// <summary>
        /// 根据 Id 查询工序定义
        /// </summary>
        /// <param name="id">编码</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult Get(string id = null)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "生工序 Id 不能为空");
            }
            return toResponse(_processService.GetProcess(id));
        }

        /// <summary>
        /// 查询所有工序定义
        /// </summary>
        /// <param name="enable">是否启用（不传返回所有）</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetAll(bool? enable = null)
        {
            return toResponse(_processService.GetAllProcess(enable));
        }


        /// <summary>
        /// 添加工序定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_WORKSHOP_CREATE")]
        public IActionResult Create([FromBody] ProductProcessCreateDto parm)
        {
            try
            {

                var process = parm.Adapt<Base_ProductProcess>().ToCreate(_tokenManager.GetSessionInfo());

                if (_processService.Any(m => m.ProcessNo == parm.ProcessNo))
                {
                    return toResponse(StatusCodeType.Error, $"添加工序编码 {parm.ProcessNo} 已存在，不能重复！");
                }

                //从 Dto 映射到 实体
                _dataRelationService.BeginTran();

                var response = _processService.Add(process);

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = process.ID,
                    To = parm.WorkShopUID,
                    Type = DataRelationType.Process_To_WorkShop.ToString()
                });

                _dataRelationService.CommitTran();

                return toResponse(response);
            }
            catch (Exception) { _dataRelationService.RollbackTran(); throw; }
        }

        /// <summary>
        /// 更新工序定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_WORKSHOP_UPDATE")]
        public IActionResult Update([FromBody] ProductProcessUpdateDto parm)
        {
            if (_processService.Any(m => m.ProcessNo == parm.ProcessNo && m.ID != parm.ID))
            {
                return toResponse(StatusCodeType.Error, $"添加工序编码 {parm.ProcessNo} 已存在，不能重复！");
            }

            try
            {
                _dataRelationService.BeginTran();

                var userSession = _tokenManager.GetSessionInfo();

                var response = _processService.Update(m => m.ID == parm.ID, m => new Base_ProductProcess()
                {
                    ProcessNo = parm.ProcessNo,
                    ProcessName = parm.ProcessName,
                    Enable = parm.Enable,
                    Remark = parm.Remark,
                    UpdateID = userSession.UserID,
                    UpdateName = userSession.UserName,
                    UpdateTime = DateTime.Now
                });

                //删除关系表
                _dataRelationService.Delete(m => m.Form == parm.ID && m.Type == DataRelationType.Process_To_WorkShop.ToString());

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = parm.ID,
                    To = parm.WorkShopUID,
                    Type = DataRelationType.Process_To_WorkShop.ToString()
                });

                _dataRelationService.CommitTran();

                return toResponse(response);
            }
            catch (Exception)
            {
                _dataRelationService.RollbackTran();
                throw;
            }
        }

        /// <summary>
        /// 删除工序定义
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_WORKSHOP_DELETE")]
        public IActionResult Delete(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "删除工序 Id 不能为空");
            }

            if (_dataRelationService.Any(m => m.To == id))
            {
                return toResponse(StatusCodeType.Error, "该工序已被关联，无法删除，若要请先删除关联");
            }

            try
            {
                _dataRelationService.BeginTran();
                _dataRelationService.Delete(m => m.Form == id && m.Type == DataRelationType.Process_To_WorkShop.ToString());
                var response = _processService.Delete(id);
                _dataRelationService.CommitTran();

                return toResponse(response);
            }
            catch (Exception)
            {
                _dataRelationService.RollbackTran();
                throw;
            }
        }
    }
}
