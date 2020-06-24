/*
* ==============================================================================
*
* FileName: LogHelpers.cs
* Created: 2020/6/19 14:20:10
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Text;

namespace Meiam.System.Tasks.Helpers
{
    public class LogHelpers
    {
        public static string logWrite(string message)
        {
            return $"[{DateTime.Now:yyyy-MM-dd HH:mm:ss:fff}] => {message}";
        }
    }
}
