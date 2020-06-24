/*
* ==============================================================================
*
* FileName: Job_SyncProductOrder.cs
* Created: 2020/6/19 9:11:44
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Meiam.System.Interfaces;
using Meiam.System.Tasks.Helpers;
using Microsoft.Extensions.Logging;
using NLog;
using Quartz;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Meiam.System.Tasks
{
    public class Job_SyncProductOrder : JobBase, IJob
    {
        private readonly ISysTasksQzService _tasksQzService;

        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<Job_SyncProductOrder> _logger;

        public Job_SyncProductOrder(ILogger<Job_SyncProductOrder> logger, ISysTasksQzService tasksQzService)
        {
            _logger = logger;
            _tasksQzService = tasksQzService;
        }

        public async Task Execute(IJobExecutionContext context)
        {
            var executeLog = await ExecuteJob(context, async () => await Run(context));


            // 可以直接获取 JobDetail 的值
            var jobKey = context.JobDetail.Key;
            var jobId = jobKey.Name;
            //var param = context.MergedJobDataMap;

            // 也可以通过数据库配置，获取传递过来的参数
            JobDataMap data = context.JobDetail.JobDataMap;
            //int jobId = data.GetInt("JobParam");

            var model = _tasksQzService.GetId(jobId);

            if (model != null)
            {
                model.RunTimes += 1;
                model.Remark = LogHelpers.logWrite(executeLog);
                _tasksQzService.Update(model);
            }

            _logger.LogDebug(LogHelpers.logWrite(executeLog));

        }
        public async Task Run(IJobExecutionContext context)
        {
            await Task.Delay(1);
        }
    }
}
