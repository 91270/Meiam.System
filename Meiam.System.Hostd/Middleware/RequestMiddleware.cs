using Microsoft.AspNetCore.Http;
using NLog;
using System.Diagnostics;
using System.IO;
using System.Threading.Tasks;

namespace Meiam.System.Hostd.Middleware
{
    /// <summary>
    /// 中间件
    /// 记录请求和响应数据
    /// </summary>
    public class RequestMiddleware
    {

        private readonly RequestDelegate _next;

        /// <summary>
        /// 日志接口
        /// </summary>
        private static Logger logger = LogManager.GetCurrentClassLogger();

        private Stopwatch _stopwatch;

        public RequestMiddleware(RequestDelegate next)
        {
            _stopwatch = new Stopwatch();
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            // 过滤，只有接口
            if (context.Request.Path.Value.ToLower().Contains("api"))
            {
                context.Request.EnableBuffering();
                Stream originalBody = context.Response.Body;

                _stopwatch.Restart();

                // 获取 Api 请求内容
                var requestContent = await GetRequesContent(context);


                // 获取 Api 返回内容
                using (var ms = new MemoryStream())
                {
                    context.Response.Body = ms;

                    await _next(context);
                    ms.Position = 0;

                    await ms.CopyToAsync(originalBody);
                }

                context.Response.Body = originalBody;

                _stopwatch.Stop();

                var eventInfo = new LogEventInfo();
                eventInfo.Message = "Success";
                eventInfo.Properties["Elapsed"] = _stopwatch.ElapsedMilliseconds;
                eventInfo.Properties["RequestBody"] = requestContent;

                logger.Trace(eventInfo);
            }
            else
            {
                await _next(context);
            }
        }

        private async Task<string> GetRequesContent(HttpContext context)
        {
            var request = context.Request;
            var sr = new StreamReader(request.Body);

            var content = $"{await sr.ReadToEndAsync()}";

            if (!string.IsNullOrEmpty(content))
            {
                request.Body.Position = 0;
            }

            return content;
        }
    }
}

