/*
* ==============================================================================
*
* FileName: TaskSchedulerServer.cs
* Created: 2020/6/17 13:42:07
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Quartz;
using Quartz.Impl;
using Quartz.Spi;
using System;
using System.Collections.Specialized;
using System.Reflection;
using System.Threading.Tasks;

namespace Meiam.System.Tasks
{
    /// <summary>
    /// 计划任务中心
    /// </summary>
    public class TaskSchedulerServer : ITaskSchedulerServer
    {
        private Task<IScheduler> _scheduler;

        private readonly IJobFactory _jobFactory;

        public TaskSchedulerServer(IJobFactory jobFactory)
        {
            _scheduler = GetTaskSchedulerAsync();
            _jobFactory = jobFactory;
        }

        /// <summary>
        /// 开启计划任务
        /// </summary>
        /// <returns></returns>
        private Task<IScheduler> GetTaskSchedulerAsync()
        {
            if (_scheduler != null)
            {
                return _scheduler;
            }

            NameValueCollection collection = new NameValueCollection
            {
                {
                    "quartz.serializer.type",
                    "binary"
                }
            };

            StdSchedulerFactory factory = new StdSchedulerFactory(collection);
            return _scheduler = factory.GetScheduler();
        }

        public async Task<ApiResult<string>> StartTaskScheduleAsync()
        {
            try
            {
                _scheduler.Result.JobFactory = _jobFactory;
                if (_scheduler.Result.IsStarted)
                {
                    return new ApiResult<string>
                    {
                        StatusCode = 500,
                        Message = $"计划任务已经开启",
                    };
                }

                //等待任务运行完成
                await _scheduler.Result.Start();
                return new ApiResult<string>
                {
                    StatusCode = 200,
                    Message = $"计划任务开启成功",
                };

            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// 停止计划任务
        /// </summary>
        /// <returns></returns>
        public async Task<ApiResult<string>> StopTaskScheduleAsync()
        {
            try
            {
                if (_scheduler.Result.IsShutdown)
                {
                    return new ApiResult<string>
                    {
                        StatusCode = 500,
                        Message = $"计划任务已经停止",
                    };
                }

                await _scheduler.Result.Shutdown();
                return new ApiResult<string>
                {
                    StatusCode = 200,
                    Message = $"计划任务已经停止",
                };
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// 添加一个计划任务
        /// </summary>
        /// <param name="tasksQz"></param>
        /// <returns></returns>
        public async Task<ApiResult<string>> AddTaskScheduleAsync(Sys_TasksQz tasksQz)
        {
            try
            {
                JobKey jobKey = new JobKey(tasksQz.ID, tasksQz.JobGroup);
                if (await _scheduler.Result.CheckExists(jobKey))
                {
                    return new ApiResult<string>
                    {
                        StatusCode = 500,
                        Message = $"该计划任务已经在执行:【{tasksQz.Name}】,请勿重复添加！",
                    };
                }
                #region 设置开始时间和结束时间

                tasksQz.BeginTime = tasksQz.BeginTime == null ? DateTime.Now : tasksQz.BeginTime;
                tasksQz.EndTime = tasksQz.EndTime == null ? DateTime.MaxValue.AddDays(-1) : tasksQz.EndTime;

                DateTimeOffset starRunTime = DateBuilder.NextGivenSecondDate(tasksQz.BeginTime, 1);//设置开始时间
                DateTimeOffset endRunTime = DateBuilder.NextGivenSecondDate(tasksQz.EndTime, 1);//设置暂停时间

                #endregion

                #region 通过反射获取程序集类型和类   

                Assembly assembly = Assembly.Load(new AssemblyName(tasksQz.AssemblyName));
                Type jobType = assembly.GetType(tasksQz.AssemblyName + "." + tasksQz.ClassName);

                #endregion
                //判断任务调度是否开启
                if (!_scheduler.Result.IsStarted)
                {
                    await StartTaskScheduleAsync();
                }

                //传入反射出来的执行程序集
                IJobDetail job = new JobDetailImpl(tasksQz.ID, tasksQz.JobGroup, jobType);
                job.JobDataMap.Add("JobParam", tasksQz.JobParams);
                ITrigger trigger;

                if (tasksQz.Cron != null && CronExpression.IsValidExpression(tasksQz.Cron) && tasksQz.TriggerType > 0)
                {
                    trigger = CreateCronTrigger(tasksQz);
                }
                else
                {
                    trigger = CreateSimpleTrigger(tasksQz);
                }
                // 告诉Quartz使用我们的触发器来安排作业
                await _scheduler.Result.ScheduleJob(job, trigger);
                return new ApiResult<string>
                {
                    StatusCode = 200,
                    Message = $"启动计划任务:【{tasksQz.Name}】成功！",
                };
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// 暂停指定的计划任务
        /// </summary>
        /// <param name="tasksQz"></param>
        /// <returns></returns>
        public async Task<ApiResult<string>> PauseTaskScheduleAsync(Sys_TasksQz tasksQz)
        {
            try
            {
                JobKey jobKey = new JobKey(tasksQz.ID, tasksQz.JobGroup);
                if (!await _scheduler.Result.CheckExists(jobKey))
                {
                    return new ApiResult<string>
                    {
                        StatusCode = 500,
                        Message = $"未找计划任务:【{tasksQz.Name}】",
                    };
                }
                await _scheduler.Result.PauseJob(jobKey);
                return new ApiResult<string>
                {
                    StatusCode = 200,
                    Message = $"暂停计划任务:【{tasksQz.Name}】成功",
                };
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// 恢复指定计划任务
        /// </summary>
        /// <param name="tasksQz"></param>
        /// <returns></returns>
        public async Task<ApiResult<string>> ResumeTaskScheduleAsync(Sys_TasksQz tasksQz)
        {
            try
            {
                JobKey jobKey = new JobKey(tasksQz.ID, tasksQz.JobGroup);
                if (!await _scheduler.Result.CheckExists(jobKey))
                {
                    return new ApiResult<string>
                    {
                        StatusCode = 500,
                        Message = $"未找到计划任务:【{tasksQz.Name}】",
                    };
                }
                await _scheduler.Result.ResumeJob(jobKey);
                return new ApiResult<string>
                {
                    StatusCode = 200,
                    Message = $"恢复计划任务:【{tasksQz.Name}】成功",
                };
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// 删除指定计划任务
        /// </summary>
        /// <param name="tasksQz"></param>
        /// <returns></returns>
        public async Task<ApiResult<string>> DeleteTaskScheduleAsync(Sys_TasksQz tasksQz)
        {
            try
            {
                JobKey jobKey = new JobKey(tasksQz.ID, tasksQz.JobGroup);
                if (!await _scheduler.Result.CheckExists(jobKey))
                {
                    return new ApiResult<string>
                    {
                        StatusCode = 500,
                        Message = $"未找到计划任务:【{tasksQz.Name}】",
                    };
                }
                await _scheduler.Result.DeleteJob(jobKey);
                return new ApiResult<string>
                {
                    StatusCode = 200,
                    Message = $"删除计划任务:【{tasksQz.Name}】成功",
                };
            }
            catch (Exception)
            {
                throw;
            }
        }

        #region 创建触发器帮助方法

        /// <summary>
        /// 创建SimpleTrigger触发器（简单触发器）
        /// </summary>
        /// <param name="tasksQz"></param>
        /// <returns></returns>
        private ITrigger CreateSimpleTrigger(Sys_TasksQz tasksQz)
        {
            if (tasksQz.RunTimes > 0)
            {
                ITrigger trigger = TriggerBuilder.Create()
                .WithIdentity(tasksQz.ID, tasksQz.JobGroup)
                .StartAt(tasksQz.BeginTime.Value)
                .EndAt(tasksQz.EndTime.Value)
                .WithSimpleSchedule(x =>
                x.WithIntervalInSeconds(tasksQz.IntervalSecond)
                .WithRepeatCount(tasksQz.RunTimes)).ForJob(tasksQz.ID, tasksQz.JobGroup).Build();
                return trigger;
            }
            else
            {
                ITrigger trigger = TriggerBuilder.Create()
                .WithIdentity(tasksQz.ID, tasksQz.JobGroup)
                .StartAt(tasksQz.BeginTime.Value)
                .EndAt(tasksQz.EndTime.Value)
                .WithSimpleSchedule(x =>
                x.WithIntervalInSeconds(tasksQz.IntervalSecond)
                .RepeatForever()).ForJob(tasksQz.ID, tasksQz.JobGroup).Build();
                return trigger;
            }
            // 触发作业立即运行，然后每10秒重复一次，无限循环

        }

        /// <summary>
        /// 创建类型Cron的触发器
        /// </summary>
        /// <param name="tasksQz"></param>
        /// <returns></returns>
        private ITrigger CreateCronTrigger(Sys_TasksQz tasksQz)
        {
            // 作业触发器
            return TriggerBuilder.Create()
                   .WithIdentity(tasksQz.ID, tasksQz.JobGroup)
                   .StartAt(tasksQz.BeginTime.Value)//开始时间
                   .EndAt(tasksQz.EndTime.Value)//结束数据
                   .WithCronSchedule(tasksQz.Cron)//指定cron表达式
                   .ForJob(tasksQz.ID, tasksQz.JobGroup)//作业名称
                   .Build();
        }
        #endregion

    }
}
