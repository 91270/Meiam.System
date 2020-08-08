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
    /// 工厂定义
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class FactoryController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<FactoryController> _logger;
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 工厂定义接口
        /// </summary>
        private readonly IBaseFactoryService _factoryService;

        /// <summary>
        /// 数据关系接口
        /// </summary>
        private readonly ISysDataRelationService _dataRelationService;


        public FactoryController(ILogger<FactoryController> logger, TokenManager tokenManager, IBaseFactoryService factoryService, ISysDataRelationService dataRelationService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _factoryService = factoryService;
            _dataRelationService = dataRelationService;
        }


        /// <summary>
        /// 查询工厂定义列表
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization]
        public IActionResult Query([FromBody] FactoryQueryDto parm)
        {
            var response = _factoryService.QueryFactoryPages(parm);
            return toResponse(response);
        }


        /// <summary>
        /// 根据 Id 查询工厂定义
        /// </summary>
        /// <param name="id">编码</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult Get(string id = null)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "工厂 Id 不能为空");
            }
            return toResponse(_factoryService.GetFactory(id));
        }

        /// <summary>
        /// 查询所有工厂定义
        /// </summary>
        /// <param name="enable">是否启用（不传返回所有）</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetAll(bool? enable = null)
        {
            return toResponse(_factoryService.GetAllFactory(enable));
        }

        /// <summary>
        /// 添加工厂定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_FACTORY_CREATE")]
        public IActionResult Create([FromBody] FactoryCreateDto parm)
        {
            try
            {
                var factory = parm.Adapt<Base_Factory>().ToCreate(_tokenManager.GetSessionInfo());

                if (_factoryService.Any(m => m.FactoryNo == parm.FactoryNo))
                {
                    return toResponse(StatusCodeType.Error, $"添加工厂编码 {parm.FactoryNo} 已存在，不能重复！");
                }

                //从 Dto 映射到 实体
                _dataRelationService.BeginTran();

                var response = _factoryService.Add(factory);

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = factory.ID,
                    To = parm.CompanyUID,
                    Type = DataRelationType.Factory_To_Company.ToString()
                });

                _dataRelationService.CommitTran();

                return toResponse(response);
            }
            catch (Exception ex)
            {
                _dataRelationService.RollbackTran();
                throw ex;
            }
        }

        /// <summary>
        /// 更新工厂定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_FACTORY_UPDATE")]
        public IActionResult Update([FromBody] FactoryUpdateDto parm)
        {
            if (_factoryService.Any(m => m.FactoryNo == parm.FactoryNo && m.ID != parm.ID))
            {
                return toResponse(StatusCodeType.Error, $"更新工厂编码 {parm.FactoryNo} 已存在，不能重复！");
            }

            try
            {
                _dataRelationService.BeginTran();

                var userSession = _tokenManager.GetSessionInfo();

                var response = _factoryService.Update(m => m.ID == parm.ID, m => new Base_Factory()
                {
                    FactoryNo = parm.FactoryNo,
                    FactoryName = parm.FactoryName,
                    Enable = parm.Enable,
                    Remark = parm.Remark,
                    UpdateID = userSession.UserID,
                    UpdateName = userSession.UserName,
                    UpdateTime = DateTime.Now
                });

                //删除关系表
                _dataRelationService.Delete(m => m.Form == parm.ID && m.Type == DataRelationType.Factory_To_Company.ToString());

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = parm.ID,
                    To = parm.CompanyUID,
                    Type = DataRelationType.Factory_To_Company.ToString()
                });

                _dataRelationService.CommitTran();

                return toResponse(response);
            }
            catch (Exception ex)
            {
                _dataRelationService.RollbackTran();
                throw ex;
            }
        }

        /// <summary>
        /// 删除工厂定义
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_FACTORY_DELETE")]
        public IActionResult Delete(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "删除工厂 Id 不能为空");
            }

            if (_dataRelationService.Any(m => m.To == id))
            {
                return toResponse(StatusCodeType.Error, "该工厂已被关联，无法删除，若要请先删除关联");
            }

            try
            {
                _dataRelationService.BeginTran();
                _dataRelationService.Delete(m => m.Form == id && m.Type == DataRelationType.Factory_To_Company.ToString());
                var response = _factoryService.Delete(id);
                _dataRelationService.CommitTran();

                return toResponse(response);
            }
            catch(Exception ex)
            {
                _dataRelationService.RollbackTran();
                throw ex;
            }
        }
    }
}
