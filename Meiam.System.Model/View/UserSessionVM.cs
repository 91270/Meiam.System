/*
* ==============================================================================
*
* FileName: UserSession.cs
* Created: 2020/5/19 14:39:24
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Meiam.System.Model
{
    public class UserSessionVM
    {

        /// <summary>
        /// 描述 : 用户账号 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户账号")]
        public string UserID { get; set; }

        /// <summary>
        /// 描述 : 用户名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户名称")]
        public string UserName { get; set; }

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
        public string Sex { get; set; }

        /// <summary>
        /// 描述 : 照片 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "头像地址")]
        public string AvatarUrl { get; set; }

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
        /// 描述 : 用户所在省份编码 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户所在省份编码")]
        public string ProvinceID { get; set; }

        /// <summary>
        /// 描述 : 用户所在省份 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户所在省份")]
        public string Province { get; set; }

        /// <summary>
        /// 描述 : 用户所在城市编码 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户所在城市编码")]
        public string CityID { get; set; }

        /// <summary>
        /// 描述 : 用户所在城市 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户所在城市")]
        public string City { get; set; }

        /// <summary>
        /// 描述 : 用户所在县/区编码 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户所在县/区编码")]
        public string CountyID { get; set; }

        /// <summary>
        /// 描述 : 用户所在县/区 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "用户所在县/区")]
        public string County { get; set; }

        /// <summary>
        /// 描述 : 地址 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "地址")]
        public string Address { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 身份证 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "身份证")]
        public string IdentityCard { get; set; }

        /// <summary>
        /// 描述 : 生日 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "生日")]
        public DateTime? Birthday { get; set; }

        /// <summary>
        /// 描述 : 创建时间 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "创建时间")]
        public DateTime? CreateTime { get; set; }

        /// <summary>
        /// 描述 : 是否启用 
        /// 空值 : False
        /// 默认 : 1
        /// <summary>
        [Display(Name = "是否启用")]
        public bool Enabled { get; set; }

        /// <summary>
        /// 描述 : 单用户模式 
        /// 空值 : False
        /// 默认 : 0
        /// <summary>
        [Display(Name = "单用户模式")]
        public bool OneSession { get; set; }

        /// <summary>
        /// 描述 : 来源   
        /// 空值 : False    
        /// 默认 :   
        /// </summary>
        [Display(Name = "来源")]
        public string Source { get; set; }

        /// <summary>
        /// 描述 : 持续时间   
        /// 空值 : False    
        /// 默认 :   
        /// </summary>
        [Display(Name = "持续时间")]
        public int KeepHours { get; set; }

        /// <summary>
        /// 描述 : 系统权限   
        /// 空值 : False    
        /// 默认 :   
        /// </summary>
        [Display(Name = "系统权限")]
        public List<string> UserPower { get; set; }

        /// <summary>
        /// 描述 : 数据权限   
        /// 空值 : False    
        /// 默认 :   
        /// </summary>
        [Display(Name = "数据权限")]
        public List<Sys_UserRelation> UserRelation { get; set; }

    }
}
