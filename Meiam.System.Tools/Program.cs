using Autofac;
using Autofac.Extensions.DependencyInjection;
using Meiam.System.Common;
using Meiam.System.Core;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using SqlSugar;
using System;
using System.IO;
using System.Reflection;

namespace Meiam.System.Tools
{
    class Program
    {

        static void Main(string[] args)
        {
            // 创建服务容器并配置服务
            var serviceCollection = ConfigureServices();

            // var serviceProvider = serviceCollection.BuildServiceProvider();

            var assemblysServices = Assembly.Load("Meiam.System.Interfaces");

            var builder = new ContainerBuilder();
            builder.RegisterAssemblyTypes(assemblysServices)
                .AsImplementedInterfaces().InstancePerLifetimeScope();


            // 将原本注册在内置 DI 组件中的依赖迁移入 Autofac 中
            builder.Populate(serviceCollection);

            var serviceProvider = new AutofacServiceProvider(builder.Build());

            // 启动App服务
            serviceProvider.GetService<App>().Run();
        }

        private static IServiceCollection ConfigureServices()
        {
            var services = new ServiceCollection();

            // set up the objects we need to get to configuration settings
            var config = LoadConfiguration();

            // add the config to our DI container for later use
            services.AddSingleton(config);


            services.AddScoped<ISqlSugarClient>(x =>
            {
                return new SqlSugarClient(new ConnectionConfig()
                {
                    ConnectionString = AppSettings.Configuration["DbConnection:ConnectionString"],
                    DbType = (DbType)Convert.ToInt32(AppSettings.Configuration["DbConnection:DbType"]),
                    IsAutoCloseConnection = true,
                    InitKeyType = InitKeyType.Attribute,
                    ConfigureExternalServices = new ConfigureExternalServices()
                    {
                        DataInfoCacheService = new RedisCache()
                    },
                    MoreSettings = new ConnMoreSettings()
                    {
                        IsAutoRemoveDataCache = true
                    }
                });
            });

            // services.AddTransient<IUnitOfWork, UnitOfWork>();
            // services.AddTransient<ITestCap01Service, TestCap01Service>();

            services.AddTransient<IToolsService, ToolsService>();

            services.AddTransient<App>();

            return services;
        }

        private static IConfiguration LoadConfiguration()
        {
            var builder = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);

            return builder.Build();
        }

    }
}
