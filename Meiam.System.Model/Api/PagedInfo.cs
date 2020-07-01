using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Meiam.System.Model
{
    /// <summary>
    /// 分页组件实体类
    /// </summary>
    /// <typeparam name="T">泛型实体</typeparam>

    [Serializable]
    public class PagedInfo<T>
    {

        /// <summary>
        /// 分页索引
        /// </summary>
        public int PageIndex { get; set; }
        /// <summary>
        /// 分页大小
        /// </summary>
        public int PageSize { get;  set; }
        /// <summary>
        /// 总记录数
        /// </summary>
        public int TotalCount { get; set; }
        /// <summary>
        /// 总页数
        /// </summary>
        public int TotalPages { get; set; }

        /// <summary>
        /// 是否有上一页
        /// </summary>
        public bool HasPreviousPage
        {
            get { return PageIndex > 0; }
        }
        /// <summary>
        /// 是否有下一页
        /// </summary>
        public bool HasNextPage
        {
            get { return PageIndex + 1 < TotalPages; }
        }

        public List<T> DataSource { get; set; }

        public object TotalField { get; set; }
    }

}