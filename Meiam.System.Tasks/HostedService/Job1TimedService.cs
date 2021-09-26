/*
* ==============================================================================
*
* FileName: Job1TimedService.cs
* Created: 2020/6/17 13:53:48
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Meiam.System.Common;
using Meiam.System.Common.Helpers;
using Meiam.System.Core;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Threading;
using System.Threading.Tasks;

namespace Meiam.System.Tasks.HostedService
{

    /// <summary>
    /// 清除过期会话
    /// </summary>
    public class Job1TimedService : BackgroundService
	{
		private Timer _timer;

		/// <summary>
		/// 日志管理接口
		/// </summary>
		private readonly ILogger<Job1TimedService> _logger;

		private readonly IServiceProvider _serviceProvider;

		public Job1TimedService(ILogger<Job1TimedService> logger, IServiceProvider serviceProvider)
		{
			_logger = logger;
			_serviceProvider = serviceProvider;
		}

		protected override async Task ExecuteAsync(CancellationToken stoppingToken)
		{
			while (!stoppingToken.IsCancellationRequested)
			{
				await Task.Delay(1 * 60 * 1000, stoppingToken);
				Execute();
			}
		}

		private void Execute()
		{
			try
			{
				RemoveExpiredSession(SourceType.Web.ToString(), Convert.ToInt32(AppSettings.Configuration["AppSettings:WebSessionExpire"]));
				RemoveExpiredSession(SourceType.MiniProgram.ToString(), Convert.ToInt32(AppSettings.Configuration["AppSettings:MiniProgramSessionExpire"]));

				_logger.LogInformation("Run RemoveExpiredSession Succeed.");
			}
			catch (Exception ex)
			{
				_logger.LogError($"Run RemoveExpiredSession Fail.   Message : {ex.Message}.");
			}
		}

		private void RemoveExpiredSession(string source, int hours)
		{
			using (var scope = _serviceProvider.CreateScope())
			{
				var _onlineService = scope.ServiceProvider.GetService<ISysOnlineService>();

				DateTime expireTime = DateTime.Now.AddHours(-hours);
				var usersExpired = _onlineService.GetWhere(m => m.UpdateTime < expireTime && m.Source == source);

				foreach (var session in usersExpired)
				{
					//删除 Session 
					RedisServer.Session.Del(session.SessionID);

					//删除用户 Session 列表中的 Session
					RedisServer.Session.HDel(session.UserID, session.SessionID);

					_onlineService.Delete(session.SessionID);
				}
			}
		}

	}
}
