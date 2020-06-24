/*
* ==============================================================================
*
* FileName: AuthDto.cs
* Created: 2020/5/15 22:28:07
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System.ComponentModel.DataAnnotations;

namespace Meiam.System.Model.Dto
{
    public class LoginDto
    {
        [Required(ErrorMessage = "登录账号不能为空")]
        [Display(Name = "登录账号")]
        public string UserName { get; set; }


        [Required(ErrorMessage = "登录密码不能为空")]
        [Display(Name = "登录密码")]
        public string PassWord { get; set; }

        [Required(ErrorMessage = "验证码不能为空")]
        [StringLength(4, MinimumLength = 4, ErrorMessage = "验证码长度不正确")]
        [Display(Name = "验证码")]
        public string Code { get; set; }

        [Required(ErrorMessage = "验证码UID不能为空")]
        [Display(Name = "验证码UID")]
        public string Uuid { get; set; }
    }

    public class LoginMiniProgramDto
    {
        [Required(ErrorMessage = "登录账号不能为空")]
        [Display(Name = "登录账号")]
        public string UserName { get; set; }


        [Required(ErrorMessage = "登录密码不能为空")]
        [Display(Name = "登录密码")]
        public string PassWord { get; set; }
    }


}
