/*
* ==============================================================================
*
* FileName: ApiResult.cs
* Created: 2020/3/26 13:52:51
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
    /// 统一接口返回
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class ApiResult
    {

        public ApiResult()
        {
            StatusCode = 0;
        }

        /// <summary>
        /// 请求状态
        /// </summary>
        public int StatusCode { get; set; }

        /// <summary>
        /// 返回信息
        /// </summary>
        public string Message { get; set; }

        /// <summary>
        /// 返回时间戳
        /// </summary>
        public string Timestamp { get; set; } = DateTimeOffset.Now.ToUnixTimeSeconds().ToString();

    }

    public class ApiResult<T> : ApiResult
    {
        /// <summary>
        /// 接口返回值
        /// </summary>
        public T Data { get; set; }

    }

}
