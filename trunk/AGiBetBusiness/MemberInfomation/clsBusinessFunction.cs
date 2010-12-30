using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetDataAccess.MemberInfomation;
using AGiBetCommon.MemberInformation;

namespace AGiBetBusiness.MemberInfomation
{
    public class clsBusinessFunction
    {
        clsDataAccessFunction obj = new clsDataAccessFunction();
        public List<clsFunction> getAll()
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
        public List<clsFunction> getByModuleId(int modileid)
        {
            try
            {
                return obj.getByModuleId(modileid);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public clsFunction getById(int id)
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
