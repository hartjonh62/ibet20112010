using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.MemberInformation;
using MiBetDataAccess.MemberInfomation;

namespace MiBetBusiness.MemberInfomation
{
    public class clsBusinessModule
    {
        clsDataAccessModule obj = new clsDataAccessModule();
        public List<clsModule> getAll()
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
        public clsModule getById(int id)
        {
            try
            {
                return obj.getById(id);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
