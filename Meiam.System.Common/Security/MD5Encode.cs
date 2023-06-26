/*
* ==============================================================================
*
* FileName: MD5Encode.cs
* Created: 2020/6/24 15:17:20
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace Meiam.System.Common.Security
{
    public class MD5Encode
    {
        public static string MD5Encrypt(string pwd)
        {
            var md5 = MD5.Create();
            return BitConverter.ToString(md5.ComputeHash(Encoding.Default.GetBytes(pwd))).Replace("-", "").ToUpper();
        }
    }
}
