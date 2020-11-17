using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Meiam.System.Hostd.Controllers.System
{
    /// <summary>
    /// 角色权限
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class RolePowersController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<RolePowersController> _logger;

        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 角色权限接口
        /// </summary>
        private readonly ISysRolePowerService _rolePowerService;

        /// <summary>
        /// 权限定义接口
        /// </summary>
        private readonly ISysPowerService _powerService;

        /// <summary>
        /// 用户角色接口
        /// </summary>
        private readonly ISysUserRoleService _userRoleService;


        public RolePowersController(ILogger<RolePowersController> logger, TokenManager tokenManager,  ISysRolePowerService rolePowerService , ISysPowerService powerService, ISysUserRoleService userRoleService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _rolePowerService = rolePowerService;
            _powerService = powerService;
            _userRoleService = userRoleService;
        }

        /// <summary>
        /// 按分组汇总查询权限
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetPowersGroup()
        {
            var powers = (_powerService.GetAll()).OrderBy(m => m.CreateTime);

            var response = powers.GroupBy(m => m.Page).Select(m => new
            {
                Page = m.Key,
                Powers = powers.Where(p => p.Page == m.Key).OrderBy(m => m.CreateTime).Select(m => new { 
                    m.ID,
                    m.Name,
                    m.Description,
                    Checked = false
                }),          
            });

            return toResponse(response);
        }

        /// <summary>
        /// 查询角色权限
        /// </summary>
        /// <param name="roleId">角色id</param>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetRolePowers(string roleId)
        {
            if (string.IsNullOrEmpty(roleId))
            {
                return toResponse(StatusCodeType.Error, "roleId 不能为空");
            }
            return toResponse((_rolePowerService.GetWhere(m => m.RoleUID == roleId)).Select(m => m.PowerUID));
        }


        /// <summary>
        /// 更新角色权限
        /// </summary>
        /// <param name="parm"></param>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_ROLEPOWERS_UPDATE")]
        public IActionResult UpdateRolePowers([FromBody] RolePowersUpdateDto parm)
        {
            if (string.IsNullOrEmpty(parm.RoleId))
            {
                return toResponse(StatusCodeType.Error, "roleId 不能为空");
            }

            //生成插入对象
            List<Sys_RolePower> rolePowers = new List<Sys_RolePower>();
            foreach(var power in parm.PowerIds)
            {
                rolePowers.Add(new Sys_RolePower
                {
                     ID = GetGUID,
                     PowerUID = power,
                     RoleUID = parm.RoleId
                });
            }

            //执行更新过程
            try
            {
                _rolePowerService.BeginTran();
                // 先删除角色对应的权限
                _rolePowerService.Delete(o => o.RoleUID == parm.RoleId);
                // 再插入传递进来的权限
                _rolePowerService.Add(rolePowers);
                _rolePowerService.CommitTran();


                //更新登录会话记录
                var userIds =  _userRoleService.GetWhere(m => m.RoleID == parm.RoleId).Select(m => m.UserID);

                foreach (var userId in userIds)
                {
                    _tokenManager.RefreshSession(userId);
                }

                return toResponse(StatusCodeType.Success);

            }
            catch (Exception)
            {
                _rolePowerService.RollbackTran();
                throw;
            }
        }
    }
}
