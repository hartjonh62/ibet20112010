using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessResults
    {
        clsDataAccessResults objACBBetType = new clsDataAccessResults();
        public List<clsResults> GetByParentId(string date, int eventid, int leagueid)
        {
            try
            {
                return objACBBetType.GetAll(date,eventid,leagueid);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
