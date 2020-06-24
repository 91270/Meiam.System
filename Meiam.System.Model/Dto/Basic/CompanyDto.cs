/*
* ==============================================================================
*
* FileName: CompanyDto.cs
* Created: 2020/6/08 10:45:49
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System.ComponentModel.DataAnnotations;

namespace Meiam.System.Model.Dto
{

    /// <summary>
    /// 查询公司定义
    /// </summary>
    public class CompanyQueryDto : PageParm
    {

        /// <summary>
        /// 描述 : 公司定义 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司定义")]
        public string QueryText { get; set; }

    }

    /// <summary>
    /// 添加公司定义
    /// </summary>
    public class CompanyCreateDto
    {
        /// <summary>
        /// 描述 : 公司编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司编码")]
        [Required(ErrorMessage = "请填写公司编码")]
        public string CompanyNo { get; set; }

        /// <summary>
        /// 描述 : 公司名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司名称")]
        [Required(ErrorMessage = "请填写公司名称")]
        public string CompanyName { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 是否启用 
        /// 空值 : False
        /// 默认 : 1
        /// <summary>
        [Display(Name = "是否启用")]
        [Required(ErrorMessage = "请设置是否启用")]
        public bool Enable { get; set; }
    }

    /// <summary>
    /// 更新公司定义
    /// </summary>
    public class CompanyUpdateDto
    {
        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "更新公司定义不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 公司编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司编码")]
        [Required(ErrorMessage = "请填写公司编码")]
        public string CompanyNo { get; set; }

        /// <summary>
        /// 描述 : 公司名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司名称")]
        [Required(ErrorMessage = "请填写公司名称")]
        public string CompanyName { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// <summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 是否启用 
        /// 空值 : False
        /// 默认 : 1
        /// <summary>
        [Display(Name = "是否启用")]
        [Required(ErrorMessage = "请设置是否启用")]
        public bool Enable { get; set; }
    }


}
