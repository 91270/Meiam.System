using DotNetCore.CAP;
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

        public ITestCap01Service _testCap01Service { get; }
        public ITestCap02Service _testCap02Service { get; }

        /// <summary>
        /// 工作单元接口
        /// </summary>
        private readonly IUnitOfWork _unitOfWork;
        private readonly ICapPublisher _publisher;

        public TestController(ITestCap01Service testCap01Service, ITestCap02Service testCap02Service,IUnitOfWork unitOfWork, ICapPublisher publisher)
        {
            _testCap01Service = testCap01Service;
            _testCap02Service = testCap02Service;
            _unitOfWork = unitOfWork;
            _publisher = publisher;
        }



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
                _unitOfWork.BeginTran();
                _testCap01Service.Add(new Test_Cap01
                {
                    ID = id
                });

                _testCap02Service.Add(new Test_Cap02
                {
                    ID = id
                });

                _unitOfWork.CommitTran();

                return toResponse(StatusCodeType.Success);
            }
            catch (Exception)
            {
                _unitOfWork.RollbackTran();
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
                _unitOfWork.BeginTran();
                _testCap01Service.Add(new Test_Cap01
                {
                    ID = id
                });

                _testCap02Service.Add(new Test_Cap02
                {
                    ID = "111111111111111111111111111111111111111111111111111111111111111111111111111"
                });

                _unitOfWork.CommitTran();

                return toResponse(StatusCodeType.Success);
            }
            catch (Exception)
            {
                _unitOfWork.RollbackTran();
                throw;

            }
        }

        /// <summary>
        /// Test02
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public IActionResult UseCAPTransaction()
        {
            var Db = _unitOfWork.CurrentDb();
            Db.CurrentConnectionConfig.IsAutoCloseConnection = false;

            using (IDbConnection connection = Db.Ado.Connection)
            {
                connection.Open();
                using (var trans = Db.Ado.Connection.BeginTransaction(_publisher, autoCommit: false))
                {
                    Db.Ado.Transaction = trans;

                    // 添加短信发送列队

                    QueueSMSCaptchaDto captcha = new QueueSMSCaptchaDto();
                    captcha.Mobile = "13233335555";
                    captcha.Code = 1234;

                    _publisher.Publish("Meiam.QueueService.SMSCaptcha", captcha);

                    var id = GetGUID;

                    _testCap01Service.Add(new Test_Cap01
                    {
                        ID = id
                    });

                    // 异常之后 回滚消息队列
                    _testCap02Service.Add(new Test_Cap02
                    {
                        ID = "111111111111111111111111111111111111111111111111111111111111111111111111111"
                    });

                    trans.Commit();

                    return toResponse(StatusCodeType.Success);
                }
            }
        }
    }
}
