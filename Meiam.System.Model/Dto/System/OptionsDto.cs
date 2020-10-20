/*
* ==============================================================================
*
* FileName: OptionsDto.cs
* Created: 2020/6/2 13:15:22
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
    /// 查询字典定义
    /// </summary>
    public class OptionsQueryDto : PageParm
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
    /// 新增字典定义
    /// </summary>
    public class OptionsCreateDto
    {
        /// <summary>
        /// 描述 : 分组（System_Menus_Status） 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "分组（SYS_MENU_STATUS）")]
        [Required(ErrorMessage = "请填写字典分组 命名规则（SYS_MENU_STATUS）")]
        public string Option { get; set; }

        /// <summary>
        /// 描述 : 名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "名称")]
        [Required(ErrorMessage = "请填写字典名称")]
        public string Label { get; set; }

        /// <summary>
        /// 描述 : 内容 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "内容")]
        [Required(ErrorMessage = "请填写字典内容")]
        public string Value { get; set; }

        /// <summary>
        /// 描述 : 排序 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "排序")]
        [Required(ErrorMessage = "请设置在分组中的排序")]
        public int SortIndex { get; set; }

        /// <summary>
        /// 描述 : 描述 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "描述")]
        public string Remark { get; set; }
    }

    /// <summary>
    /// 更新字典定义
    /// </summary>
    public class OptionsUpdateDto
    {

        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "更新ID不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 分组（System_Menus_Status） 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "分组（System_Menus_Status）")]
        [Required(ErrorMessage = "请填写字典分组 命名规则（SYS_MENU_STATUS）")]
        public string Option { get; set; }

        /// <summary>
        /// 描述 : 名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "名称")]
        [Required(ErrorMessage = "请填写字典名称")]
        public string Label { get; set; }

        /// <summary>
        /// 描述 : 内容 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "内容")]
        [Required(ErrorMessage = "请填写字典内容")]
        public string Value { get; set; }

        /// <summary>
        /// 描述 : 排序 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "排序")]
        [Required(ErrorMessage = "请设置在分组中的排序")]
        public int SortIndex { get; set; }

        /// <summary>
        /// 描述 : 描述 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "描述")]
        public string Remark { get; set; }
    }
}
