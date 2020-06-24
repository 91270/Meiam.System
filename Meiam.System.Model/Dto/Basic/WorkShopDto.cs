/*
* ==============================================================================
*
* FileName: FactoryDto.cs
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
    /// 查询车间定义
    /// </summary>
    public class WorkShopQueryDto : PageParm
    {

        /// <summary>
        /// 描述 : 车间定义 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "车间定义")]
        public string QueryText { get; set; }

    }

    /// <summary>
    /// 添加车间定义
    /// </summary>
    public class WorkShopCreateDto
    {
        /// <summary>
        /// 描述 : 车间编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "车间编码")]
        [Required(ErrorMessage = "请填写车间编码")]
        public string WorkShopNo { get; set; }

        /// <summary>
        /// 描述 : 车间名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "车间名称")]
        [Required(ErrorMessage = "请填写车间名称")]
        public string WorkShopName { get; set; }

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
        [Display(Name = "工厂UID")]
        [Required(ErrorMessage = "所属工厂ID不能为空")]
        public string FactoryUID { get; set; }
    }

    /// <summary>
    /// 更新车间定义
    /// </summary>
    public class WorkShopUpdateDto
    {
        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "车间ID不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 车间编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "车间编码")]
        [Required(ErrorMessage = "请填写车间编码")]
        public string WorkShopNo { get; set; }

        /// <summary>
        /// 描述 : 车间名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "车间名称")]
        [Required(ErrorMessage = "请填写车间名称")]
        public string WorkShopName { get; set; }

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
        [Display(Name = "工厂UID")]
        [Required(ErrorMessage = "所属工厂ID不能为空")]
        public string FactoryUID { get; set; }
    }
}
