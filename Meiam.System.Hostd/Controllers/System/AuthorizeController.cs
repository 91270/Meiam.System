using Mapster;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Meiam.System.Model.View;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Meiam.System.Hostd.Controllers.System
{
    /// <summary>
    ///  授权信息
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class AuthorizeController : BaseController
    {
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<AuthorizeController> _logger;

        /// <summary>
        /// 用户权限接口
        /// </summary>
        private readonly ISysUserRelationService _userRelationService;

        /// <summary>
        /// 数据关系接口
        /// </summary>
        private readonly ISysDataRelationService _dataRelationService;

        /// <summary>
        /// 公司定义接口
        /// </summary>
        private readonly IBaseCompanyService _companyService;

        /// <summary>
        /// 工厂定义接口
        /// </summary>
        private readonly IBaseFactoryService _factoryService;

        /// <summary>
        /// 车间定义接口
        /// </summary>
        private readonly IBaseWorkShopService _workShopService;

        /// <summary>
        /// 产线定义接口
        /// </summary>
        private readonly IBaseProductLineService _lineService;

        /// <summary>
        /// 工序定义接口
        /// </summary>
        private readonly IBaseProductProcessService _processService;

        public AuthorizeController(ILogger<AuthorizeController> logger, TokenManager tokenManager, ISysUserRelationService userRelationService,
            ISysDataRelationService dataRelationService, IBaseCompanyService companyService, IBaseFactoryService factoryService, IBaseWorkShopService workShopService,
            IBaseProductLineService lineService, IBaseProductProcessService processService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _userRelationService = userRelationService;
            _dataRelationService = dataRelationService;
            _companyService = companyService;
            _factoryService = factoryService;
            _workShopService = workShopService;
            _lineService = lineService;
            _processService = processService;
        }

        /// <summary>
        /// 获取数据权限树
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_USERS_VIEW")]
        public IActionResult GetRelationTree(string UserId)
        {
            var dataRelation = _dataRelationService.GetAll();
            var userRelation = _userRelationService.GetWhere(m => m.UserID == UserId);
            var dataCompany = _companyService.GetWhere(m => m.Enable == true);
            var dataFactory = _factoryService.GetWhere(m => m.Enable == true);
            var dataWorkShop = _workShopService.GetWhere(m => m.Enable == true);
            var dataLine = _lineService.GetWhere(m => m.Enable == true);
            var dataProcess = _processService.GetWhere(m => m.Enable == true);

            List<RelationTreeVM> relations = dataCompany.Select(m => new RelationTreeVM
            {
                ID = m.ID,
                RelationNo = m.CompanyNo,
                RelationName = m.CompanyName,
                RelationType = UserRelationType.Company.ToString(),
                ParentUID = null,
                HasRelation = userRelation.Any(u => u.ObjectID == m.ID),
                Remark = m.Remark,
                //工厂
                Children = dataFactory.Where(f => dataRelation.Where(r => r.To == m.ID && r.Type == DataRelationType.Factory_To_Company.ToString()).Select(r => r.Form).Contains(f.ID)).Select(f => new RelationTreeVM
                {
                    ID = f.ID,
                    RelationNo = f.FactoryNo,
                    RelationName = f.FactoryName,
                    RelationType = UserRelationType.Factory.ToString(),
                    ParentUID = m.ID,
                    HasRelation = userRelation.Any(u => u.ObjectID == f.ID),
                    Remark = f.Remark,
                    //车间
                    Children = dataWorkShop.Where(w => dataRelation.Where(r => r.To == f.ID && r.Type == DataRelationType.WorkShop_To_Factory.ToString()).Select(r => r.Form).Contains(w.ID)).Select(w => new RelationTreeVM
                    {
                        ID = w.ID,
                        RelationNo = w.WorkShopNo,
                        RelationName = w.WorkShopName,
                        RelationType = UserRelationType.WorkShop.ToString(),
                        ParentUID = f.ID,
                        HasRelation = userRelation.Any(u => u.ObjectID == w.ID),
                        Remark = w.Remark,
                        //生产线
                        Children = dataProcess.Where(l => dataRelation.Where(r => r.To == w.ID && r.Type == DataRelationType.Process_To_WorkShop.ToString()).Select(r => r.Form).Contains(l.ID)).Select(l => new RelationTreeVM
                        {
                            ID = l.ID,
                            RelationNo = l.ProcessNo,
                            RelationName = l.ProcessName,
                            RelationType = UserRelationType.ProductProcess.ToString(),
                            ParentUID = w.ID,
                            HasRelation = userRelation.Any(u => u.ObjectID == l.ID),
                            Remark = l.Remark,
                            //工序
                            Children = dataLine.Where(p => dataRelation.Where(r => r.To == l.ID && r.Type == DataRelationType.Line_To_Process.ToString()).Select(r => r.Form).Contains(p.ID)).Select(p => new RelationTreeVM
                            {
                                ID = p.ID,
                                RelationNo = p.LineNo,
                                RelationName = p.LineName,
                                RelationType = UserRelationType.ProductLine.ToString(),
                                ParentUID = l.ID,
                                HasRelation = userRelation.Any(u => u.ObjectID == p.ID),
                                Remark = p.Remark
                            }).OrderBy(m => m.RelationNo).ToList()
                        }).OrderBy(m => m.RelationNo).ToList()
                    }).OrderBy(m => m.RelationNo).ToList()
                }).OrderBy(m => m.RelationNo).ToList()
            }).OrderBy(m => m.RelationNo).ToList();

            return toResponse(relations);
        }

        /// <summary>
        /// 更新用户数据权限
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_USERS_UPDATE")]
        public IActionResult UpdateUserRelation([FromBody] UpdateUserRelationDto parm)
        {
            // 转化传入内容
            var relations = parm.Relation.Select(m => new Sys_UserRelation
            {
                ID = GetGUID,
                UserID = parm.UserID,
                ObjectID = m.ObjectID,
                ObjectType = m.ObjectType

            }).ToList();

            try
            {
                //开启事务
                _userRelationService.BeginTran();
                //清空权限
                _userRelationService.Delete(m => m.UserID == parm.UserID);
                //插入权限
                _userRelationService.Add(relations);
                _userRelationService.CommitTran();

                #region 更新登录会话记录

                _tokenManager.RefreshSession(parm.UserID);

                #endregion

                return toResponse(StatusCodeType.Success);
            }
            catch (Exception ex)
            {
                _userRelationService.RollbackTran();
                throw ex;
            }

        }
    }
}
