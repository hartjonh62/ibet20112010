using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using AGiBetDataAccess.MemberInfomation;

namespace AGiBetBusiness.MemberInfomation
{
    public class clsBusinessUserCommission
    {
        clsDataAccessUserCommission obj = new clsDataAccessUserCommission();
        public List<clsUserCommission> getAll()
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
        public clsUserCommission getById(int id)
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
        public clsUserCommission getByAccId(Int64 accid)
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
        public void Insert(Int64 accid, decimal comma, decimal commb, decimal commc, decimal commd,
            decimal comm1x2, decimal commother, Int64 createby, DateTime createdate, Int64 modifyby, DateTime modifydate)
        {
            try
            {
                obj.Insert(accid, comma, commb, commc, commd, comm1x2, commother, createby, createdate, modifyby, modifydate);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Update(int id, Int64 accid, decimal comma, decimal commb, decimal commc, decimal commd,
            decimal comm1x2, decimal commother, Int64 createby, DateTime createdate, Int64 modifyby, DateTime modifydate)
        {
            try
            {
                obj.Update(id,accid, comma, commb, commc, commd, comm1x2, commother, createby, createdate, modifyby, modifydate);
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
