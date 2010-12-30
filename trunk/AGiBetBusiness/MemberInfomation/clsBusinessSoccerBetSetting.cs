using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using AGiBetDataAccess.MemberInfomation;

namespace AGiBetBusiness.MemberInfomation
{
    public class clsBusinessSoccerBetSetting
    {
        clsDataAccessSoccerBetSetting obj = new clsDataAccessSoccerBetSetting();
        public List<clsSoccerBetSetting> getAll()
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
        public clsSoccerBetSetting getById(int id)
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
        public clsSoccerBetSetting getByAccId(Int64 accid)
        {
            try
            {
                return obj.getByAccId(accid);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Insert(Int64 accid, decimal minbet, decimal maxbet, decimal maxpermatch)
        {
            try
            {
                obj.Insert(accid, minbet, maxbet, maxpermatch);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Update(int id, Int64 accid, decimal minbet, decimal maxbet, decimal maxpermatch)
        {
            try
            {
                obj.Update(id, accid, minbet, maxbet, maxpermatch);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Delete(int id)
        {
            try
            {
               obj.Delete(id);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
