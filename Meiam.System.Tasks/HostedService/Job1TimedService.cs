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
    public class Job1TimedService : IHostedService, IDisposable
    {
		private Timer _timer;

		/// <summary>
		/// 在线统计接口
		/// </summary>
		private readonly ISysOnlineService _onlineService;

		/// <summary>
		/// 日志管理接口
		/// </summary>
		private readonly ILogger<Job1TimedService> _logger;

		public Job1TimedService(ILogger<Job1TimedService> logger, ISysOnlineService onlineService)
		{
			_logger = logger;
			_onlineService = onlineService;
		}

		public Task StartAsync(CancellationToken cancellationToken)
		{
			_timer = new Timer(new TimerCallback(DoWork), null, TimeSpan.Zero, TimeSpan.FromSeconds(5 * 60));
			return Task.CompletedTask;
		}

		private void DoWork(object state)
		{
			try
			{
				RemoveExpiredSession(SourceType.Web.ToString(), Convert.ToInt32(AppSettings.Configuration["AppSettings:WebSessionExpire"]));
				RemoveExpiredSession(SourceType.MiniProgram.ToString(), Convert.ToInt32(AppSettings.Configuration["AppSettings:MiniProgramSessionExpire"]));

				_logger.LogDebug("Run RemoveExpiredSession Succeed.");
			}
			catch (Exception ex)
			{
				_logger.LogDebug($"Run RemoveExpiredSession Fail.   Message : {ex.Message}.");
			}
		}

		public Task StopAsync(CancellationToken cancellationToken)
		{
			_timer?.Change(Timeout.Infinite, 0);
			return Task.CompletedTask;
		}

		public void Dispose()
		{
			_timer?.Dispose();
		}

		private void RemoveExpiredSession(string source, int hours)
        {
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
