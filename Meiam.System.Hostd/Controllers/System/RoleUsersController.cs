using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Meiam.System.Hostd.Controllers.System
{
    /// <summary>
    /// 用户角色
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class RoleUsersController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<RoleUsersController> _logger;
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 用户角色接口
        /// </summary>
        private readonly ISysUserRoleService _userRoleService;

        /// <summary>
        /// 用户服务接口
        /// </summary>
        private readonly ISysUsersService _userService;

        public RoleUsersController(ILogger<RoleUsersController> logger, TokenManager tokenManager, ISysUserRoleService userRoleService, ISysUsersService userService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _userRoleService = userRoleService;
            _userService = userService;
        }

        /// <summary>
        /// 查询角色用户
        /// </summary>
        /// <param name="roleId">角色 Id</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_ROLEUSERS_VIEW")]
        public IActionResult Get(string roleId)
        {
            if (string.IsNullOrEmpty(roleId))
            {
                return toResponse(StatusCodeType.Error, "roleId 不能为空");
            }

            var response = _userRoleService.GetRoleUsers(roleId).OrderBy(m => m.UserID);

            return toResponse(response);
        }

        /// <summary>
        /// 添加角色用户
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_ROLEUSERS_CREATE")]
        public IActionResult Create([FromBody] RoleUsersCreateDto parm)
        {
            List<Sys_UserRole> relations = new List<Sys_UserRole>();

            foreach (var userId in parm.UserIds)
            {
                relations.Add(new Sys_UserRole
                {
                    ID = GetGUID,
                    UserID = userId,
                    RoleID = parm.RoleId,
                });
            }

            var response = _userRoleService.Add(relations);


            //更新登录会话记录
            foreach (var userId in parm.UserIds)
            {
                _tokenManager.RefreshSession(userId);
            }

            return toResponse(response);
        }

        /// <summary>
        /// 删除角色用户
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_ROLEUSERS_DELETE")]
        public IActionResult Delete([FromBody] RoleUsersDeleteDto parm)
        {
            var response = _userRoleService.Delete(m => m.RoleID == parm.RoleId
                && parm.UserIds.Contains(m.UserID)
           );

            //更新登录会话记录
            foreach (var userId in parm.UserIds)
            {
                _tokenManager.RefreshSession(userId);
            }

            return toResponse(response);
        }

        /// <summary>
        /// 查询角色未添加用户列表
        /// </summary>
        /// <param name="roleId">角色 Id</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization(Power = "PRIV_ROLEUSERS_VIEW")]
        public IActionResult GetExcludeUsers(string roleId)
        {
            if (string.IsNullOrEmpty(roleId))
            {
                return toResponse(StatusCodeType.Error, "roleId 不能为空");
            }

            // 取得该角色所有添加的用户
            var userIds = _userRoleService.GetWhere(m => m.RoleID == roleId).Select(m => m.UserID);

            // 获取未添加用户
            var response = _userService.GetWhere(m => !userIds.Contains(m.UserID)).OrderBy(m => m.CreateTime);

            return toResponse(response);
        }

    }
}
