using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetDataAccess.MemberInfomation;
using MiBetCommon.MemberInformation;

namespace MiBetBusiness.MemberInfomation
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
        public void Insert(Int64 memberid, string usernameprefix, string username, string password,
            string fname, string lname, string phone, string mobilephone, string fax, Int64 membergroupid,
            string status, decimal minbet, decimal maxbet, decimal maxpermatch, DateTime passwordexpirydate,
            decimal cashbalance, decimal outstanding, decimal betcredit, decimal givencredit, decimal commissionhdpou,
            decimal commission1x2, decimal commissionother)
        {
            try
            {
                obj.Insert(memberid, usernameprefix, username, password, fname, lname, phone, mobilephone, fax, membergroupid, status,
                    minbet, maxbet, maxpermatch, passwordexpirydate, cashbalance, outstanding, betcredit, givencredit, commissionhdpou,
                    commission1x2, commissionother);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Update(Int64 memberid, string usernameprefix, string username, string password,
            string fname, string lname, string phone, string mobilephone, string fax, Int64 membergroupid,
            string status, decimal minbet, decimal maxbet, decimal maxpermatch,DateTime modifydate, DateTime passwordexpirydate,
            decimal cashbalance, decimal outstanding, decimal betcredit, decimal givencredit, decimal commissionhdpou,
            decimal commission1x2, decimal commissionother)
        {
            try
            {
                obj.update(memberid, usernameprefix, username, password, fname, lname, phone, mobilephone, fax, membergroupid, status,
                    minbet, maxbet, maxpermatch,modifydate, passwordexpirydate, cashbalance, outstanding, betcredit, givencredit, commissionhdpou,
                    commission1x2, commissionother);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
