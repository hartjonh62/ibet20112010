using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessLeague
    {
        clsDataAccessLeague objACBBetType = new clsDataAccessLeague();
        public List<clsLeague> GetAll()
        {
            try
            {
                return objACBBetType.GetAll();
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
