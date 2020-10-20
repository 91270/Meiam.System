/*
* ==============================================================================
*
* FileName: RolesDto.cs
* Created: 2020/5/29 10:45:49
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Meiam.System.Model.Dto
{

    /// <summary>
    /// 查询用户
    /// </summary>
    public class UsersQueryDto : PageParm
    {

        /// <summary>
        /// 描述 : 查询字符串 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "查询字符串")]
        public string QueryText { get; set; }

    }

    /// <summary>
    /// 添加用户
    /// </summary>
    public class UsersCreateDto
    {
        /// <summary>
        /// 描述 : 用户账号 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户账号")]
        [Required(ErrorMessage = "用户账号不能为空")]
        public string UserID { get; set; }

        /// <summary>
        /// 描述 : 用户名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户名称")]
        [Required(ErrorMessage = "用户名称不能为空")]
        public string UserName { get; set; }

        /// <summary>
        /// 描述 : 用户昵称 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户昵称")]
        public string NickName { get; set; }

        /// <summary>
        /// 描述 : 邮箱 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "邮箱")]
        public string Email { get; set; }

        /// <summary>
        /// 描述 : 密码 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "密码")]
        [Required(ErrorMessage = "用户密码不能为空")]
        public string Password { get; set; }

        /// <summary>
        /// 描述 : 性别 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "性别")]
        [Required(ErrorMessage = "用户性别不能为空")]
        public string Sex { get; set; }

        /// <summary>
        /// 描述 : 头像地址 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "头像地址")]
        public string AvatarUrl { get; set; }

        /// <summary>
        /// 描述 : QQ 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "QQ")]
        public string QQ { get; set; }

        /// <summary>
        /// 描述 : 手机号码 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "手机号码")]
        public string Phone { get; set; }

        /// <summary>
        /// 描述 : 用户所在省份编码 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在省份编码")]
        public string ProvinceID { get; set; }

        /// <summary>
        /// 描述 : 用户所在省份 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在省份")]
        public string Province { get; set; }

        /// <summary>
        /// 描述 : 用户所在城市编码 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在城市编码")]
        public string CityID { get; set; }

        /// <summary>
        /// 描述 : 用户所在城市 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在城市")]
        public string City { get; set; }

        /// <summary>
        /// 描述 : 用户所在县/区编码 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在县/区编码")]
        public string CountyID { get; set; }

        /// <summary>
        /// 描述 : 用户所在县/区 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在县/区")]
        public string County { get; set; }

        /// <summary>
        /// 描述 : 地址 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "地址")]
        public string Address { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 身份证 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "身份证")]
        public string IdentityCard { get; set; }

        /// <summary>
        /// 描述 : 生日 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "生日")]
        public DateTime? Birthday { get; set; }

        /// <summary>
        /// 描述 : 是否启用 
        /// 空值 : False
        /// 默认 : 1
        /// </summary>
        [Display(Name = "是否启用")]
        public bool Enabled { get; set; } = true;

        /// <summary>
        /// 描述 : 单用户模式 
        /// 空值 : False
        /// 默认 : 0
        /// </summary>
        [Display(Name = "单用户模式")]
        public bool OneSession { get; set; } = true;
    }

    /// <summary>
    /// 更新用户
    /// </summary>
    public class UsersUpdateDto
    {
        /// <summary>
        /// 描述 : 用户账号 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户账号")]
        [Required(ErrorMessage = "用户账号不能为空")]
        public string UserID { get; set; }

        /// <summary>
        /// 描述 : 用户名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户名称")]
        [Required(ErrorMessage = "用户名称不能为空")]
        public string UserName { get; set; }

        /// <summary>
        /// 描述 : 用户昵称 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户昵称")]
        public string NickName { get; set; }

        /// <summary>
        /// 描述 : 邮箱 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "邮箱")]
        public string Email { get; set; }

        /// <summary>
        /// 描述 : 性别 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "性别")]
        [Required(ErrorMessage = "用户性别不能为空")]
        public string Sex { get; set; }

        /// <summary>
        /// 描述 : 头像地址 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "头像地址")]
        public string AvatarUrl { get; set; }

        /// <summary>
        /// 描述 : QQ 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "QQ")]
        public string QQ { get; set; }

        /// <summary>
        /// 描述 : 手机号码 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "手机号码")]
        public string Phone { get; set; }

        /// <summary>
        /// 描述 : 用户所在省份编码 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在省份编码")]
        public string ProvinceID { get; set; }

        /// <summary>
        /// 描述 : 用户所在省份 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在省份")]
        public string Province { get; set; }

        /// <summary>
        /// 描述 : 用户所在城市编码 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在城市编码")]
        public string CityID { get; set; }

        /// <summary>
        /// 描述 : 用户所在城市 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在城市")]
        public string City { get; set; }

        /// <summary>
        /// 描述 : 用户所在县/区编码 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在县/区编码")]
        public string CountyID { get; set; }

        /// <summary>
        /// 描述 : 用户所在县/区 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户所在县/区")]
        public string County { get; set; }

        /// <summary>
        /// 描述 : 地址 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "地址")]
        public string Address { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 身份证 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "身份证")]
        public string IdentityCard { get; set; }

        /// <summary>
        /// 描述 : 生日 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "生日")]
        public DateTime? Birthday { get; set; }

        /// <summary>
        /// 描述 : 是否启用 
        /// 空值 : False
        /// 默认 : 1
        /// </summary>
        [Display(Name = "是否启用")]
        public bool Enabled { get; set; }

        /// <summary>
        /// 描述 : 单用户模式 
        /// 空值 : False
        /// 默认 : 0
        /// </summary>
        [Display(Name = "单用户模式")]
        public bool OneSession { get; set; }
    }

    /// <summary>
    /// 删除用户
    /// </summary>
    public class UsersDeleteDto 
    {

        /// <summary>
        /// 描述 : 删除用户数组 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "删除用户数组")]
        public List<string> UserIds { get; set; }
    }

    /// <summary>
    /// 启用禁用用户
    /// </summary>
    public class UsersEnableDto
    {

        /// <summary>
        /// 描述 : 启用禁用用户
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "启用禁用用户")]
        public List<string> UserIds { get; set; }

        /// <summary>
        /// 描述 : 禁用/启用
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "禁用/启用")]
        public bool Status { get; set; }
    }


    public class UsersResetPasswordDto
    {
        /// <summary>
        /// 描述 : 用户账号 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "用户账号")]
        [Required(ErrorMessage = "用户账号不能为空")]
        public string UserID { get; set; }

        /// <summary>
        /// 描述 : 新密码 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "新密码")]
        [Required(ErrorMessage = "新密码不能为空")]
        public string ConfirmPassword { get; set; }
    }


}
