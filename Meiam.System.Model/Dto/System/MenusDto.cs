/*
* ==============================================================================
*
* FileName: MenusDto.cs
* Created: 2020/5/26 20:13:31
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
    /// 查询菜单
    /// </summary>
    public class MenusQueryDto
    {
        /// <summary>
        /// 描述 : 菜单名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "菜单名称")]
        public string Name { get; set; }

        [Display(Name = "所属系统")]
        public int System { get; set; }
    }

    /// <summary>
    /// 添加菜单
    /// </summary>
    public class MenusCreateDto
    {

        /// <summary>
        /// 描述 : 菜单类型 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "菜单类型")]
        [Required(ErrorMessage = "请选择菜单类型")]
        public int Type { get; set; }

        /// <summary>
        /// 描述 : 菜单名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "菜单名称")]
        [Required(ErrorMessage = "请填写菜单名称")]
        public string Name { get; set; }

        /// <summary>
        /// 描述 : 图标 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "图标")]
        [Required(ErrorMessage = "请选择图标")]
        public string Icon { get; set; }

        /// <summary>
        /// 描述 : 路由地址 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "路由地址")]
        public string Path { get; set; }

        /// <summary>
        /// 描述 : 组件路径 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "组件路径")]
        public string Component { get; set; }

        /// <summary>
        /// 描述 : 默认排序 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "默认排序")]
        [Required(ErrorMessage = "请设置默认排序编号")]
        public int SortIndex { get; set; }

        /// <summary>
        /// 描述 : 浏览权限 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "浏览权限")]
        public string ViewPower { get; set; }

        /// <summary>
        /// 描述 : 上级菜单 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "上级菜单")]
        public string ParentUID { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 是否可见 
        /// 空值 : False
        /// 默认 : 0
        /// </summary>
        [Display(Name = "是否可见")]
        [Required(ErrorMessage = "请选择菜单是否可见")]
        public bool Hidden { get; set; }

        /// <summary>
        /// 描述 : 可用系统(0-PC，1-Wx) 
        /// 空值 : False
        /// 默认 : 0
        /// </summary>
        [Display(Name = "可用系统(0-PC，1-Wx)")]
        [Required(ErrorMessage = "请选择菜单归属系统")]
        public int System { get; set; }

        /// <summary>
        /// 描述 : 是否外链 
        /// 空值 : False
        /// 默认 : 0
        /// </summary>
        [Display(Name = "是否外链")]
        [Required(ErrorMessage = "请选择菜单是否外链")]
        public bool isFrame { get; set; }

        /// <summary>
        /// 描述 : 是否缓存 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "是否缓存")]
        [Required(ErrorMessage = "请选择菜单是否缓存")]
        public bool KeepAlive { get; set; }
    }

   /// <summary>
   /// 更新菜单
   /// </summary>
    public class MenusUpdateDto
    {

        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "更新菜单编码不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 菜单名称 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "菜单名称")]
        [Required(ErrorMessage = "请填写菜单名称")]
        public string Name { get; set; }

        /// <summary>
        /// 描述 : 菜单类型 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "菜单类型")]
        [Required(ErrorMessage = "请选择菜单类型")]
        public int Type { get; set; }

        /// <summary>
        /// 描述 : 图标 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "图标")]
        [Required(ErrorMessage = "请选择图标")]
        public string Icon { get; set; }

        /// <summary>
        /// 描述 : 路由地址 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "路由地址")]
        public string Path { get; set; }

        /// <summary>
        /// 描述 : 组件路径 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "组件路径")]
        public string Component { get; set; }

        /// <summary>
        /// 描述 : 默认排序 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "默认排序")]
        [Required(ErrorMessage = "请设置默认排序编号")]
        public int SortIndex { get; set; }

        /// <summary>
        /// 描述 : 浏览权限 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "浏览权限")]
        public string ViewPower { get; set; }

        /// <summary>
        /// 描述 : 上级菜单 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "上级菜单")]
        public string ParentUID { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }

        /// <summary>
        /// 描述 : 是否可见 
        /// 空值 : False
        /// 默认 : 0
        /// </summary>
        [Display(Name = "是否可见")]
        [Required(ErrorMessage = "请选择菜单是否可见")]
        public bool Hidden { get; set; }

        /// <summary>
        /// 描述 : 可用系统(0-PC，1-Wx) 
        /// 空值 : False
        /// 默认 : 0
        /// </summary>
        [Display(Name = "可用系统(0-PC，1-Wx)")]
        [Required(ErrorMessage = "请选择菜单归属系统")]
        public int System { get; set; }

        /// <summary>
        /// 描述 : 是否外链 
        /// 空值 : False
        /// 默认 : 0
        /// </summary>
        [Display(Name = "是否外链")]
        [Required(ErrorMessage = "请选择菜单是否外链")]
        public bool isFrame { get; set; }

        /// <summary>
        /// 描述 : 是否缓存 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "是否缓存")]
        [Required(ErrorMessage = "请选择菜单是否缓存")]
        public bool KeepAlive { get; set; }
    }
}
