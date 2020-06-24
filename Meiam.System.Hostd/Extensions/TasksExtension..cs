using Meiam.System.Interfaces;
using Meiam.System.Tasks;
using Meiam.System.Tasks.HostedService;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Quartz.Spi;
using System;

namespace Meiam.System.Hostd.Extensions
{
    public static class TasksExtension
    {
        public static void AddTaskSchedulers(this IServiceCollection services)
        {
            if (services == null) throw new ArgumentNullException(nameof(services));

            services.AddHostedService<Job1TimedService>();

            services.AddSingleton<IJobFactory, JobFactory>();

            services.AddTransient<Job_SyncProductOrder>();
            services.AddSingleton<ITaskSchedulerServer, TaskSchedulerServer>();       
        }

        public static IApplicationBuilder UseAddTaskSchedulers(this IApplicationBuilder app)
        {
            IServiceProvider services = app.ApplicationServices;
            ISysTasksQzService _tasksQzService = services.GetService<ISysTasksQzService>();
            ITaskSchedulerServer _schedulerServer = services.GetService<ITaskSchedulerServer>();

            var tasks = _tasksQzService.GetWhere(m => m.IsStart);

            foreach(var task in tasks)
            {
                _schedulerServer.AddTaskScheduleAsync(task);
            }

            return app;
        }
    }
}
