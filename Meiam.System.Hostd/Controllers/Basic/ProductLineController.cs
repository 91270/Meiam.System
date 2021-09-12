using Mapster;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;

namespace Meiam.System.Hostd.Controllers.Basic
{
    /// <summary>
    /// 设备定义
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class ProductLineController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<ProductLineController> _logger;
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 设备定义接口
        /// </summary>
        private readonly IBaseProductLineService _lineService;

        /// <summary>
        /// 数据关系接口
        /// </summary>
        private readonly ISysDataRelationService _dataRelationService;

        /// <summary>
        /// 工作单元接口
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;


        public ProductLineController(ILogger<ProductLineController> logger, TokenManager tokenManager, IBaseProductLineService lineService, ISysDataRelationService dataRelationService,IUnitOfWork unitOfWork)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _lineService = lineService;
            _dataRelationService = dataRelationService;
            _unitOfWork = unitOfWork;
        }


        /// <summary>
        /// 查询设备定义列表
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization]
        public IActionResult Query([FromBody] ProductLineQueryDto parm)
        {
            var response = _lineService.QueryLinePages(parm);
            return toResponse(response);
        }


        /// <summary>
        /// 根据 Id 查询设备定义
        /// </summary>
        /// <param name="id">编码</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult Get(string id = null)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "生设备 Id 不能为空");
            }
            return toResponse(_lineService.GetLine(id));
        }

        /// <summary>
        /// 查询所有设备定义
        /// </summary>
        /// <param name="enable">是否启用（不传返回所有）</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetAll(bool? enable = null)
        {
            return toResponse(_lineService.GetAllLine(enable));
        }


        /// <summary>
        /// 添加设备定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_WORKSHOP_CREATE")]
        public IActionResult Create([FromBody] ProductLineCreateDto parm)
        {

            try
            {
                var line = parm.Adapt<Base_ProductLine>().ToCreate(_tokenManager.GetSessionInfo());

                if (_lineService.Any(m => m.LineNo == parm.LineNo))
                {
                    return toResponse(StatusCodeType.Error, $"添加设备编码 {parm.LineNo} 已存在，不能重复！");
                }

                //从 Dto 映射到 实体
                _unitOfWork.BeginTran();

                var response = _lineService.Add(line);

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = line.ID,
                    To = parm.ProcessUID,
                    Type = DataRelationType.Line_To_Process.ToString()
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
        /// 更新设备定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_WORKSHOP_UPDATE")]
        public IActionResult Update([FromBody] ProductLineUpdateDto parm)
        {
            if (_lineService.Any(m => m.LineNo == parm.LineNo && m.ID != parm.ID))
            {
                return toResponse(StatusCodeType.Error, $"添加设备编码 {parm.LineNo} 已存在，不能重复！");
            }

            try
            {
                _unitOfWork.BeginTran();

                var userSession = _tokenManager.GetSessionInfo();

                var response = _lineService.Update(m => m.ID == parm.ID, m => new Base_ProductLine()
                {
                    LineNo = parm.LineNo,
                    LineName = parm.LineName,
                    Enable = parm.Enable,
                    Remark = parm.Remark,
                    UpdateID = userSession.UserID,
                    UpdateName = userSession.UserName,
                    UpdateTime = DateTime.Now
                });

                //删除关系表
                _dataRelationService.Delete(m => m.Form == parm.ID && m.Type == DataRelationType.Line_To_Process.ToString());

                //插入关系表
                _dataRelationService.Add(new Sys_DataRelation
                {
                    ID = GetGUID,
                    Form = parm.ID,
                    To = parm.ProcessUID,
                    Type = DataRelationType.Line_To_Process.ToString()
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
        /// 删除设备定义
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_WORKSHOP_DELETE")]
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
                _unitOfWork.BeginTran();
                _dataRelationService.Delete(m => m.Form == id && m.Type == DataRelationType.Line_To_Process.ToString());
                var response = _lineService.Delete(id);
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
