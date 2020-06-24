/*
* ==============================================================================
*
* FileName: UserCenterDto.cs
* Created: 2020/6/16 17:32:24
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Meiam.System.Model.Dto
{

    /// <summary>
    /// 更新用户
    /// </summary>
    public class UserCenterUpdateDto
    {
        /// <summary>
        /// 描述 : 用户昵称 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户昵称")]
        public string NickName { get; set; }

        /// <summary>
        /// 描述 : 邮箱 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "邮箱")]
        public string Email { get; set; }

        /// <summary>
        /// 描述 : 性别 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "性别")]
        [Required(ErrorMessage = "用户性别不能为空")]
        public string Sex { get; set; }


        /// <summary>
        /// 描述 : QQ 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "QQ")]
        public string QQ { get; set; }

        /// <summary>
        /// 描述 : 手机号码 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "手机号码")]
        public string Phone { get; set; }


        /// <summary>
        /// 描述 : 生日 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "生日")]
        public DateTime? Birthday { get; set; }

    }

    public class UserCenterUpdatePasswordDto
    {
        /// <summary>
        /// 描述 : 旧密码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "旧密码")]
        [Required(ErrorMessage = "旧密码不能为空")]
        public string CurrentPassword { get; set; }

        /// <summary>
        /// 描述 : 新密码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "新密码")]
        [Required(ErrorMessage = "新密码不能为空")]
        public string ConfirmPassword { get; set; }
    }


}
