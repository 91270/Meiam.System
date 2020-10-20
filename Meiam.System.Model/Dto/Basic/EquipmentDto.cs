/*
* ==============================================================================
*
* FileName: EquipmentDto.cs
* Created: 2020/6/15 8:46:22
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
    /// 查询工序定义
    /// </summary>
    public class EquipmentQueryDto : PageParm
    {

        /// <summary>
        /// 描述 : 工序定义 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工序定义")]
        public string QueryText { get; set; }

    }

    /// <summary>
    /// 添加工序定义
    /// </summary>
    public class EquipmentCreateDto
    {
        /// <summary>
        /// 描述 : 工序编码 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工序编码")]
        [Required(ErrorMessage = "请填写工序编码")]
        public string EquipNo { get; set; }

        /// <summary>
        /// 描述 : 工序名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工序名称")]
        [Required(ErrorMessage = "请填写工序名称")]
        public string EquipName { get; set; }

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
        [Display(Name = "工厂UID")]
        [Required(ErrorMessage = "所属车间ID不能为空")]
        public string LineUID { get; set; }
    }

    /// <summary>
    /// 更新工序定义
    /// </summary>
    public class EquipmentUpdateDto
    {
        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "工序ID不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 工序编码 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工序编码")]
        [Required(ErrorMessage = "请填写工序编码")]
        public string EquipNo { get; set; }

        /// <summary>
        /// 描述 : 工序名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工序名称")]
        [Required(ErrorMessage = "请填写工序名称")]
        public string EquipName { get; set; }

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
        public string LineUID { get; set; }
    }
}
