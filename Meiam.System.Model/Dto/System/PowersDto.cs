/*
* ==============================================================================
*
* FileName: PowersDto.cs
* Created: 2020/5/29 10:45:49
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
    /// 查询权限定义
    /// </summary>
    public class PowersQueryDto : PageParm
    {

        /// <summary>
        /// 描述 : 权限定义 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "角色定义")]
        public string Name { get; set; }

    }

    /// <summary>
    /// 添加权限标识
    /// </summary>
    public class PowersCreateDto
    {

        /// <summary>
        /// 描述 : 权限标识 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "权限标识")]
        [Required(ErrorMessage = "请填写权限标识命名规则（RRIV_功能_操作）")]
        public string Name { get; set; }

        /// <summary>
        /// 描述 : 系统页面 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "系统页面")]
        [Required(ErrorMessage = "请选择权限归属的系统页面")]
        public string Page { get; set; }

        /// <summary>
        /// 描述 : 权限描述 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "权限描述")]
        [Required(ErrorMessage = "请选择或设置权限描述")]
        public string Description { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }
    }

    /// <summary>
    /// 更新权限标识
    /// </summary>
    public class PowersUpdateDto
    {
        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "更新权限编码不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 权限标识 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "权限标识")]
        [Required(ErrorMessage = "请填写权限标识命名规则（RRIV_功能_操作）")]
        public string Name { get; set; }

        /// <summary>
        /// 描述 : 系统页面 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "系统页面")]
        [Required(ErrorMessage = "请选择权限归属的系统页面")]
        public string Page { get; set; }

        /// <summary>
        /// 描述 : 权限描述 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "权限描述")]
        [Required(ErrorMessage = "请选择或设置权限描述")]
        public string Description { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }
    }


}
