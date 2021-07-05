using Meiam.System.Interfaces;
using Meiam.System.Model;
using Microsoft.AspNetCore.Mvc;
using SqlSugar;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace Meiam.System.Hostd.Controllers
{
    [Route("api/[controller]/[action]")]
    [ApiController]
    public class TestController : BaseController
    {

        public TestController(ITestCap01Service testCap01Service, ITestCap02Service testCap02Service)
        {
            _testCap01Service = testCap01Service;
            _testCap02Service = testCap02Service;
        }

        public ITestCap01Service _testCap01Service { get; }
        public ITestCap02Service _testCap02Service { get; }

        /// <summary>
        /// Success
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IActionResult Success()
        {
            var id = GetGUID;
            try
            {
                _testCap01Service.BeginTran();
                _testCap01Service.Add(new Test_Cap01
                {
                    ID = id
                });

                _testCap02Service.Add(new Test_Cap02
                {
                    ID = id
                });

                _testCap01Service.CommitTran();

                return toResponse(StatusCodeType.Success);
            }
            catch (Exception)
            {
                _testCap01Service.RollbackTran();
                throw;

            }

        }

        /// <summary>
        /// Error
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IActionResult Error()
        {
            var id = GetGUID;
            try
            {
                _testCap01Service.BeginTran();
                _testCap01Service.Add(new Test_Cap01
                {
                    ID = id
                });

                _testCap02Service.Add(new Test_Cap02
                {
                    ID = "111111111111111111111111111111111111111111111111111111111111111111111111111"
                });

                _testCap01Service.CommitTran();

                return toResponse(StatusCodeType.Success);
            }
            catch (Exception)
            {
                _testCap01Service.RollbackTran();
                throw;

            }
        }

        ///// <summary>
        ///// Test02
        ///// </summary>
        ///// <returns></returns>
        //[HttpGet]
        //public IActionResult UseCAPTransaction()
        //{
        //    using (IDbConnection connection = DbContext.Current.Ado.Connection)
        //    {
        //        connection.Open();
        //        using (var trans = DbContext.Current.Ado.Connection.BeginTransaction(_publisher, autoCommit: false))
        //        {
        //            DbContext.Current.Ado.Transaction = trans;

        //            var id = GetGUID;

        //            _testCap01Service.Add(new Test_Cap01
        //            {
        //                ID = id
        //            });

        //            _testCap02Service.Add(new Test_Cap02
        //            {
        //                ID = id
        //            });

        //            trans.Commit();

        //            return toResponse(StatusCodeType.Success);
        //        }
        //    }
        //}
    }
}
