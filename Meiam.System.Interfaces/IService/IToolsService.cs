/*
* ==============================================================================
*
* FileName: IToolsService.cs
* Created: 2020/3/26 13:48:50
* Author: Meiam
* Description: 
*
* ==============================================================================
*/

using System.Collections.Generic;

namespace Meiam.System.Interfaces
{
    public interface IToolsService
    {
        /// <summary>
        /// 根据数据库表生产Model层
        /// </summary>
        /// <param name="strPath">存放路径</param>
        /// <param name="strSolutionName">命名空间</param>
        /// <param name="tableName">生产指定的表</param>
        /// <param name="strInterface">实现接口</param>
        /// <param name="blnSerializable">是否序列化</param>
        bool CreateModels(string strPath, string strSolutionName, string tableName, string strInterface, bool blnSerializable = false);


        /// <summary>
        /// 生成DbContext.cs文件
        /// </summary>
        /// <param name="strPath">存放路径</param>
        /// <param name="strSolutionName">命名空间</param>
        /// <returns></returns>
        bool CreateDbContext(string strPath, string strSolutionName);


        /// <summary>
        /// 生成Service服务层
        /// </summary>
        /// <param name="strPath">存放路径</param>
        /// <param name="strSolutionName">命名空间</param>
        /// <param name="tableName">生产指定的表</param>
        /// <returns></returns>
        bool CreateServices(string strPath, string strSolutionName, string tableName);


        /// <summary>
        /// 生成IService服务层
        /// </summary>
        /// <param name="strPath">存放路径</param>
        /// <param name="strSolutionName">命名空间</param>
        /// <param name="tableName">生产指定的表</param>
        /// <returns></returns>
        bool CreateIServices(string strPath, string strSolutionName, string tableName);


        /// <summary>
        /// 获取数据库所有表
        /// </summary>
        /// <returns></returns>
        List<string> GetAllTables();
    }
}
