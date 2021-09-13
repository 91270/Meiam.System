using Meiam.System.Model;

namespace Meiam.System.Hostd.Queue
{
    public interface ISubscriberService
    {
        void QueueSMSCaptcha(QueueSMSCaptchaDto captcha);
    }
}
