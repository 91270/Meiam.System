/*
* ==============================================================================
*
* FileName: JobBase.cs
* Created: 2020/6/19 9:07:45
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using NLog;
using Quartz;
using System;
using System.Diagnostics;
using System.Threading.Tasks;

namespace Meiam.System.Tasks
{
    public class JobBase
    {
        /// <summary>
        /// 日志接口
        /// </summary>
        private static Logger logger = LogManager.GetCurrentClassLogger();

        /// <summary>
        /// 执行指定任务
        /// </summary>
        /// <param name="context"></param>
        /// <param name="action"></param>
        public async Task<string> ExecuteJob(IJobExecutionContext context, Func<Task> job)
        {
            string jobHistory = $"Run Job [Id：{context.JobDetail.Key.Name}，Group：{context.JobDetail.Key.Group}]";

            try
            {
                var s = context.Trigger.Key.Name;
                //记录Job时间
                Stopwatch stopwatch = new Stopwatch();
                stopwatch.Start();
                //执行任务
                await job();
                stopwatch.Stop();
                jobHistory += $"， Succeed ， Elapsed：{stopwatch.Elapsed.TotalMilliseconds} ms";
            }
            catch (Exception ex)
            {
                JobExecutionException e2 = new JobExecutionException(ex);
                //true  是立即重新执行任务 
                e2.RefireImmediately = true;
                jobHistory += $"， Fail ，Exception：{ex.Message}";
            }

            return jobHistory;
        }

        public static string logWrite(string message)
        {
            return $"[{DateTime.Now:yyyy-MM-dd HH:mm:ss:fff}] => {message}";
        }
    }
}
