/*
* ==============================================================================
*
* FileName: PasswordUtil.cs
* Created: 2020/5/19 18:14:35
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace Meiam.System.Common.Utilities
{
    public class PasswordUtil
    {
        public const string secretKey = "MEIAM";

        /// <summary>
        /// 对比用户明文密码是否和加密后密码一致
        /// </summary>
        /// <param name="userId">用户ID</param>
        /// <param name="dbPassword">数据库中单向加密后的密码</param>
        /// <param name="userPassword">用户明文密码</param>
        /// <returns></returns>
        public static bool ComparePasswords(string userId, string dbPassword, string userPassword)
        {
            string userPwd = CreateMD5(CreateMD5(userPassword) + secretKey + userId);

            if (userPwd.Length == 0 || string.IsNullOrEmpty(userPwd) || dbPassword != userPwd)
            {
                return false;
            }
            else
            {
                return true;
            }

        }

        /// <summary>
        /// 创建用户的数据库密码
        /// </summary>
        /// <param name="userName">用户ID</param>
        /// <param name="userPassword"></param>
        /// <returns></returns>
        public static string CreateDbPassword(string userId, string userPassword)
        {
            return CreateMD5(CreateMD5(userPassword) + secretKey + userId);
        }


        #region 私有函数
        private static string CreateMD5(string pwd)
        {
            var md5 = MD5.Create();
            return BitConverter.ToString(md5.ComputeHash(Encoding.Default.GetBytes(pwd))).Replace("-", "").ToUpper();
        }

        #endregion

    }
}
