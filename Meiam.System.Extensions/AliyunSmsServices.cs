using Aliyun.Acs.Core;
using Aliyun.Acs.Core.Http;
using Aliyun.Acs.Core.Profile;
using Meiam.System.Common;
using Meiam.System.Extensions.Dto;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;

namespace Meiam.System.Extensions
{
    public class AliyunSmsServices : IAliyunSmsServices
    {
        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<AliyunSmsServices> _logger;

        public AliyunSmsServices(ILogger<AliyunSmsServices> logger)
        {
            _logger = logger;
        }

        /// <summary>
        /// 阿里云短信发送接口
        /// </summary>
        public CommonResponse TemplateSmsSend(TemplateSmsSendDto parm)
        {
            IClientProfile profile = DefaultProfile.GetProfile(AppSettings.Configuration["ALYUN_SMS:REGIONID"],
                AppSettings.Configuration["ALYUN_SMS:KEY"],
                AppSettings.Configuration["ALYUN_SMS:SECRET"]);

            DefaultAcsClient client = new DefaultAcsClient(profile);
            CommonRequest request = new CommonRequest();
            request.Method = MethodType.POST;
            request.Domain = "dysmsapi.aliyuncs.com";
            request.Version = "2017-05-25";
            request.Action = "SendSms";
            request.AddQueryParameters("PhoneNumbers", parm.PhoneNumber);
            request.AddQueryParameters("SignName", parm.SignName);
            request.AddQueryParameters("TemplateCode", parm.TemplateCode);
            request.AddQueryParameters("TemplateParam", parm.TemplateParam);

            string logs = $"向用户 : { parm.PhoneNumber }  发送短信\r\n";
            logs += $"请求内容 : { JsonConvert.SerializeObject(request) } \r\n";
            CommonResponse response = client.GetCommonResponse(request);
            logs += $"返回内容 : { JsonConvert.SerializeObject(response) } \r\n";

            _logger.LogDebug(logs);

            return response;
        }
    }
}
