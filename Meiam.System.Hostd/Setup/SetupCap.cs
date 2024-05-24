using Meiam.System.Common;
using Meiam.System.Hostd.Queue;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace Meiam.System.Hostd.Setup
{
    public static class SetupCap
    {
        public static void AddCapSetup(this IServiceCollection services)
        {
            if (services == null) throw new ArgumentNullException(nameof(services));


            services.AddTransient<ISubscriberService, SubscriberService>();

            services.AddCap(x =>
            {
                
                //如果你使用的ADO.NET，根据数据库选择进行配置：
                x.UseSqlServer(AppSettings.Configuration["DbConnection:ConnectionString"]);

                //CAP支持 RabbitMQ、Kafka、AzureServiceBus 等作为MQ，根据使用选择配置：
                x.UseRabbitMQ(o =>
                {
                    o.HostName = AppSettings.Configuration["RabbitMQ:HostName"];
                    o.UserName = AppSettings.Configuration["RabbitMQ:UserName"];
                    o.Password = AppSettings.Configuration["RabbitMQ:Password"];
                    o.VirtualHost = AppSettings.Configuration["RabbitMQ:VirtualHost"];
                    o.Port = Convert.ToInt32(AppSettings.Configuration["RabbitMQ:Port"]);
                });

                //设置处理成功的数据在数据库中保存的时间（秒），为保证系统新能，数据会定期清理。
                x.SucceedMessageExpiredAfter = 24 * 3600;

                //设置失败重试次数
                x.FailedRetryCount = 100;

                //设置失败重试间隔
                x.FailedRetryInterval = 20 * 60;

                // 注册 Dashboard
                x.UseDashboard();
            });
        }
    }
}
