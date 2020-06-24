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
    /// 公司定义
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class CompanyController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<CompanyController> _logger;
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 公司定义接口
        /// </summary>
        private readonly IBaseCompanyService _companyService;

        /// <summary>
        /// 数据关系接口
        /// </summary>
        private readonly ISysDataRelationService  _dataRelationService;


        public CompanyController(ILogger<CompanyController> logger, TokenManager tokenManager, IBaseCompanyService companyService, ISysDataRelationService dataRelationService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _companyService = companyService;
            _dataRelationService = dataRelationService;
        }


        /// <summary>
        /// 查询公司定义列表
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_COMPANY_VIEW")]
        public IActionResult Query([FromBody] CompanyQueryDto parm)
        {
            //开始拼装查询条件
            var predicate = Expressionable.Create<Base_Company>();

            predicate = predicate.AndIF(!string.IsNullOrEmpty(parm.QueryText), m => m.CompanyName.Contains(parm.QueryText) || m.CompanyNo.Contains(parm.QueryText));

            var response = _companyService.GetPages(predicate.ToExpression(), parm);

            return toResponse(response);
        }


        /// <summary>
        /// 根据 Id 查询公司定义
        /// </summary>
        /// <param name="id">编码</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_COMPANY_VIEW")]
        public IActionResult Get(string id = null)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error,"公司 Id 不能为空");
            }
            return toResponse(_companyService.GetId(id));
        }

        /// <summary>
        /// 查询所有公司定义
        /// </summary>
        /// <param name="enable">是否启用（不传返回所有）</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_COMPANY_VIEW")]
        public IActionResult GetAll(bool? enable = null)
        {
            var predicate = Expressionable.Create<Base_Company>();

            predicate = predicate.AndIF(enable != null, m => m.Enable == enable);

            return toResponse(_companyService.GetWhere(predicate.ToExpression()));
        }

        /// <summary>
        /// 添加公司定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_COMPANY_CREATE")]
        public IActionResult Create([FromBody] CompanyCreateDto parm)
        {
            if (_companyService.Any(m => m.CompanyNo == parm.CompanyNo))
            {
                return toResponse(StatusCodeType.Error, $"添加公司编码 {parm.CompanyNo} 已存在，不能重复！");
            }

            //从 Dto 映射到 实体
            var company = parm.Adapt<Base_Company>().ToCreate(_tokenManager.GetSessionInfo());

            return toResponse(_companyService.Add(company));
        }

        /// <summary>
        /// 更新公司定义
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_COMPANY_UPDATE")]
        public IActionResult Update([FromBody] CompanyUpdateDto parm)
        {
            if (_companyService.Any(m => m.CompanyNo == parm.CompanyNo && m.ID != parm.ID))
            {
                return toResponse(StatusCodeType.Error, $"更新公司编码 {parm.CompanyNo} 已存在，不能重复！");
            }

            var userSession = _tokenManager.GetSessionInfo();

            return toResponse(_companyService.Update(m => m.ID == parm.ID, m => new Base_Company()
            {
                CompanyNo = parm.CompanyNo,
                CompanyName = parm.CompanyName,
                Enable = parm.Enable,
                Remark = parm.Remark,
                UpdateID = userSession.UserID,
                UpdateName = userSession.UserName,
                UpdateTime = DateTime.Now
            }));
        }

        /// <summary>
        /// 删除公司定义
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_COMPANY_DELETE")]
        public IActionResult Delete(string id)
        {
            if (string.IsNullOrEmpty(id))
            {
                return toResponse(StatusCodeType.Error, "删除公司 Id 不能为空");
            }

            if (_dataRelationService.Any(m => m.To == id))
            {
                return toResponse(StatusCodeType.Error, "该公司已被关联，无法删除，若要请先删除关联");
            }

            var response = _companyService.Delete(id);

            return toResponse(response);
        }
    }
}
