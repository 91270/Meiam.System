using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Meiam.System.Model
{
    /// <summary>
    /// 发送短信验证码列队
    /// </summary>
    public class QueueSMSCaptchaDto
    {
        /// <summary>
        /// 描述 : 手机号 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "手机号")]
        public string Mobile { get; set; }

        /// <summary>
        /// 描述 : 验证码 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "验证码")]
        public int Code { get; set; }
    }
}
