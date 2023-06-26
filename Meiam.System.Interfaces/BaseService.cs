/*
* ==============================================================================
*
* FileName: BaseService.cs
* Created: 2020/3/26 13:48:50
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Meiam.System.Core;
using Meiam.System.Model;
using SqlSugar;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq.Expressions;
using System.Reflection.Metadata.Ecma335;
using System.Threading.Tasks;

namespace Meiam.System.Interfaces
{
    /// <summary>
    /// 基础服务定义
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class BaseService<T> : IBaseService<T> where T : class, new()
    {
        private readonly IUnitOfWork _unitOfWork;

        private SqlSugarClient _currentDb;

        public ISqlSugarClient Db
        {
            get { return _currentDb; }
        }

        public BaseService(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
            _currentDb = _unitOfWork.CurrentDb();
        }

        #region 添加操作
        /// <summary>
        /// 添加一条数据
        /// </summary>
        /// <param name="parm">T</param>
        /// <returns></returns>
        public int Add(T parm)
        {
            return Db.Insertable(parm).RemoveDataCache().ExecuteCommand();
        }

        /// <summary>
        /// 批量添加数据
        /// </summary>
        /// <param name="parm">List<T></param>
        /// <returns></returns>
        public int Add(List<T> parm)
        {
            return Db.Insertable(parm).RemoveDataCache().ExecuteCommand();
        }

        #endregion

        #region 查询操作

        /// <summary>
        /// 根据条件查询数据是否存在
        /// </summary>
        /// <param name="where">条件表达式树</param>
        /// <returns></returns>
        public bool Any(Expression<Func<T, bool>> where)
        {
            return Db.Queryable<T>().Any(where);
        }

        /// <summary>
        /// 根据条件合计字段
        /// </summary>
        /// <param name="where">条件表达式树</param>
        /// <returns></returns>
        public TResult Sum<TResult>(Expression<Func<T, bool>> where, Expression<Func<T, TResult>> field)
        {
            return Db.Queryable<T>().Where(where).Sum(field);
        }

        /// <summary>
        /// 根据主值查询单条数据
        /// </summary>
        /// <param name="pkValue">主键值</param>
        /// <returns>泛型实体</returns>
        public T GetId(object pkValue)
        {
            return Db.Queryable<T>().InSingle(pkValue);
        }

        /// <summary>
        /// 根据主键查询多条数据
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        public List<T> GetIn(object[] ids)
        {
            return Db.Queryable<T>().In(ids).ToList();
        }

        /// <summary>
        /// 根据条件取条数
        /// </summary>
        /// <param name="where">条件表达式树</param>
        /// <returns></returns>
        public int GetCount(Expression<Func<T, bool>> where)
        {
            return Db.Queryable<T>().Count(where);

        }

        /// <summary>
        /// 查询所有数据(无分页,请慎用)
        /// </summary>
        /// <returns></returns>
        public List<T> GetAll(bool useCache = false,  int cacheSecond = 3600)
        {
            return Db.Queryable<T>().WithCacheIF(useCache, cacheSecond).ToList();
        }

        /// <summary>
        /// 获得一条数据
        /// </summary>
        /// <param name="where">Expression<Func<T, bool>></param>
        /// <returns></returns>
        public T GetFirst(Expression<Func<T, bool>> where)
        {
            return Db.Queryable<T>().Where(where).First();
        }

        /// <summary>
        /// 获得一条数据
        /// </summary>
        /// <param name="parm">string</param>
        /// <returns></returns>
        public T GetFirst(string parm)
        {
            return Db.Queryable<T>().Where(parm).First();
        }


        /// <summary>
        /// 根据条件查询分页数据
        /// </summary>
        /// <param name="where"></param>
        /// <param name="parm"></param>
        /// <returns></returns>
        public PagedInfo<T> GetPages(Expression<Func<T, bool>> where, PageParm parm)
        {
            PagedInfo<T> page = new PagedInfo<T>();

            int  totalCount = 0, totalPages = 0;

            page.DataSource = Db.Queryable<T>().Where(where)
                .OrderByIF(!string.IsNullOrEmpty(parm.Sort), $"{ parm.OrderBy } {(parm.Sort == "descending" ? "desc" : "asc")}")
                .ToPageList(parm.PageIndex, parm.PageSize, ref totalCount ,ref totalPages);

            page.PageSize = parm.PageSize;
            page.PageIndex = parm.PageIndex;
            page.TotalCount = totalCount;
            page.TotalPages = totalPages;

            return page;
        }


        /// <summary>
        /// 根据条件查询数据
        /// </summary>
        /// <param name="where">条件表达式树</param>
        /// <returns></returns>
        public List<T> GetWhere(Expression<Func<T, bool>> where, bool useCache = false, int cacheSecond = 3600)
        {
            var query = Db.Queryable<T>().Where(where).WithCacheIF(useCache, cacheSecond);
            return query.ToList();
        }

        /// <summary>
		/// 根据条件查询数据
		/// </summary>
		/// <param name="where">条件表达式树</param>
		/// <returns></returns>
        public List<T> GetWhere(Expression<Func<T, bool>> where, Expression<Func<T, object>> order, string orderEnum = "Asc", bool useCache = false, int cacheSecond = 3600)
        {
            var query = Db.Queryable<T>().Where(where).OrderByIF(orderEnum == "Asc", order, OrderByType.Asc).OrderByIF(orderEnum == "Desc", order, OrderByType.Desc).WithCacheIF(useCache, cacheSecond);
            return query.ToList();
        }

        #endregion

        #region 修改操作

        /// <summary>
        /// 修改一条数据
        /// </summary>
        /// <param name="parm">T</param>
        /// <returns></returns>
        public int Update(T parm)
        {
            return Db.Updateable(parm).RemoveDataCache().ExecuteCommand();
        }

        /// <summary>
        /// 修改一条数据
        /// </summary>
        /// <param name="parm">T</param>
        /// <returns></returns>
        public int Update(T parm, Expression<Func<T, object>> columns)
        {
            return Db.Updateable(parm).WhereColumns(columns).RemoveDataCache().ExecuteCommand();
        }

        /// <summary>
        /// 批量修改
        /// </summary>
        /// <param name="parm">T</param>
        /// <returns></returns>
        public int Update(List<T> parm)
        {
            return Db.Updateable(parm).RemoveDataCache().ExecuteCommand();
        }

        /// <summary>
        /// 批量修改
        /// </summary>
        /// <param name="parm">T</param>
        /// <returns></returns>
        public int Update(List<T> parm, Expression<Func<T, object>> columns)
        {
            return Db.Updateable(parm).WhereColumns(columns).RemoveDataCache().ExecuteCommand();
        }

        /// <summary>
        /// 按查询条件更新
        /// </summary>
        /// <param name="where"></param>
        /// <param name="columns"></param>
        /// <returns></returns>
        public int Update(Expression<Func<T, bool>> where, Expression<Func<T, T>> columns)
        {
            return Db.Updateable<T>().SetColumns(columns).Where(where).RemoveDataCache().ExecuteCommand();
        }

        #endregion

        #region 删除操作

        /// <summary>
        /// 删除一条或多条数据
        /// </summary>
        /// <param name="parm">string</param>
        /// <returns></returns>
        public int Delete(object id)
        {
            return Db.Deleteable<T>(id).RemoveDataCache().ExecuteCommand();
        }

        /// <summary>
        /// 删除一条或多条数据
        /// </summary>
        /// <param name="parm">string</param>
        /// <returns></returns>
        public int Delete(object[] ids)
        {
            return Db.Deleteable<T>().In(ids).RemoveDataCache().ExecuteCommand();
        }

        /// <summary>
        /// 根据条件删除一条或多条数据
        /// </summary>
        /// <param name="where">过滤条件</param>
        /// <returns></returns>
        public int Delete(Expression<Func<T, bool>> where)
        {
            return Db.Deleteable<T>().Where(where).RemoveDataCache().ExecuteCommand();
        }

        public StorageableResult<T> Saveable(List<T> parm, Expression<Func<T, object>> where)
        {
            throw new NotImplementedException();
        }
        #endregion

        #region 添加或更新

        /// <summary>
        /// 无主键添加或更新数据 (切记该表若有缓存，请执行 RemoveDataCache())
        /// </summary>
        /// <param name="parm"></param>
        /// <param name="where"></param>
        /// <returns></returns>
        public StorageableResult<T> Storageable(T parm, Expression<Func<T, object>> where)
        {
            var command = Db.Storageable(parm).WhereColumns(where).ToStorage();

            return command;
        }

        /// <summary>
        /// 无主键添加或更新数据 (切记该表若有缓存，请执行 RemoveDataCache())
        /// </summary>
        /// <param name="parm"></param>
        /// <param name="where"></param>
        /// <returns></returns>
        public StorageableResult<T> Storageable(List<T> parm, Expression<Func<T, object>> where)
        {
            var command = Db.Storageable(parm).WhereColumns(where).ToStorage();

            return command;
        }
        #endregion

    }
}
