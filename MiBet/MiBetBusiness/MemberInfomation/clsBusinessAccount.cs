using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.MemberInformation;
using MiBetDataAccess.MemberInfomation;
using MiBetDataAccess;
using System.Web;
namespace MiBetBusiness.MemberInfomation
{
    public class clsBusinessAccount
    {
        clsDataAccessAccount obj = new clsDataAccessAccount();
        public List<clsAccount> getAll()
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
        public List<clsAccount> getByParentId(Int64 parentid)
        {
            try
            {
                return obj.getByParentId(parentid);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public clsAccount getById(Int64 id)
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
        /// <summary>
        /// Thêm mới một Account
        /// </summary>
        /// <param name="parentid">Parent ID</param>
        /// <param name="sgmid">SGM ID</param>
        /// <param name="masterid">Master ID</param>
        /// <param name="agentid">Agent ID</param>
        /// <param name="accountid">Account ID</param>
        /// <param name="accgrade">Accgrade</param>
        /// <param name="username">Tên đăng nhập</param>
        /// <param name="password">Mật khẩu</param>
        /// <param name="nickname">Tên nick</param>
        /// <param name="firtname">Họ</param>
        /// <param name="lastname">Tên</param>
        /// <param name="phone">Điện thoại</param>
        /// <param name="mobilephone">di động</param>
        /// <param name="maxcredit">max credit</param>
        /// <param name="fax">Fax</param>
        /// <param name="isopent">Is Opent</param>
        /// <param name="issuspended">is suspended</param>
        /// <param name="allowautopt">Allow Auto PT</param>
        /// <param name="transferconditionid">Transfer Condition ID</param>
        /// <param name="createby">Người tạo</param>
        /// <param name="createdate">Ngày tạo</param>
        /// <param name="modifyby">Người sửa</param>
        /// <param name="modifydate">Ngày sửa</param>
        /// <param name="lasttxn">Last Txn</param>
        /// <param name="passwordexpiredate">Hạn mật khẩu</param>
        /// <param name="loginip">IP login</param>
        /// <param name="logintime">Thời gian Login</param>
        /// <param name="lastloginip">IP last login</param>
        /// <param name="lastlogintime">Thời gian login lần trước</param>
        /// <param name="isoutright">is Outright</param>
        public void Insert(Int64 id,Int64 parentid, Int64 sgmid, Int64 gmid, Int64 masterid, Int64 agentid, Int64 accountid, int accgrade,
            string username, string password, string nickname, string firtname, string lastname, string phone, string mobilephone,
            decimal maxcredit, string fax, bool isopent, bool issuspended, bool allowautopt, int transferconditionid, Int64 createby,
            DateTime createdate, Int64 modifyby, DateTime modifydate, DateTime lasttxn, DateTime passwordexpiredate, string loginip,
            DateTime logintime, string lastloginip, DateTime lastlogintime, bool isoutright)
        {
            try
            {
                password = clsDataAccessMD5Password.ChangeMD5(password);
                obj.Insert(id,parentid, sgmid, gmid, masterid, agentid, accountid, accgrade, username, password, nickname, firtname, lastname,
                    phone, mobilephone, maxcredit, fax, isopent, issuspended, allowautopt, transferconditionid, createby, createdate, modifyby,
                    modifydate, lasttxn, passwordexpiredate,loginip,logintime,lastloginip,lastlogintime,isoutright);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
        public void Update(Int64 id, Int64 parentid, Int64 sgmid, Int64 gmid, Int64 masterid, Int64 agentid, Int64 accountid, int accgrade,
            string username, string password, string nickname, string firtname, string lastname, string phone, string mobilephone,
            decimal maxcredit, string fax, bool isopent, bool issuspended, bool allowautopt, int transferconditionid, Int64 createby,
            DateTime createdate, Int64 modifyby, DateTime modifydate, DateTime lasttxn, DateTime passwordexpiredate, string loginip,
            DateTime logintime, string lastloginip, DateTime lastlogintime, bool isoutright)
        {
            try
            {
                obj.Update(id,parentid, sgmid,gmid, masterid, agentid, accountid, accgrade, username, password, nickname, firtname, lastname,
                    phone, mobilephone, maxcredit, fax, isopent, issuspended, allowautopt, transferconditionid, createby, createdate, modifyby,
                    modifydate, lasttxn, passwordexpiredate, loginip, logintime, lastloginip, lastlogintime, isoutright);
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
        public Int64 CheckUserName(string username)
        {
            try
            {
                return obj.CheckUserName(username);
            }
            catch (Exception)
            {

                return 0;
            }
        }
        public bool Login(string username,string password)
        {
            try
            {
                Int64 id=obj.Login(username, clsDataAccessMD5Password.ChangeMD5(password));
                if (id != 0)
                {
                    HttpContext.Current.Session["UserId"] = id;
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception)
            {

                return false;
            }
        }
        public void ResetPassword(Int64 id, string password)
        {
            try
            {
                obj.ResetPassword(id, password);
            }
            catch (Exception)
            {
                
                throw;
            }
        }
    }
}
