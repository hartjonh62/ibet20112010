using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessRpFinanceCommission
    {
        clsDataAccessRpFinanceCommission obj = new clsDataAccessRpFinanceCommission();
        public List<clsRpFinanceCommission> GetByParentId(Int64 parentid,string fdate,string tdate)
        {
            try
            {
                return obj.GetByParentId(parentid,fdate,tdate);
            }
            catch (Exception)
            {
                
                throw;
            }
        }

    }
}
