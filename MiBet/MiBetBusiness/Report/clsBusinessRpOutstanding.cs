using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using MiBetDataAccess.Report;

namespace MiBetBusiness.Report
{
    public class clsBusinessRpOutstanding
    {
        clsDataAccessRpOutstanding obj = new clsDataAccessRpOutstanding();
        public List<clsRpOutstanding> GetByParentId(Int64 parentid)
        {
            try
            {
                return obj.GetByParentId(parentid);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
