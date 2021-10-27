using Meiam.System.Model;
using Meiam.System.Model.View;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Meiam.System.Hostd.Controllers
{
    public class BaseController : ControllerBase
    {
        #region 统一返回封装

        /// <summary>
        /// 返回封装
        /// </summary>
        /// <param name="statusCode"></param>
        /// <returns></returns>
        public static JsonResult toResponse(StatusCodeType statusCode)
        {
            ApiResult response = new ApiResult();
            response.StatusCode = (int)statusCode;
            response.Message = statusCode.GetEnumText();

            return new JsonResult(response);
        }

        /// <summary>
        /// 返回封装
        /// </summary>
        /// <param name="statusCode"></param>
        /// <param name="retMessage"></param>
        /// <returns></returns>
        public static JsonResult toResponse(StatusCodeType statusCode, string retMessage)
        {
            ApiResult response = new ApiResult();
            response.StatusCode = (int)statusCode;
            response.Message = retMessage;

            return new JsonResult(response);
        }

        /// <summary>
        /// 返回封装
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="data"></param>
        /// <returns></returns>
        public static JsonResult toResponse<T>(T data)
        {
            ApiResult<T> response = new ApiResult<T>();
            response.StatusCode = (int)StatusCodeType.Success;
            response.Message = StatusCodeType.Success.GetEnumText();
            response.Data = data;
            return new JsonResult(response);
        }

        #endregion

        #region 常用方法函数
        public static string GetGUID
        {
            get
            {
                return Guid.NewGuid().ToString().ToUpper();
            }
        }

        #endregion

        #region 生成菜单树

        /// <summary>
        /// 生成 Vue Router
        /// </summary>
        /// <param name="menus"></param>
        /// <param name="parentId"></param>
        /// <returns></returns>
        public static List<UserMenusVM> ResolveUserMenuTree(List<Sys_Menu> menus, string parentId = null)
        {
            List<UserMenusVM> userMenus = new List<UserMenusVM>();

            foreach (var menu in menus.Where(m => m.ParentUID == parentId).OrderBy(m => m.SortIndex))
            {
                var childrenMenu = ResolveUserMenuTree(menus, menu.ID);

                UserMenusVM menusVM = new UserMenusVM
                {
                    alwaysShow = menu.Type == 0 ? true : null,
                    name = menu.Name,
                    path = menu.Type == 0 && menu.ParentUID == null ? "/" + menu.Path : menu.Path,
                    hidden = menu.Hidden,
                    component = menu.Type == 0 ? menu.ParentUID == null ? "Layout" : "LayoutSub" : menu.Component,
                    redirect = menu.Type == 0 ? "noredirect" : null,
                    meta = new MenuMetaVM() { title = menu.Name, icon = menu.Icon, path = menu.Path, keepAlive = menu.KeepAlive },
                    children = childrenMenu.Count == 0 ? null : childrenMenu
                };

                if (childrenMenu.Count == 0 && menu.Type == 0)
                {
                    continue;
                }

                userMenus.Add(menusVM);

            }

            return userMenus;
        }

        /// <summary>
        /// 生成系统菜单树
        /// </summary>
        /// <param name="menus"></param>
        /// <param name="parentId"></param>
        /// <returns></returns>
        public static List<MenuListVM> ResolveMenuTree(List<Sys_Menu> menus, string parentId = null)
        {
            List<MenuListVM> resultMenus = new List<MenuListVM>();

            foreach (var menu in menus.Where(m => m.ParentUID == parentId).OrderBy(m => m.SortIndex))
            {
                var childrenMenu = ResolveMenuTree(menus, menu.ID);

                MenuListVM menusVM = new MenuListVM
                {
                    ID = menu.ID,
                    Name = menu.Name,
                    Type = menu.Type,
                    Icon = menu.Icon,
                    Path = menu.Path,
                    Component = menu.Component,
                    SortIndex = menu.SortIndex,
                    ViewPower = menu.ViewPower,
                    ParentUID = menu.ParentUID,
                    Remark = menu.Remark,
                    Hidden = menu.Hidden,
                    System = menu.System,
                    isFrame = menu.isFrame,
                    KeepAlive = menu.KeepAlive,
                    Children = childrenMenu.Count == 0 ? null : childrenMenu,
                    CreateTime = menu.CreateTime,
                    UpdateTime = menu.UpdateTime,
                    CreateID = menu.CreateID,
                    CreateName = menu.CreateName,
                    UpdateID = menu.UpdateID,
                    UpdateName = menu.UpdateName

                };
                resultMenus.Add(menusVM);
            }

            return resultMenus;
        }
        #endregion
    }
}