using Meiam.System.Core;
using Meiam.System.Hostd.Common;
using Meiam.System.Interfaces;
using Meiam.System.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Caching.Memory;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Meiam.System.Hostd.Extensions
{
    public  class TokenManager
    {
        /// <summary>
        /// 缓存组件
        /// </summary>
        private readonly IMemoryCache _memoryCache;

        /// <summary>
        /// 在线会话
        /// </summary>
        private readonly ISysOnlineService _onlineService;

        /// <summary>
        /// 用户接口
        /// </summary>
        private readonly ISysUsersService _usersService;

        /// <summary>
        /// HTTP上下文
        /// </summary>
        private readonly IHttpContextAccessor _accessor;


        public TokenManager(IHttpContextAccessor accessor, IMemoryCache memoryCache, ISysOnlineService onlineService, ISysUsersService usersService)
        {
            _accessor = accessor;
            _memoryCache = memoryCache;
            _onlineService = onlineService;
            _usersService = usersService;
        }

        #region Session 操作
        /// <summary>
        /// 创建 Session
        /// </summary>
        public string CreateSession(Sys_Users userInfo, SourceType source, int hours)
        {
            var userSession = Guid.NewGuid().ToString().ToUpper();

            //判断用户是否只允许等于一次
            if (userInfo.OneSession)
            {
                RemoveAllSession(userInfo.UserID);
            }

            var expireTime = DateTime.Now.AddHours(hours);
            var timeSpan = new TimeSpan(hours, 0, 0);

            //将 Session 添加用户 Session 列表
            RedisServer.Session.HSet(userInfo.UserID, userSession, expireTime);
            RedisServer.Session.Expire(userInfo.UserID, timeSpan);

            //设置 Session 信息
            var userSessionVM = new UserSessionVM()
            {
                UserID = userInfo.UserID,
                UserName = userInfo.UserName,
                NickName = userInfo.NickName,
                Email = userInfo.Email,
                Sex = userInfo.Sex,
                AvatarUrl = userInfo.AvatarUrl,
                QQ = userInfo.QQ,
                Phone = userInfo.Phone,
                ProvinceID = userInfo.ProvinceID,
                Province = userInfo.Province,
                CityID = userInfo.CityID,
                City = userInfo.City,
                CountyID = userInfo.CountyID,
                County = userInfo.County,
                Address = userInfo.Address,
                Remark = userInfo.Remark,
                IdentityCard = userInfo.IdentityCard,
                Birthday = userInfo.Birthday,
                CreateTime = userInfo.CreateTime,
                Enabled = userInfo.Enabled,
                OneSession = userInfo.OneSession,
                Source = source.ToString(),
                KeepHours = hours,
                UserPower = _usersService.GetUserPowers(userInfo.UserID),
                UserRelation = _usersService.GetUserRelation(userInfo.UserID),
            };

            RedisServer.Session.HSet(userSession, "UserInfo", userSessionVM);
            RedisServer.Session.Expire(userSession, timeSpan);

            //添加在线记录表
            _onlineService.Add(new Sys_Online()
            {
                SessionID = userSession,
                UserID = userInfo.UserID,
                Source = source.ToString(),
                IPAddress = _accessor.HttpContext.Connection.RemoteIpAddress?.MapToIPv4().ToString(),
                LoginTime = DateTime.Now,
                UpdateTime = DateTime.Now
            });

            return userSession;
        }


        /// <summary>
        /// 更新Session
        /// </summary>
        /// <param name="userSession">用户Session</param>
        public void UpdateSession(string userSession)
        {

            DateTime lastUpdateTime = _memoryCache.Get<DateTime>(userSession);

            if (lastUpdateTime == null || (Convert.ToDateTime(lastUpdateTime).AddMinutes(2) < DateTime.Now))
            {
                // 记录本次更新时间

                _memoryCache.Set(userSession, DateTime.Now);

                if (!string.IsNullOrEmpty(userSession))
                {
                    //更新在线用户记录最后操作时间
                    _onlineService.Update(m => m.SessionID == userSession, m => new Sys_Online() { UpdateTime = DateTime.Now });

                    //根据 Session 取出 UserInfo
                    var userInfo = GetSessionItem<UserSessionVM>(userSession, "UserInfo");

                    var expireTime = DateTime.Now.AddHours(userInfo.KeepHours);
                    var timeSpan = new TimeSpan(userInfo.KeepHours, 0, 0);

                    //更新 Session 列表中的 Session 过期时间
                    RedisServer.Session.HSet(userInfo.UserID, userSession, expireTime);
                    //更新 Session 列表过期时间
                    RedisServer.Session.Expire(userInfo.UserID, timeSpan);
                    //更新 Session 过期时间
                    RedisServer.Session.Expire(userSession, timeSpan);
                }
            }
        }

        /// <summary>
        /// 刷新用户所有Session信息
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        public void RefreshSession(string userId)
        {
            if (!RedisServer.Session.Exists(userId))
            {
                return;
            }

            //取出 Session 列表所有 Key
            var keys = RedisServer.Session.HKeys(userId);

            if (keys.Length <= 0)
            {
                return;
            }

            var userInfo = _usersService.GetId(userId);

            foreach (var key in keys)
            {
                if (RedisServer.Session.Exists(key))
                {
                    //根据 Session 取出 UserInfo
                    var redisUserInfo = GetSessionItem<UserSessionVM>(key, "UserInfo");

                    //设置 Session 信息
                    var userSessionVM = new UserSessionVM()
                    {
                        UserID = userInfo.UserID,
                        UserName = userInfo.UserName,
                        NickName = userInfo.NickName,
                        Email = userInfo.Email,
                        Sex = userInfo.Sex,
                        AvatarUrl = userInfo.AvatarUrl,
                        QQ = userInfo.QQ,
                        Phone = userInfo.Phone,
                        ProvinceID = userInfo.ProvinceID,
                        Province = userInfo.Province,
                        CityID = userInfo.CityID,
                        City = userInfo.City,
                        CountyID = userInfo.CountyID,
                        County = userInfo.County,
                        Address = userInfo.Address,
                        Remark = userInfo.Remark,
                        IdentityCard = userInfo.IdentityCard,
                        Birthday = userInfo.Birthday,
                        CreateTime = userInfo.CreateTime,
                        Enabled = userInfo.Enabled,
                        OneSession = userInfo.OneSession,
                        Source = redisUserInfo.Source,
                        UserPower = _usersService.GetUserPowers(userInfo.UserID),
                        UserRelation = _usersService.GetUserRelation(userInfo.UserID),
                    };

                    RedisServer.Session.HSet(key, "UserInfo", userSessionVM);
                }
                else
                {
                    RedisServer.Session.HDel(userId, key);
                }
            }
        }


        /// <summary>
        /// 清除指定 Session
        /// </summary>
        public void RemoveSession(string userSession)
        {
            if (!string.IsNullOrEmpty(userSession))
            {
                //根据 Session 删除在线用户记录
                _onlineService.Delete(m => m.SessionID == userSession);

                if (RedisServer.Session.Exists(userSession))
                {
                    //根据 Session 取出 UserInfo
                    var UserInfo = GetSessionItem<UserSessionVM>(userSession, "UserInfo");

                    //删除用户 Session 列表中的 Session
                    RedisServer.Session.HDel(UserInfo.UserID, userSession);

                    //删除 Session 
                    RedisServer.Session.Del(userSession);
                }
            }
        }

        /// <summary>
        /// 清除用户所有 Session
        /// </summary>
        /// <param name="userId"></param>
        public void RemoveAllSession(string userId)
        {
            if (RedisServer.Session.Exists(userId))
            {
                //取出 Session 列表所有 Key
                var keys = RedisServer.Session.HKeys(userId);

                foreach (var key in keys)
                {
                    //删除 Session 
                    RedisServer.Session.Del(key);

                    //删除用户 Session 列表中的 Session
                    RedisServer.Session.HDel(userId, key);
                }
            }

            //删除在线记录
            _onlineService.Delete(m => m.UserID == userId);
        }

        #endregion

        #region Session 获取信息

        /// <summary>
        /// 获取Session
        /// </summary>
        /// <returns></returns>
        public string GetSysToken => _accessor.HttpContext.Request.Headers["SYSTOKEN"];

        /// <summary>
        /// 当前登录用户信息
        /// </summary>
        /// <returns></returns>
        public UserSessionVM GetSessionInfo() => GetSessionItem<UserSessionVM>("UserInfo");

        /// <summary>
        /// 判断用户是否登录
        /// </summary>
        /// <returns></returns>
        public bool IsAuthenticated()
        {
            if (!string.IsNullOrEmpty(GetSysToken))
            {
                if (!RedisServer.Session.Exists(GetSysToken))
                {
                    //根据 Session 删除在线用户记录
                    _onlineService.Delete(m => m.SessionID == GetSysToken);
                }
                else
                {                 
                    UpdateSession(GetSysToken);
                    return true;
                }
            }
            return false;
        }

        /// <summary>
        /// 获取 Session 内容
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="key"></param>
        /// <returns></returns>
        public T GetSessionItem<T>(string key)
        {
            if (!RedisServer.Session.Exists(GetSysToken))
            {
                throw new Exception($"GetSessionItem : {key} has Exception");
            }

            return RedisServer.Session.HGet<T>(GetSysToken, key);
        }


        /// <summary>
        /// 获取 Session 内容
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="session"></param>
        /// <param name="key"></param>
        /// <returns></returns>
        public T GetSessionItem<T>(string session, string key)
        {
            if (!RedisServer.Session.Exists(session))
            {
                throw new Exception($"GetSessionItem : {key} has Exception");
            }

            return RedisServer.Session.HGet<T>(session, key);
        }


        #endregion

    }
}
