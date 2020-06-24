/*
* ==============================================================================
*
* FileName: EnumType.cs
* Created: 2020/6/4 10:40:13
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System;
using System.Collections.Generic;
using System.Text;

namespace Meiam.System.Model
{
    /// <summary>
    /// 枚举扩展属性
    /// </summary>
    public static class EnumExtension
    {
        private static Dictionary<string, Dictionary<string, string>> enumCache;

        private static Dictionary<string, Dictionary<string, string>> EnumCache
        {
            get
            {
                if (enumCache == null)
                {
                    enumCache = new Dictionary<string, Dictionary<string, string>>();
                }
                return enumCache;
            }
            set { enumCache = value; }
        }

        /// <summary>
        /// 获得枚举提示文本
        /// </summary>
        /// <param name="en"></param>
        /// <returns></returns>
        public static string GetEnumText(this Enum en)
        {
            string enString = string.Empty;
            if (null == en) return enString;
            var type = en.GetType();
            enString = en.ToString();
            if (!EnumCache.ContainsKey(type.FullName))
            {
                var fields = type.GetFields();
                Dictionary<string, string> temp = new Dictionary<string, string>();
                foreach (var item in fields)
                {
                    var attrs = item.GetCustomAttributes(typeof(TextAttribute), false);
                    if (attrs.Length == 1)
                    {
                        var v = ((TextAttribute)attrs[0]).Value;
                        temp.Add(item.Name, v);
                    }
                }
                EnumCache.Add(type.FullName, temp);
            }
            if (EnumCache[type.FullName].ContainsKey(enString))
            {
                return EnumCache[type.FullName][enString];
            }
            return enString;
        }
    }

    public class TextAttribute : Attribute
    {
        public TextAttribute(string value)
        {
            Value = value;
        }

        public string Value { get; set; }
    }

    public enum StatusCodeType
    {
        [Text("请求(或处理)成功")]
        Success = 200,

        [Text("内部请求出错")]
        Error = 500,

        [Text("访问请求未授权! 当前 SESSION 失效, 请重新登陆")]
        Unauthorized = 401,

        [Text("请求参数不完整或不正确")]
        ParameterError = 400,

        [Text("您无权进行此操作，请求执行已拒绝")]
        Forbidden = 403,

        [Text("找不到与请求匹配的 HTTP 资源")]
        NotFound = 404,

        [Text("HTTP请求类型不合法")]
        HttpMehtodError = 405,

        [Text("HTTP请求不合法,请求参数可能被篡改")]
        HttpRequestError = 406,

        [Text("该URL已经失效")]
        URLExpireError = 407,
    }


    public enum SourceType
    {
        /// <summary>
        /// 后台程序
        /// </summary>
        [Text("Web")]
        Web,
        /// <summary>
        /// 微信小程序
        /// </summary>
        [Text("MiniProgram")]
        MiniProgram
    }

    /// <summary>
    /// 用户权限类型
    /// </summary>
    public enum UserRelationType
    {
        /// <summary>
        /// 公司
        /// </summary>
        [Text("Role")]
        Company,

        /// <summary>
        /// 工厂
        /// </summary>
        [Text("Factory")]
        Factory,

        /// <summary>
        /// 车间
        /// </summary>
        [Text("WorkShop")]
        WorkShop,

        /// <summary>
        /// 生产线
        /// </summary>
        [Text("ProductLine")]
        ProductLine,

        /// <summary>
        /// 工序
        /// </summary>
        [Text("ProductProcess")]
        ProductProcess,

    }

    /// <summary>
    /// 对应关系
    /// </summary>
    public enum DataRelationType
    {
        /// <summary>
        /// 工厂与公司对应关系
        /// </summary>
        [Text("Factory_To_Company")]
        Factory_To_Company,

        /// <summary>
        /// 车间与工厂对应关系
        /// </summary>
        [Text("WorkShop_To_Factory")]
        WorkShop_To_Factory,

        /// <summary>
        /// 工序与车间对应关系
        /// </summary>
        [Text("Process_To_WorkShop")]
        Process_To_WorkShop,

        /// <summary>
        /// 产线与工序对应关系
        /// </summary>
        [Text("Line_To_Process")]
        Line_To_Process,

        /// <summary>
        /// 设备与生产线对应关系
        /// </summary>
        [Text("Equipment_To_Line")]
        Equipment_To_Line,

    }
}
