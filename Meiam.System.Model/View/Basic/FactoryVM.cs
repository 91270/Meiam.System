/*
* ==============================================================================
*
* FileName: FactoryVM.cs
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
    public class FactoryVM : Base_Factory
    {
        /// <summary>
        /// 描述 : 公司UID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司UID")]
        public string CompanyUID { get; set; }

        /// <summary>
        /// 描述 : 公司编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司编码")]
        public string CompanyNo { get; set; }

        /// <summary>
        /// 描述 : 公司名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "公司名称")]
        public string CompanyName { get; set; }
    }
}
