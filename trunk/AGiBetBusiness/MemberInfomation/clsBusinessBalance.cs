using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using AGiBetDataAccess.MemberInfomation;

namespace AGiBetBusiness.MemberInfomation
{
    public class clsBusinessBalance
    {
        clsDataAccessBalance objABalnce = new clsDataAccessBalance();
        public List<clsBalance> getAll()
        {
            try
            {
                return objABalnce.getAll();
            }
            catch (Exception)
            {
                throw;
            }
        }
        public clsBalance getByAccId(Int64 accid)
        {
            try
            {
                return objABalnce.getByAccId(accid);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public void UpdateCredit(Int64 accid, decimal credit)
        {
            try
            {
                objABalnce.UpdateCredit(accid, credit);
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
