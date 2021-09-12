using Meiam.System.Common;
using Meiam.System.Core;
using Microsoft.Extensions.DependencyInjection;
using SqlSugar;
using System;

namespace Meiam.System.Hostd.Extensions
{
    public static class SetupSqlSugar
    {
        public static void AddSqlsugarSetup(this IServiceCollection services)
        {
            if (services == null) throw new ArgumentNullException(nameof(services));

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
        }
    }
}
