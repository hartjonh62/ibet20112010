using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessRpCancelledBet
    {
        clsDataAccessRpCancelledBet objACBBetType = new clsDataAccessRpCancelledBet();
        public List<clsRpCancelledBet> GetByParentId(Int64 parentid)
        {
            try
            {
                return objACBBetType.GetAll(parentid);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
