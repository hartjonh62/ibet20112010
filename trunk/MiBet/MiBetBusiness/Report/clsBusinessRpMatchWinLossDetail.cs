using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessRpMatchWinLossDetail
    {
        clsDataAccessRpMatchWinLossDetail obj = new clsDataAccessRpMatchWinLossDetail();
        public List<clsRpMatchWinLossDetail> GetByAccId(Int64 accid, string fdate, string tdate)
        {
            try
            {
                return obj.GetByAccId(accid, fdate, tdate);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
