using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.MemberInformation;
using MiBetDataAccess.MemberInfomation;

namespace MiBetBusiness.MemberInfomation
{
    public class clsBusinessSoccerLive
    {
        clsDataAccessSoccerLive obj = new clsDataAccessSoccerLive();
        public List<clsSoccerLive> getAll()
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
        public clsSoccerLive getById(int id)
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
        public clsSoccerLive getByAccId(Int64 accid)
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
        public void Insert(Int64 accid, decimal handi_ng, decimal over_under, decimal firthandicap, decimal firtoverunder)
        {
            try
            {
                obj.Insert(accid, handi_ng, over_under, firthandicap, firtoverunder);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Update(int id, Int64 accid, decimal handi_ng, decimal over_under, decimal firthandicap, decimal firtoverunder)
        {
            try
            {
                obj.Update(id,accid, handi_ng, over_under, firthandicap, firtoverunder);
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
