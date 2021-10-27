using Meiam.System.Common;
using Meiam.System.Common.Utilities;
using Meiam.System.Core;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json.Linq;
using System;

namespace Meiam.System.Hostd.Controllers.System
{
    /// <summary>
    /// 用户验证
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class AuthController : BaseController
    {
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<AuthController> _logger;

        /// <summary>
        /// 用户服务接口
        /// </summary>
        private readonly ISysUsersService _userService;

        /// <summary>
        /// 用户关系接口
        /// </summary>
        private readonly ISysUserRelationService _userRelationService;

        public AuthController(TokenManager tokenManager, ISysUsersService userService, ILogger<AuthController> logger,
            ISysUserRelationService userRelationService)
        {
            _tokenManager = tokenManager;
            _userService = userService;
            _logger = logger;
            _userRelationService = userRelationService;
        }

        /// <summary>
        /// 获取验证码
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IActionResult Code()
        {
            var code = CaptchaUtil.GetRandomEnDigitalText();

            var verifyCode = CaptchaUtil.GenerateCaptchaImage(code);

            RedisServer.Cache.Set($"Captcha:{verifyCode.CaptchaGUID}", verifyCode.CaptchaCode, 1800);

            JObject result = new JObject();

            result.Add("captchaCode", $"data:image/png;base64,{Convert.ToBase64String(verifyCode.CaptchaMemoryStream.ToArray())}");
            result.Add("captchaGUID", verifyCode.CaptchaGUID);

            return toResponse(result);
        }

        /// <summary>
        /// 后台用户登录
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public IActionResult Login([FromBody] LoginDto parm)
        {

            var captchaCode = RedisServer.Cache.Get($"Captcha:{parm.Uuid}");

            RedisServer.Cache.Del($"Captcha:{parm.Uuid}");

            if (parm.Code.ToUpper() != captchaCode)
            {
                return toResponse(StatusCodeType.Error, "输入验证码无效");
            }

            var userInfo = _userService.GetFirst(o => o.UserID == parm.UserName.Trim());

            if (userInfo == null)
            {
                return toResponse(StatusCodeType.Error, "用户名或密码错误");
            }

            if (!PasswordUtil.ComparePasswords(userInfo.UserID, userInfo.Password, parm.PassWord.Trim()))
            {
                return toResponse(StatusCodeType.Error, "用户名或密码错误");
            }

            if (!userInfo.Enabled)
            {
                return toResponse(StatusCodeType.Error, "用户未启用，请联系管理员！");
            }

            var userToken = _tokenManager.CreateSession(userInfo, SourceType.Web, Convert.ToInt32(AppSettings.Configuration["AppSettings:WebSessionExpire"]));

            return toResponse(userToken);
        }

        /// <summary>
        /// 微信小程序用户登录
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public IActionResult LoginMiniProgram([FromBody] LoginMiniProgramDto parm)
        {
            var userInfo = _userService.GetFirst(o => o.UserID == parm.UserName.Trim());

            if (userInfo == null)
            {
                return toResponse(StatusCodeType.Error, "用户名或密码错误");
            }

            if (!PasswordUtil.ComparePasswords(userInfo.UserID, userInfo.Password, parm.PassWord.Trim()))
            {
                return toResponse(StatusCodeType.Error, "用户名或密码错误");
            }

            if (!userInfo.Enabled)
            {
                return toResponse(StatusCodeType.Error, "用户未启用，请联系管理员！");
            }

            var userToken = _tokenManager.CreateSession(userInfo, SourceType.MiniProgram, Convert.ToInt32(AppSettings.Configuration["AppSettings:MiniProgramSessionExpire"]));

            return toResponse(userToken);
        }

        /// <summary>
        /// 用户退出
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IActionResult LogOut()
        {
            _tokenManager.RemoveSession(_tokenManager.GetSysToken);

            return toResponse(StatusCodeType.Success);
        }

        /// <summary>
        /// 用户信息获取
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetUserInfo()
        {
            return toResponse(_tokenManager.GetSessionInfo());
        }

        /// <summary>
        /// 获取用户公司
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetUserCompany()
        {
            return toResponse(_userRelationService.GetUserCompany(_tokenManager.GetSessionInfo(), true));
        }

        /// <summary>
        /// 获取用户工厂
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetUserFactory()
        {
            return toResponse(_userRelationService.GetUserFactory(_tokenManager.GetSessionInfo(), true));
        }

        /// <summary>
        /// 获取用户车间
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetUserWorkShop()
        {
            return toResponse(_userRelationService.GetUserWorkShop(_tokenManager.GetSessionInfo(), true));
        }

        /// <summary>
        /// 获取用户工序
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetUserProductProcess()
        {
            return toResponse(_userRelationService.GetUserProductProcess(_tokenManager.GetSessionInfo(), true));
        }

        /// <summary>
        /// 获取用户设备
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Authorization]
        public IActionResult GetUserProductLine()
        {
            return toResponse(_userRelationService.GetUserProductLine(_tokenManager.GetSessionInfo(), true));
        }
    }
}