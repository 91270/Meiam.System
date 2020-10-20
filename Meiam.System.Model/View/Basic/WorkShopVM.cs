/*
* ==============================================================================
*
* FileName: WorkShopVM.cs
* Created: 2020/6/8 13:44:33
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Meiam.System.Model.View
{
    public class WorkShopVM : Base_WorkShop
    {
        /// <summary>
        /// 描述 : 工厂UID 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工厂UID")]
        public string FactoryUID { get; set; }

        /// <summary>
        /// 描述 : 工厂编码 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工厂编码")]
        public string FactoryNo { get; set; }

        /// <summary>
        /// 描述 : 工厂名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "工厂名称")]
        public string FactoryName { get; set; }
    }
}
