using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetDataAccess.Report;
using MiBetCommon.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessRpMatchLoss
    {
        clsDataAccessRpMatchLoss obj = new clsDataAccessRpMatchLoss();
        public List<clsRpMatchLoss> GetByParentId(string fdate)
        {
            try
            {
                return obj.GetAll(fdate);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
