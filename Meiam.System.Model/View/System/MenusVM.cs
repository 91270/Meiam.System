/*
* ==============================================================================
*
* FileName: MenusVM.cs
* Created: 2020/5/25 13:41:09
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Meiam.System.Model.View
{
    public class UserMenusVM
    {
        [Display(Name = "菜单标题")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public string name { get; set; }

        [Display(Name = "路由地址")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public string path { get; set; }

        [Display(Name = "是否隐藏")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public bool hidden { get; set; }

        [Display(Name = "是否外链")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public string redirect { get; set; }

        [Display(Name = "组件路径")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public string component { get; set; }

        [Display(Name = "菜单信息")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public MenuMetaVM meta { get; set; }

        [Display(Name = "子菜单")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public List<UserMenusVM> children;
    }

    public class MenuMetaVM
    {
        [Display(Name = "菜单标题")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public string title { get; set; }

        [Display(Name = "系统图标")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public string icon { get; set; }

        [Display(Name = "路由地址")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public string path { get; set; }

        [Display(Name = "是否缓存")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public bool keepAlive { get; set; }
    }

    public class MenuListVM : Sys_Menu
    {
        [Display(Name = "子菜单")]
        [JsonProperty(NullValueHandling = NullValueHandling.Ignore)]
        public List<MenuListVM> Children { get; set; }
    }
}
