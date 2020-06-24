/*
* ==============================================================================
*
* FileName: ProductProcessVM.cs
* Created: 2020/6/10 13:38:41
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System.ComponentModel.DataAnnotations;

namespace Meiam.System.Model.View
{
    public class ProductProcessVM : Base_ProductProcess
    {

        /// <summary>
        /// 描述 : 车间UID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "车间UID")]
        public string WorkShopUID { get; set; }

        /// <summary>
        /// 描述 : 车间编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "车间编码")]
        public string WorkShopNo { get; set; }

        /// <summary>
        /// 描述 : 车间名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "车间名称")]
        public string WorkShopName { get; set; }

        /// <summary>
        /// 描述 : 工厂UID 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "工厂UID")]
        public string FactoryUID { get; set; }

        /// <summary>
        /// 描述 : 工厂编码 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "工厂编码")]
        public string FactoryNo { get; set; }

        /// <summary>
        /// 描述 : 工厂名称 
        /// 空值 : False
        /// 默认 : 
        /// <summary>
        [Display(Name = "工厂名称")]
        public string FactoryName { get; set; }
    }
}
