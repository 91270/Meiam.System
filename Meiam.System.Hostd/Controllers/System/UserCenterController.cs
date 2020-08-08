using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Meiam.System.Common;
using Meiam.System.Common.Utilities;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Extensions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace Meiam.System.Hostd.Controllers.System
{
    /// <summary>
    /// 用户中心
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class UserCenterController : BaseController
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<UserCenterController> _logger;
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 用户服务接口
        /// </summary>
        private readonly ISysUsersService _usersService;

        /// <summary>
        /// 用户权限接口
        /// </summary>
        private readonly ISysUserRelationService _relationService;

        public UserCenterController(ILogger<UserCenterController> logger, TokenManager tokenManager, ISysUsersService usersService, ISysUserRelationService relationService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _usersService = usersService;
            _relationService = relationService;
        }

        /// <summary>
        /// 更新密码（用户自用）
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization]
        public IActionResult UpdatePassword([FromBody] UserCenterUpdatePasswordDto parm)
        {
            if (Convert.ToBoolean(AppSettings.Configuration["AppSettings:Demo"]))
            {
                toResponse(StatusCodeType.Error, "当前为演示模式 , 您无权修改任何数据");
            }

            var userSession = _tokenManager.GetSessionInfo();

            var userInfo = _usersService.GetId(userSession.UserID);

            // 验证旧密码是否正确
            if (!PasswordUtil.ComparePasswords(userInfo.UserID, userInfo.Password, parm.CurrentPassword.Trim()))
            {
                return toResponse(StatusCodeType.Error, "旧密码输入不正确");
            }

            // 更新用户密码
            var response = _usersService.Update(m => m.UserID == userInfo.UserID, m => new Sys_Users()
            {
                Password = PasswordUtil.CreateDbPassword(userInfo.UserID, parm.ConfirmPassword.Trim())
            });

            // 删除登录会话记录
            _tokenManager.RemoveAllSession(userInfo.UserID);

            return toResponse(response);
        }


        /// <summary>
        /// 更新用户信息（用户自用）
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization]
        public IActionResult Update([FromBody] UserCenterUpdateDto parm)
        {
            var userSession = _tokenManager.GetSessionInfo();

            if (Convert.ToBoolean(AppSettings.Configuration["AppSettings:Demo"]))
            {
                toResponse(StatusCodeType.Error, "当前为演示模式 , 您无权修改任何数据");
            }

            #region 更新用户信息
            var response = _usersService.Update(m => m.UserID == userSession.UserID, m => new Sys_Users
            {
                NickName = parm.NickName,
                Email = parm.Email,
                Sex = parm.Sex,
                QQ = parm.QQ,
                Phone = parm.Phone,
                Birthday = parm.Birthday,
                UpdateID = userSession.UserID,
                UpdateName = userSession.UserName,
                UpdateTime = DateTime.Now
            });
            #endregion

            #region 更新登录会话记录

            _tokenManager.RefreshSession(userSession.UserID);

            #endregion

            return toResponse(response);
        }

        /// <summary>
        /// 头像上传接口
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization]
        public IActionResult AvatarUpload([FromForm(Name = "file")] IFormFile file)
        {
            try
            {

                var fileExtName = Path.GetExtension(file.FileName).ToLower();

                var fileName = DateTime.Now.Ticks.ToString() + fileExtName;

                string[] AllowedFileExtensions = new string[] { ".jpg", ".gif", ".png", ".jpeg" };

                int MaxContentLength = 1024 * 1024 * 4;

                if (!AllowedFileExtensions.Contains(fileExtName))
                {
                    return toResponse(StatusCodeType.Error, "上传失败，未经允许上传类型");
                }


                if (file.Length > MaxContentLength)
                {
                    return toResponse(StatusCodeType.Error, "上传图片过大，不能超过 " + (MaxContentLength / 1024).ToString() + " MB");
                }

                var filePath = $"/{DateTime.Now:yyyyMMdd}/";

                var avatarDirectory = $"{AppSettings.Configuration["AvatarUpload:AvatarDirectory"]}{filePath}";

                if (!Directory.Exists(avatarDirectory))
                {
                    Directory.CreateDirectory(avatarDirectory);
                }

                using (var stream = new FileStream($"{avatarDirectory}{fileName}", FileMode.Create))
                {
                    file.CopyTo(stream);
                }

                var avatarUrl = $"{AppSettings.Configuration["AvatarUpload:AvatarUrl"]}{filePath}{fileName}";

                var userSession = _tokenManager.GetSessionInfo();

                #region 更新用户信息
                var response = _usersService.Update(m => m.UserID == userSession.UserID, m => new Sys_Users
                {
                    AvatarUrl = avatarUrl,
                    UpdateID = userSession.UserID,
                    UpdateName = userSession.UserName,
                    UpdateTime = DateTime.Now
                }); 
                #endregion

                #region 更新登录会话记录

                _tokenManager.RefreshSession(userSession.UserID);

                #endregion

                return toResponse(avatarUrl);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
