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
    /// 设备定义
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class EquipmentController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<EquipmentController> _logger;

        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 设备定义接口
        /// </summary>
        private readonly IBaseEquipmentService _equipmentService;
        
        /// <summary>
        /// 数据关系接口
        /// </summary>
        private readonly ISysDataRelationService _dataRelationService;


        public EquipmentController(ILogger<EquipmentController> logger, TokenManager tokenManager, IBaseEquipmentService equipmentService, ISysDataRelationService dataRelationService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _equipmentService = equipmentService;
            _dataRelationService = dataRelationService;
        }


        /// <summary>
        /// 查询设备定义列表
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_EQUIPMENT_VIEW")]
        public IActionResult Query([FromBody] EquipmentQueryDto parm)
        {
            var response = _equipmentService.QueryEquipPages(parm);
            return toResponse(response);
        }


        /// <summary>
        /// 根据 Id 查询设备定义
        /// </summary>
        /// <param name="id">编码</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_EQUIPMENT_VIEW")]
        public IActionResult Get(string id = null)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "生设备 Id 不能为空");
            }
            return toResponse(_equipmentService.GetEquip(id));
        }

        /// <summary>
        /// 查询所有设备定义
        /// </summary>
        /// <param name="enable">是否启用（不传返回所有）</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_EQUIPMENT_VIEW")]
        public IActionResult GetAll(bool? enable = null)
        {
            return toResponse(_equipmentService.GetAllEquip(enable));
        }


        /// <summary>
        /// 添加设备定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_EQUIPMENT_CREATE")]
        public IActionResult Create([FromBody] EquipmentCreateDto parm)
        {

            try
            {
                var line = parm.Adapt<Base_Equipment>().ToCreate(_tokenManager.GetSessionInfo());

                if (_equipmentService.Any(m => m.EquipNo == parm.EquipNo))
                {
                    return toResponse(StatusCodeType.Error, $"添加设备编码 {parm.EquipNo} 已存在，不能重复！");
                }

                //从 Dto 映射到 实体
                _dataRelationService.BeginTran();

                var response = _equipmentService.Add(line);

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = line.ID,
                    To = parm.LineUID,
                    Type = DataRelationType.Equipment_To_Line.ToString()
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
        /// 更新设备定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_EQUIPMENT_UPDATE")]
        public IActionResult Update([FromBody] EquipmentUpdateDto parm)
        {
            if (_equipmentService.Any(m => m.EquipNo == parm.EquipNo && m.ID != parm.ID))
            {
                return toResponse(StatusCodeType.Error, $"添加设备编码 {parm.EquipNo} 已存在，不能重复！");
            }

            try
            {
                _dataRelationService.BeginTran();

                var userSession = _tokenManager.GetSessionInfo();

                var response = _equipmentService.Update(m => m.ID == parm.ID, m => new Base_Equipment()
                {
                    EquipNo = parm.EquipNo,
                    EquipName = parm.EquipName,
                    Enable = parm.Enable,
                    Remark = parm.Remark,
                    UpdateID = userSession.UserID,
                    UpdateName = userSession.UserName,
                    UpdateTime = DateTime.Now
                });

                //删除关系表
                _dataRelationService.Delete(m => m.Form == parm.ID && m.Type == DataRelationType.Equipment_To_Line.ToString());

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = parm.ID,
                    To = parm.LineUID,
                    Type = DataRelationType.Equipment_To_Line.ToString()
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
        /// 删除设备定义
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_EQUIPMENT_DELETE")]
        public IActionResult Delete(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "删除设备 Id 不能为空");
            }

            if (_dataRelationService.Any(m => m.To == id))
            {
                return toResponse(StatusCodeType.Error, "该设备已被关联，无法删除，若要请先删除关联");
            }

            try
            {
                _dataRelationService.BeginTran();
                _dataRelationService.Delete(m => m.Form == id && m.Type == DataRelationType.Equipment_To_Line.ToString());
                var response = _equipmentService.Delete(id);
                _dataRelationService.CommitTran();

                return toResponse(response);
            }
            catch (Exception ex)
            {
                _dataRelationService.RollbackTran();
                throw ex;
            }
        }
    }
}
