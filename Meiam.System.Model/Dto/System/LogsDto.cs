/*
* ==============================================================================
*
* FileName: LogsDto.cs
* Created: 2020/6/11 8:53:35
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
    /// 查询日志
    /// </summary>
    public class LogsQueryDto : PageParm
    {
        /// <summary>
        /// 描述 : 开始时间 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "开始时间")]
        [Required(ErrorMessage = "开始时间不能为空")]
        public DateTime BeginDate { get; set; }

        /// <summary>
        /// 描述 : 结束时间 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "结束时间")]
        [Required(ErrorMessage = "结束时间不能为空")]
        public DateTime EndDate { get; set; }

        /// <summary>
        /// 描述 : 日志等级 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "日志等级")]
        public string Level { get; set; }

        /// <summary>
        /// 描述 : 查询字符串 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "查询字符串")]
        public string QueryText { get; set; }
    }
}
