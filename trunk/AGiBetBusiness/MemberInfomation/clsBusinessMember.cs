using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetDataAccess.MemberInfomation;
using AGiBetCommon.MemberInformation;

namespace AGiBetBusiness.MemberInfomation
{
    public class clsBusinessMember
    {
        clsDataAccessMember obj = new clsDataAccessMember();
        public clsMember getByUserName(string username)
        {
            try
            {
                return obj.getByUserName(username);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public List<clsMember> getAll()
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
