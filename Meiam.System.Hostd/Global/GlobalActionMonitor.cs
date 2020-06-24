using Meiam.System.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using NLog;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;

namespace Meiam.System.Hostd.Global
{
    public class GlobalActionMonitor : Attribute, IActionFilter
    {
        public GlobalActionMonitor()
        {
        }

        public void OnActionExecuted(ActionExecutedContext context)
        {
        }

        public void OnActionExecuting(ActionExecutingContext context)
        {
            #region 模型验证
            if (context.ModelState.IsValid) return;

            ApiResult response = new ApiResult();
            response.StatusCode = (int)StatusCodeType.ParameterError;

            foreach (var item in context.ModelState.Values)
            {
                foreach (var error in item.Errors)
                {
                    if (!string.IsNullOrEmpty(response.Message))
                    {
                        response.Message += " | ";
                    }

                    response.Message += error.ErrorMessage;
                }
            }

            context.Result = new JsonResult(response);
            #endregion
        }
    }
}
