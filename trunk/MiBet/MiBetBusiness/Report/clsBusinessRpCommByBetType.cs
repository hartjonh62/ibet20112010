using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessRpCommByBetType
    {
        clsDataAccessRpCommByBetType objACBBetType = new clsDataAccessRpCommByBetType();
        public List<clsRpCommByBetType> GetByParentId(Int64 parentid,DateTime startdate,DateTime enddate)
        {
            try
            {
                return objACBBetType.GetByParentId(parentid,startdate,enddate);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
