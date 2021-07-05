using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Meiam.System.Interfaces
{
    public interface IUnitOfWork
    {
        void BeginTran();
        void CommitTran();
        void RollbackTran();

        SqlSugarClient CurrentDb();
    }
}
