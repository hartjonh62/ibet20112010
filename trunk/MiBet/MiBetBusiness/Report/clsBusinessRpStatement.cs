using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessRpStatement
    {
        clsDataAccessRpStatement obj = new clsDataAccessRpStatement();
        public List<clsRpStatement> GetByAccId(Int64 accid,string fdate,string tdate)
        {
            try
            {
                return obj.GetByAccId(accid,fdate,tdate);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
