using Meiam.System.Model;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;

namespace Meiam.System.Hostd.Global
{
    public class GlobalExceptions : Attribute, IExceptionFilter
    {
        private readonly IWebHostEnvironment _env;
        private readonly ILogger<GlobalExceptions> _logger;

        public GlobalExceptions(IWebHostEnvironment env, ILogger<GlobalExceptions> logger)
        {
            _env = env;
            _logger = logger;
        }

        public void OnException(ExceptionContext context)
        {
            ApiResult<string> response = new ApiResult<string>();

            response.StatusCode = (int)StatusCodeType.Error;
            response.Message = context.Exception.Message;//错误信息

            if (_env.IsDevelopment())
            {
                response.Data = context.Exception.StackTrace;//堆栈信息
            }

            context.Result = new JsonResult(response) { StatusCode = (int)StatusCodeType.Success };

            //采用log4net 进行错误日志记录
            _logger.LogError(WriteLog(response.Message, context.Exception));

        }

        /// <summary>
        /// 自定义返回格式
        /// </summary>
        /// <param name="throwMsg"></param>
        /// <param name="ex"></param>
        /// <returns></returns>
        public string WriteLog(string throwMsg, Exception ex)
        {
            return $"\r\n【自定义错误】：{throwMsg} \r\n【异常类型】：{ex.GetType().Name} \r\n【异常信息】：{ex.Message} \r\n【堆栈调用】：{ex.StackTrace }\r\n";
        }

    }
}
