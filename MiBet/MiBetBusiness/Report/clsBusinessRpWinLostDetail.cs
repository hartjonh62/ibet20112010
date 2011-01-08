using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessRpWinLostDetail
    {
        clsDataAccessRpWinLostDetail obj = new clsDataAccessRpWinLostDetail();
        public List<clsRpWinLostDetail> GetByParentId(Int64 accid, string fdate, string tdate)
        {
            try
            {
                return obj.GetByParentId(accid, fdate, tdate);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
