/*
* ==============================================================================
*
* FileName: WorkShopDto.cs
* Created: 2020/6/09 09:33:49
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System.ComponentModel.DataAnnotations;

namespace Meiam.System.Model.Dto
{
    /// <summary>
    /// 查询工厂定义
    /// </summary>
    public class FactoryQueryDto : PageParm
    {

        /// <summary>
        /// 描述 : 工厂定义 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "工厂定义")]
        public string QueryText { get; set; }

    }

    /// <summary>
    /// 添加工厂定义
    /// </summary>
    public class FactoryCreateDto
    {
        /// <summary>
        /// 描述 : 工厂编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "工厂编码")]
        [Required(ErrorMessage = "请填写工厂编码")]
        public string FactoryNo { get; set; }

        /// <summary>
        /// 描述 : 工厂名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "工厂名称")]
        [Required(ErrorMessage = "请填写工厂名称")]
        public string FactoryName { get; set; }

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

        /// <summary>
        /// 描述 : 公司UID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司UID")]
        [Required(ErrorMessage = "所属公司ID不能为空")]
        public string CompanyUID { get; set; }
    }

    /// <summary>
    /// 更新工厂定义
    /// </summary>
    public class FactoryUpdateDto
    {
        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "工厂ID不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 工厂编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "工厂编码")]
        [Required(ErrorMessage = "请填写工厂编码")]
        public string FactoryNo { get; set; }

        /// <summary>
        /// 描述 : 工厂名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "工厂名称")]
        [Required(ErrorMessage = "请填写工厂名称")]
        public string FactoryName { get; set; }

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

        /// <summary>
        /// 描述 : 公司UID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司UID")]
        [Required(ErrorMessage = "所属公司ID不能为空")]
        public string CompanyUID { get; set; }
    }
}
