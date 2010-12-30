using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using AGiBetDataAccess.MemberInfomation;

namespace AGiBetBusiness.MemberInfomation
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
