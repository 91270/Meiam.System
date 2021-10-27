using Mapster;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Linq;

namespace Meiam.System.Hostd.Controllers.Basic
{
    /// <summary>
    /// 机台定义
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
        /// 机台定义接口
        /// </summary>
        private readonly IBaseEquipmentService _equipmentService;

        /// <summary>
        /// 数据关系接口
        /// </summary>
        private readonly ISysDataRelationService _dataRelationService;

        /// <summary>
        /// 工作单元接口
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;


        public EquipmentController(ILogger<EquipmentController> logger, TokenManager tokenManager, IBaseEquipmentService equipmentService, ISysDataRelationService dataRelationService, IUnitOfWork unitOfWork)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _equipmentService = equipmentService;
            _dataRelationService = dataRelationService;
            _unitOfWork = unitOfWork;
        }


        /// <summary>
        /// 查询机台定义列表
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization]
        public IActionResult Query([FromBody] EquipmentQueryDto parm)
        {
            var response = _equipmentService.QueryEquipPages(parm);
            return toResponse(response);
        }


        /// <summary>
        /// 根据 Id 查询机台定义
        /// </summary>
        /// <param name="id">ID</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult Get(string id = null)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "生机台 Id 不能为空");
            }
            return toResponse(_equipmentService.GetEquip(id));
        }

        /// <summary>
        /// 查询所有机台定义
        /// </summary>
        /// <param name="enable">是否启用（不传返回所有）</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetAll(bool? enable = null)
        {
            return toResponse(_equipmentService.GetAllEquip(enable));
        }


        /// <summary>
        /// 根据机台编码查询机台定义
        /// </summary>
        /// <param name="equipNo">编码</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetEquipByNo(string equipNo = null)
        {
            if (string.IsNullOrEmpty(equipNo))
            {
                return toResponse(StatusCodeType.Error, "机台编码不能为空");
            }
            return toResponse(_equipmentService.GetEquipByNo(equipNo));
        }

        /// <summary>
        /// 根据设备编码查询机台定义
        /// </summary>
        /// <param name="lineNo"></param>
        /// <param name="enable">是否启用（不传返回所有）</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetEquipByLineNo(string lineNo = null, bool? enable = null)
        {
            if (string.IsNullOrEmpty(lineNo))
            {
                return toResponse(StatusCodeType.Error, "设备编码不能为空");
            }
            return toResponse(_equipmentService.GetEquipByLine(lineNo, enable).OrderBy(m => m.EquipNo));
        }

        /// <summary>
        /// 添加机台定义
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
                    return toResponse(StatusCodeType.Error, $"添加机台编码 {parm.EquipNo} 已存在，不能重复！");
                }

                //从 Dto 映射到 实体
                _unitOfWork.BeginTran();

                var response = _equipmentService.Add(line);

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = line.ID,
                    To = parm.LineUID,
                    Type = DataRelationType.Equipment_To_Line.ToString()
                });

                _unitOfWork.CommitTran();

                return toResponse(response);
            }
            catch (Exception)
            {
                _unitOfWork.RollbackTran();
                throw;
            }
        }

        /// <summary>
        /// 更新机台定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_EQUIPMENT_UPDATE")]
        public IActionResult Update([FromBody] EquipmentUpdateDto parm)
        {
            if (_equipmentService.Any(m => m.EquipNo == parm.EquipNo && m.ID != parm.ID))
            {
                return toResponse(StatusCodeType.Error, $"添加机台编码 {parm.EquipNo} 已存在，不能重复！");
            }

            try
            {
                _unitOfWork.BeginTran();

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

                _unitOfWork.CommitTran();

                return toResponse(response);
            }
            catch (Exception)
            {
                _unitOfWork.RollbackTran();
                throw;
            }
        }

        /// <summary>
        /// 删除机台定义
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_EQUIPMENT_DELETE")]
        public IActionResult Delete(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "删除机台 Id 不能为空");
            }

            if (_dataRelationService.Any(m => m.To == id))
            {
                return toResponse(StatusCodeType.Error, "该机台已被关联，无法删除，若要请先删除关联");
            }

            try
            {
                _unitOfWork.BeginTran();
                _dataRelationService.Delete(m => m.Form == id && m.Type == DataRelationType.Equipment_To_Line.ToString());
                var response = _equipmentService.Delete(id);
                _unitOfWork.CommitTran();

                return toResponse(response);
            }
            catch (Exception)
            {
                _unitOfWork.RollbackTran();
                throw;
            }
        }
    }
}
