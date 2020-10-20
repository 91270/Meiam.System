using Autofac;
using Autofac.Extras.DynamicProxy;
using MapsterMapper;
using Meiam.System.Common;
using Meiam.System.Core;
using Meiam.System.Extensions;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Common;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Hostd.Global;
using Meiam.System.Hostd.Middleware;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.OpenApi.Models;
using Newtonsoft.Json;
using System;
using System.IO;
using System.Reflection;

namespace Meiam.System.Hostd
{
    public class Startup
    {
        public Startup(IConfiguration configuration, IWebHostEnvironment env)
        {
            Configuration = configuration;
            Env = env;
        }

        public IConfiguration Configuration { get; }
        public IWebHostEnvironment Env { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            #region 跨域设置
            services.AddCors(c =>
            {
                c.AddPolicy("LimitRequests", policy =>
                {
                    policy
                    .WithOrigins(AppSettings.Configuration["Startup:AllowOrigins"].Split('|'))
                    .AllowAnyHeader()//Ensures that the policy allows any header.
                    .AllowAnyMethod();
                });
            });
            #endregion

            #region 自动映射
            services.AddScoped<IMapper, ServiceMapper>();
            #endregion

            #region 说明文档
            services.AddSwaggerGen(c =>
            {

                c.SwaggerDoc("v1", new OpenApiInfo
                {
                    Version = "v1",
                    Title = $"{AppSettings.Configuration["Startup:ApiName"]} 接口文档",
                    Description = $"{AppSettings.Configuration["Startup:ApiName"]} HTTP API "
                });

                try
                {
                    //就是这里
                    var xmlPath = Path.Combine(AppContext.BaseDirectory, "Meiam.System.Hostd.xml");//这个就是刚刚配置的xml文件名
                    c.IncludeXmlComments(xmlPath, true);//默认的第二个参数是false，这个是controller的注释，记得修改

                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Xml 文件丢失，请检查并拷贝。\n{ ex.Message}");
                }

                // 开启加权小锁
                c.OperationFilter<AppendAuthorizeFilter>();

            });
            #endregion

            #region 配置Json格式
            services.AddMvc().AddNewtonsoftJson(options =>
            {
                // 忽略循环引用
                options.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
                // 不使用驼峰
                //options.SerializerSettings.ContractResolver = new DefaultContractResolver();
                // 设置时间格式
                options.SerializerSettings.DateFormatString = "yyyy-MM-dd HH:mm:ss";
                // 如字段为null值，该字段不会返回到前端
                //options.SerializerSettings.NullValueHandling = NullValueHandling.Ignore;
            });
            #endregion

            #region 获取客户端 IP
            services.Configure<ForwardedHeadersOptions>(options =>
            {
                options.ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto;
                options.KnownNetworks.Clear();
                options.KnownProxies.Clear();
            });
            #endregion

            #region 加载项

            //注入缓存
            services.AddMemoryCache();

            //注入 HTTPCONTEXT
            services.AddHttpContextAccessor();

            //注入 TokenManager
            services.AddScoped<TokenManager>();

            //注入实体映射服务
            services.AddScoped<IMapper, ServiceMapper>();

            //注入短信服务
            services.AddSingleton<IAliyunSmsServices, AliyunSmsServices>();

            //注入全局异常过滤
            services.AddControllers(options =>
            {
                //全局异常过滤
                options.Filters.Add<GlobalExceptions>();
                //全局日志
                options.Filters.Add<GlobalActionMonitor>();

            })
            .ConfigureApiBehaviorOptions(options =>
            {
                //抑制系统自带模型验证
                options.SuppressModelStateInvalidFilter = true;  
            });

            //开启计划任务
            services.AddTaskSchedulers();

            //注册REDIS 服务
            RedisServer.Initalize();

            #endregion
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            #region 开发错误提示

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            };
            #endregion

            #region 跨域设置
            app.UseCors("LimitRequests");
            #endregion

            #region 说明文档
            app.UseSwagger();
            app.UseSwaggerUI(c =>
            {
                var ApiName = AppSettings.Configuration["Startup:ApiName"];

                c.SwaggerEndpoint("/swagger/v1/swagger.json", "API v1");
                c.RoutePrefix = string.Empty; 
            });
            #endregion

            #region 加载项

            // 请求日志监控
            app.UseMiddleware<RequestMiddleware>();
            // 使用静态文件
            app.UseForwardedHeaders();
            // 使用静态文件
            app.UseStaticFiles();
            // 使用cookie
            app.UseCookiePolicy();
            // 使用Routing
            app.UseRouting();

            app.UseResponseCaching();

            // 恢复任务
            app.UseAddTaskSchedulers();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
            #endregion
        }

        #region 自动注入服务
        public void ConfigureContainer(ContainerBuilder builder)
        {
            var assemblysServices = Assembly.Load("Meiam.System.Interfaces");
            builder.RegisterAssemblyTypes(assemblysServices)
                .InstancePerDependency()//瞬时单例
               .AsImplementedInterfaces()////自动以其实现的所有接口类型暴露（包括IDisposable接口）
               .EnableInterfaceInterceptors(); //引用Autofac.Extras.DynamicProxy;
        }
        #endregion
    }
}
