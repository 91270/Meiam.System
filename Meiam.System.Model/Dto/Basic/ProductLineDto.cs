/*
* ==============================================================================
*
* FileName: ProductLineDto.cs
* Created: 2020/6/9 13:27:10
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
    /// 查询产线定义
    /// </summary>
    public class ProductLineQueryDto : PageParm
    {

        /// <summary>
        /// 描述 : 产线定义 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "产线定义")]
        public string QueryText { get; set; }

    }

    /// <summary>
    /// 添加产线定义
    /// </summary>
    public class ProductLineCreateDto
    {
        /// <summary>
        /// 描述 : 产线编码 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "产线编码")]
        [Required(ErrorMessage = "请填写产线编码")]
        public string LineNo { get; set; }

        /// <summary>
        /// 描述 : 产线名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "产线名称")]
        [Required(ErrorMessage = "请填写产线名称")]
        public string LineName { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 是否启用 
        /// 空值 : False
        /// 默认 : 1
        /// </summary>
        [Display(Name = "是否启用")]
        [Required(ErrorMessage = "请设置是否启用")]
        public bool Enable { get; set; }

        /// <summary>
        /// 描述 : 车间UID 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "车间UID")]
        [Required(ErrorMessage = "所属车间ID不能为空")]
        public string ProcessUID { get; set; }
    }

    /// <summary>
    /// 更新产线定义
    /// </summary>
    public class ProductLineUpdateDto
    {
        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "产线ID不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 产线编码 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "产线编码")]
        [Required(ErrorMessage = "请填写产线编码")]
        public string LineNo { get; set; }

        /// <summary>
        /// 描述 : 产线名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "产线名称")]
        [Required(ErrorMessage = "请填写产线名称")]
        public string LineName { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 是否启用 
        /// 空值 : False
        /// 默认 : 1
        /// </summary>
        [Display(Name = "是否启用")]
        [Required(ErrorMessage = "请设置是否启用")]
        public bool Enable { get; set; }

        /// <summary>
        /// 描述 : 工序UID 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工序UID")]
        [Required(ErrorMessage = "所属工序ID不能为空")]
        public string ProcessUID { get; set; }
    }

}
