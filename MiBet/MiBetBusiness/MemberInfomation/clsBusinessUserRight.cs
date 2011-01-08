using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.MemberInformation;
using MiBetDataAccess.MemberInfomation;

namespace MiBetBusiness.MemberInfomation
{
    public class clsBusinessUserRight
    {
        clsDataAccessUserRight obj = new clsDataAccessUserRight();
        public List<clsUserRight> getAll()
        {
            try
            {
                return obj.getAll();
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
