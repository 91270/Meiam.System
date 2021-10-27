using DotNetCore.CAP;
using Meiam.System.Extensions;
using Meiam.System.Extensions.Dto;
using Meiam.System.Model;
using Microsoft.Extensions.Logging;

namespace Meiam.System.Hostd.Queue
{
    public class SubscriberService : ISubscriberService, ICapSubscribe
    {

        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<SubscriberService> _logger;
        /// <summary>
        /// 阿里云短信接口
        /// </summary>
        private readonly IAliyunSmsServices _smsServices;

        public SubscriberService(ILogger<SubscriberService> logger, IAliyunSmsServices smsServices)
        {
            _logger = logger;
            _smsServices = smsServices;
        }

        /// <summary>
        /// 发送短信队列
        /// </summary>
        /// <param name="captcha"></param>
        [CapSubscribe("Meiam.QueueService.SMSCaptcha")]
        public void QueueSMSCaptcha(QueueSMSCaptchaDto captcha)
        {
            _smsServices.TemplateSmsSend(new TemplateSmsSendDto
            {
                PhoneNumber = captcha.Mobile,
                SignName = "测试模板",
                TemplateCode = "SMS_196975003",
                TemplateParam = $"{{\"code\":\"{ captcha.Code }\"}}"
            });
        }

    }
}
