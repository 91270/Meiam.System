/*
* ==============================================================================
*
* FileName: OnlineDto.cs
* Created: 2020/6/11 11:30:52
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
    /// 查询在线用户
    /// </summary>
    public class OnlineQueryDto : PageParm
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
    /// 踢出在线用户
    /// </summary>
    public class OnlineDeleteDto
    {
        /// <summary>
        /// 描述 : SessionId选择列表 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "SessionId选择列表")]
        public List<string> SessionIds { get; set; }
    }
}
