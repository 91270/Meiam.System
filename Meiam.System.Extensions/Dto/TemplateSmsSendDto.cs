using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Meiam.System.Extensions.Dto
{
    /// <summary>
    /// 短信发送模板
    /// </summary>
    public class TemplateSmsSendDto
    {
        /// <summary>
        /// 手机号 
        /// <summary>
        [Display(Name = "手机号")]
        public string PhoneNumber{ get; set; }

        /// <summary>
        /// 短信签名 
        /// <summary>
        [Display(Name = "短信签名")]
        public string SignName { get; set; }


        /// <summary>
        /// 短信模板 
        /// <summary>
        [Display(Name = "短信模板")]
        public string TemplateCode { get; set; }


        /// <summary>
        /// 短信参数 
        /// <summary>
        [Display(Name = "短信参数")]
        public string TemplateParam { get; set; }
    }
}
