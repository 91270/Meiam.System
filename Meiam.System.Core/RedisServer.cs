/*
* ==============================================================================
*
* FileName: RedisServer.cs
* Created: 2020/3/28 16:59:45
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using CSRedis;
using Meiam.System.Common;

namespace Meiam.System.Core
{
    public static class RedisServer
    {
        public static CSRedisClient Cache;
        public static CSRedisClient Sequence;
        public static CSRedisClient Session;

        public static void Initalize()
        {
            Cache = new CSRedisClient(AppSettings.Configuration["RedisServer:Cache"]);
            Sequence = new CSRedisClient(AppSettings.Configuration["RedisServer:Sequence"]);
            Session = new CSRedisClient(AppSettings.Configuration["RedisServer:Session"]);
        }
    }
}
