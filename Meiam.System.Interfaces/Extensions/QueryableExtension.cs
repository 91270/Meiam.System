/*
* ==============================================================================
*
* FileName: QueryableExtension.cs
* Created: 2020/5/19 9:24:54
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Meiam.System.Model;
using SqlSugar;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Meiam.System.Interfaces
{
    public static class QueryableExtension
    {
        /// <summary>
        /// 读取列表
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public static async Task<PagedInfo<T>> ToPageAsync<T>(this ISugarQueryable<T> source, int pageIndex, int pageSize)
        {
            var page = new PagedInfo<T>();
            var total = await source.CountAsync();
            page.TotalCount = total;
            page.TotalPages = total / pageSize;

            if (total % pageSize > 0)
                page.TotalPages++;

            page.PageSize = pageSize;
            page.PageIndex = pageIndex;

            page.DataSource = await source.ToPageListAsync(pageIndex, pageSize);
            return page;
        }

        /// <summary>
        /// 读取列表
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public static async Task<PagedInfo<T>> ToPageAsync<T>(this ISugarQueryable<T> source, List<ITotalField> totalField, int pageIndex, int pageSize)
        {
            var page = new PagedInfo<T>();
            var total = await source.CountAsync();
            page.TotalCount = total;
            page.TotalPages = total / pageSize;

            if (total % pageSize > 0)
                page.TotalPages++;

            page.PageSize = pageSize;
            page.PageIndex = pageIndex;

            if (totalField != null && totalField.Count > 0)
            {
                foreach (var field in totalField)
                {
                    field.value = source.Sum<decimal>(field.Name);
                }
            }

            page.TotalField = totalField;

            page.DataSource = await source.ToPageListAsync(pageIndex, pageSize);
            return page;
        }

        /// <summary>
        /// 读取列表
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public static PagedInfo<T> ToPage<T>(this ISugarQueryable<T> source, int pageIndex, int pageSize)
        {
            var page = new PagedInfo<T>();
            var total =  source.Count();
            page.TotalCount = total;
            page.TotalPages = total / pageSize;

            if (total % pageSize > 0)
                page.TotalPages++;

            page.PageSize = pageSize;
            page.PageIndex = pageIndex;

            page.DataSource = source.ToPageList(pageIndex, pageSize);
            return page;
        }

        /// <summary>
        /// 读取列表
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="source"></param>
        /// <param name="pageIndex"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        public static PagedInfo<T> ToPage<T>(this ISugarQueryable<T> source, List<ITotalField> totalField, int pageIndex, int pageSize)
        {
            var page = new PagedInfo<T>();
            var total = source.Count();
            page.TotalCount = total;
            page.TotalPages = total / pageSize;

            if (total % pageSize > 0)
                page.TotalPages++;

            page.PageSize = pageSize;
            page.PageIndex = pageIndex;

            if (totalField != null && totalField.Count > 0)
            {
                foreach (var field in totalField)
                {
                    field.value = source.Sum<decimal>(field.Name);
                }
            }

            page.TotalField = totalField;

            page.DataSource = source.ToPageList(pageIndex, pageSize);

            return page;
        }
    }
}
