using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace Meiam.System.Hostd.Authorization
{
    /// <summary>
    /// 登录验证过滤器
    /// </summary>
    [AttributeUsage(AttributeTargets.Class | AttributeTargets.Method, AllowMultiple = true)]
    public class AuthorizationAttribute : Attribute, IAuthorizationFilter
    {
        #region 权限标识

        public string Power { get; set; } = "";

        #endregion

        public void OnAuthorization(AuthorizationFilterContext context)
        {
            #region 判断是否登录
            var _tokenManager = context.HttpContext.RequestServices.GetService<TokenManager>();

            if (!_tokenManager.IsAuthenticated())
            {
                ApiResult response = new ApiResult
                {
                    StatusCode = (int)StatusCodeType.Unauthorized,
                    Message = StatusCodeType.Unauthorized.GetEnumText()
                };

                context.Result = new JsonResult(response) { StatusCode = (int)StatusCodeType.Success };
                return;
            }

            #endregion

            #region 判断是否拥有权限
            if (!string.IsNullOrEmpty(Power))
            {
                if (!_tokenManager.GetSessionInfo().UserPower.Contains(Power))
                {
                    ApiResult response = new ApiResult
                    {
                        StatusCode = (int)StatusCodeType.Forbidden,
                        Message = StatusCodeType.Forbidden.GetEnumText()
                    };

                    context.Result = new JsonResult(response) { StatusCode = (int)StatusCodeType.Success };
                    return;
                }
            }
            #endregion
        }
    }
}