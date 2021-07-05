using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Meiam.System.Interfaces
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ISqlSugarClient _sqlSugarClient;

        public UnitOfWork(ISqlSugarClient sqlSugarClient)
        {
            _sqlSugarClient = sqlSugarClient;
        }

        public void BeginTran()
        {
            CurrentDb().BeginTran();
        }

        public void CommitTran()
        {
            CurrentDb().CommitTran();
        }


        public void RollbackTran()
        {
            CurrentDb().RollbackTran();
        }

        public SqlSugarClient CurrentDb()
        {
            return _sqlSugarClient as SqlSugarClient;
        }
    }
}
