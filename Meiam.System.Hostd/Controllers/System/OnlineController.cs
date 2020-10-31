using Mapster;
using Meiam.System.Hostd.Authorization;
using Meiam.System.Hostd.Extensions;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Meiam.System.Model.Dto;
using Meiam.System.Model.View;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SqlSugar;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace Meiam.System.Hostd.Controllers.System
{
    /// <summary>
    /// 在线用户接口
    /// </summary>
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class OnlineController : BaseController
    {
        /// <summary>
        /// 会话管理接口
        /// </summary>
        private readonly TokenManager _tokenManager;

        /// <summary>
        /// 日志管理接口
        /// </summary>
        private readonly ILogger<OnlineController> _logger;

        /// <summary>
        /// 在线用户接口
        /// </summary>
        private readonly ISysOnlineService _onlineService;

        public OnlineController(ILogger<OnlineController> logger, TokenManager tokenManager, ISysOnlineService onlineService)
        {
            _logger = logger;
            _tokenManager = tokenManager;
            _onlineService = onlineService;
        }


        /// <summary>
        /// 查询在线用户列表
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_ONLINE_VIEW")]
        public IActionResult Query([FromBody] OnlineQueryDto parm)
        {
            //开始拼装查询条件
            var predicate = Expressionable.Create<Sys_Online>();

            predicate = predicate.AndIF(!string.IsNullOrEmpty(parm.QueryText), m => m.UserID.Contains(parm.QueryText) || m.SessionID.Contains(parm.QueryText) || m.IPAddress.Contains(parm.QueryText));

            var response = _onlineService.GetPages(predicate.ToExpression(), parm);

            return toResponse(response);
        }

        /// <summary>
        /// 踢出在线用户
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [Authorization(Power = "PRIV_ONLINE_DELETE")]
        public IActionResult Delete([FromBody] OnlineDeleteDto parm)
        {
            foreach(var session in parm.SessionIds)
            {
                _tokenManager.RemoveSession(session);
            }

            return toResponse(StatusCodeType.Success);
        }
    }
}
