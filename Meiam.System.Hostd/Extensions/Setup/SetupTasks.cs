using Meiam.System.Interfaces;
using Meiam.System.Tasks;
using Meiam.System.Tasks.HostedService;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using NLog.Web;
using Quartz.Spi;
using System;

namespace Meiam.System.Hostd.Extensions
{
    public static class SetupTasks
    {


        public static void AddTaskSchedulers(this IServiceCollection services)
        {
            if (services == null) throw new ArgumentNullException(nameof(services));

            services.AddSingleton<IJobFactory, JobFactory>();

            services.AddSingleton<ITaskSchedulerServer, TaskSchedulerServer>();

            services.AddTransient<Job_SyncProductOrder>();

            //添加 HostedService
            services.AddHostedService<Job1TimedService>();

        }

        public static IApplicationBuilder UseAddTaskSchedulers(this IApplicationBuilder app, ISysTasksQzService tasksQzService, ITaskSchedulerServer schedulerServer)
        {
            var logger = NLogBuilder.ConfigureNLog("NLog.config").GetCurrentClassLogger();

            var tasks = tasksQzService.GetWhere(m => m.IsStart);

            foreach (var task in tasks)
            {
                var result = schedulerServer.AddTaskScheduleAsync(task).Result;
                logger.Debug(result.Message);
            }

            return app;
        }
    }
}
