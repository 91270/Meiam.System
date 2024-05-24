using Autofac;
using Autofac.Extras.DynamicProxy;
using MapsterMapper;
using Meiam.System.Core;
using Meiam.System.Extensions;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Hostd.Global;
using Meiam.System.Hostd.Middleware;
using Meiam.System.Hostd.Setup;
using Meiam.System.Interfaces;
using Meiam.System.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Newtonsoft.Json;
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

            #region ����ע��

            //�������ݿ�����
            services.AddSqlsugarSetup();

            //��������
            services.AddCorsSetup();

            //˵���ĵ�
            services.AddSwaggerSetup();

            //ע��Cap (EventBus) ��������
            //services.AddCapSetup();

            //ע�뻺��
            services.AddMemoryCache();

            //ע�� HTTPCONTEXT
            services.AddHttpContextAccessor();

            //ע�� TokenManager
            services.AddScoped<TokenManager>();

            //ע��ʵ��ӳ�����
            services.AddScoped<IMapper, ServiceMapper>();

            //ע����ŷ���
            services.AddSingleton<IAliyunSmsServices, AliyunSmsServices>();

            //ע��REDIS ����
            RedisServer.Initalize();

            //�����ƻ�����
            services.AddTaskSchedulers();

            #endregion

            #region ȫ������
            //����Json��ʽ
            services.AddMvc().AddNewtonsoftJson(options =>
            {
                // ����ѭ������
                options.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
                // ��ʹ���շ�
                //options.SerializerSettings.ContractResolver = new DefaultContractResolver();
                // ����ʱ���ʽ
                options.SerializerSettings.DateFormatString = "yyyy-MM-dd HH:mm:ss";
                // ���ֶ�Ϊnullֵ�����ֶβ��᷵�ص�ǰ��
                //options.SerializerSettings.NullValueHandling = NullValueHandling.Ignore;
            });

            //��ȡ�ͻ��� IP
            services.Configure<ForwardedHeadersOptions>(options =>
            {
                options.ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto;
                options.KnownNetworks.Clear();
                options.KnownProxies.Clear();
            });

            //ע��ȫ���쳣����
            services.AddControllers(options =>
            {
                //ȫ���쳣����
                options.Filters.Add<GlobalExceptions>();
                //ȫ����־
                options.Filters.Add<GlobalActionMonitor>();

            })
            .ConfigureApiBehaviorOptions(options =>
            {
                //����ϵͳ�Դ�ģ����֤
                options.SuppressModelStateInvalidFilter = true;
            });

            #endregion

        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ISysTasksQzService tasksQzService, ITaskSchedulerServer schedulerServer)
        {

            #region ����������ʾ

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            };
            #endregion

            #region ����ע��
            // ��������
            app.UseCorsSetup();
            // ˵���ĵ�
            app.UseSwaggerSetup();
            // ������־���
            app.UseMiddleware<RequestMiddleware>();
            // ʹ�þ�̬�ļ�
            app.UseForwardedHeaders();
            // ʹ�þ�̬�ļ�
            app.UseStaticFiles();
            // ʹ��cookie
            app.UseCookiePolicy();
            // ʹ��Routing
            app.UseRouting();
            // ʹ����Ӧ�����м��
            app.UseResponseCaching();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });

            // �ָ�����
            app.UseAddTaskSchedulers(tasksQzService, schedulerServer);

            #endregion

        }

        #region �Զ�ע�����
        public void ConfigureContainer(ContainerBuilder builder)
        {
            var assemblysServices = Assembly.Load("Meiam.System.Interfaces");
            builder.RegisterAssemblyTypes(assemblysServices)
                .InstancePerDependency()//˲ʱ����
               .AsImplementedInterfaces()////�Զ�����ʵ�ֵ����нӿ����ͱ�¶������IDisposable�ӿڣ�
               .EnableInterfaceInterceptors(); //����Autofac.Extras.DynamicProxy;
        }
        #endregion
    }
}
