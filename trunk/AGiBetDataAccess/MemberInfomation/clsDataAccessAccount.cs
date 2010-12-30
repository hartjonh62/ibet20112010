using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace AGiBetDataAccess.MemberInfomation
{
    /// <summary>
    /// Thao tác dữ liệu trên bảng tblAccount
    /// Create By ThiepND
    /// 28/12/2010
    /// </summary>
    public class clsDataAccessAccount
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các Account
        /// </summary>
        /// <returns>List</returns>
        public List<clsAccount> getAll()
        {
            try
            {
                List<clsAccount> objList = new List<clsAccount>();
                SqlCommand com = new SqlCommand("iBet_tblAccounts_Gets",conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsAccount obj = new clsAccount();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["ParentId"] != DBNull.Value)
                    {
                        obj.ParentId = Convert.ToInt64(dr["ParentId"]);
                    }
                    if (dr["SGMId"] != DBNull.Value)
                    {
                        obj.SGMId = Convert.ToInt64(dr["SGMId"]);
                    }
                    if (dr["GMId"] != DBNull.Value)
                    {
                        obj.GMId = Convert.ToInt64(dr["GMId"]);
                    }
                    if (dr["MaterId"] != DBNull.Value)
                    {
                        obj.MasterId = Convert.ToInt64(dr["MaterId"]);
                    }
                    if (dr["AgentId"] != DBNull.Value)
                    {
                        obj.AgentId = Convert.ToInt64(dr["AgentId"]);
                    }
                    if (dr["AccountId"] != DBNull.Value)
                    {
                        obj.AccountId = Convert.ToInt64(dr["AccountId"]);
                    }
                    if (dr["AccGrade"] != DBNull.Value)
                    {
                        obj.AccGrade = Convert.ToInt32(dr["AccGrade"]);
                    }
                    if (dr["UserName"] != DBNull.Value)
                    {
                        obj.UserName = Convert.ToString(dr["UserName"]);
                    }
                    if (dr["Password"] != DBNull.Value)
                    {
                        obj.Password = Convert.ToString(dr["Password"]);
                    }
                    if (dr["NickName"] != DBNull.Value)
                    {
                        obj.NickName = Convert.ToString(dr["NickName"]);
                    }
                    if (dr["FirtName"] != DBNull.Value)
                    {
                        obj.FirtName = Convert.ToString(dr["FirtName"]);
                    }
                    if (dr["LastName"] != DBNull.Value)
                    {
                        obj.LastName = Convert.ToString(dr["LastName"]);
                    }
                    if (dr["Phone"] != DBNull.Value)
                    {
                        obj.Phone = Convert.ToString(dr["Phone"]);
                    }
                    if (dr["MobilePhone"] != DBNull.Value)
                    {
                        obj.MobilePhone = Convert.ToString(dr["MobilePhone"]);
                    }
                    if (dr["MaxCredit"] != DBNull.Value)
                    {
                        obj.MaxCredit = Convert.ToDecimal(dr["MaxCredit"]);
                    }
                    if (dr["Fax"] != DBNull.Value)
                    {
                        obj.Fax = Convert.ToString(dr["Fax"]);
                    }
                    if (dr["IsOpen"] != DBNull.Value)
                    {
                        obj.IsOpen = Convert.ToBoolean(dr["IsOpen"]);
                    }
                    if (dr["IsSuspended"] != DBNull.Value)
                    {
                        obj.IsSuspended = Convert.ToBoolean(dr["IsSuspended"]);
                    }
                    if (dr["AllowAutoPT"] != DBNull.Value)
                    {
                        obj.AllowAutoPT = Convert.ToBoolean(dr["AllowAutoPT"]);
                    }
                    if (dr["TransferConditionId"] != DBNull.Value)
                    {
                        obj.TransferConditionId = Convert.ToInt32(dr["TransferConditionId"]);
                    }
                    if (dr["CreateBy"] != DBNull.Value)
                    {
                        obj.CreateBy = Convert.ToInt64(dr["CreateBy"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyDate"] != DBNull.Value)
                    {
                        obj.ModifyDate = Convert.ToDateTime(dr["ModifyDate"]);
                    }
                    if (dr["LastTxn"] != DBNull.Value)
                    {
                        obj.LastTxn = Convert.ToDateTime(dr["LastTxn"]);
                    }
                    if (dr["PasswordExpiryDate"] != DBNull.Value)
                    {
                        obj.PasswordExpiryDate = Convert.ToDateTime(dr["PasswordExpiryDate"]);
                    }
                    if (dr["LoginIP"] != DBNull.Value)
                    {
                        obj.LoginIP = Convert.ToString(dr["LoginIP"]);
                    }
                    if (dr["LoginTime"] != DBNull.Value)
                    {
                        obj.LoginTime = Convert.ToDateTime(dr["LoginTime"]);
                    }
                    if (dr["LastLoginIP"] != DBNull.Value)
                    {
                        obj.LastLoginIP = Convert.ToString(dr["LastLoginIP"]);
                    }
                    if (dr["LastLoginTime"] != DBNull.Value)
                    {
                        obj.LastLoginTime = Convert.ToDateTime(dr["LastLoginTime"]);
                    }
                    if (dr["IsOutright"] != DBNull.Value)
                    {
                        obj.IsOutright = Convert.ToBoolean(dr["IsOutright"]);
                    }
                    objList.Add(obj);
                }
                return objList;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.CloseConn();
            }
        }
        /// <summary>
        /// Danh sách Account theo id tra của nó (parentid)
        /// </summary>
        /// <param name="patentid">ID cấp tra</param>
        /// <returns>List Account</returns>
        public List<clsAccount> getByParentId(int parentid)
        {
            try
            {
                List<clsAccount> objList = new List<clsAccount>();
                SqlCommand com = new SqlCommand("iBet_tblAccount_GetByParentId", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ParentId", parentid);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsAccount obj = new clsAccount();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["ParentId"] != DBNull.Value)
                    {
                        obj.ParentId = Convert.ToInt64(dr["ParentId"]);
                    }
                    if (dr["SGMId"] != DBNull.Value)
                    {
                        obj.SGMId = Convert.ToInt64(dr["SGMId"]);
                    }
                    if (dr["GMId"] != DBNull.Value)
                    {
                        obj.GMId = Convert.ToInt64(dr["GMId"]);
                    }
                    if (dr["MaterId"] != DBNull.Value)
                    {
                        obj.MasterId = Convert.ToInt64(dr["MaterId"]);
                    }
                    if (dr["AgentId"] != DBNull.Value)
                    {
                        obj.AgentId = Convert.ToInt64(dr["AgentId"]);
                    }
                    if (dr["AccountId"] != DBNull.Value)
                    {
                        obj.AccountId = Convert.ToInt64(dr["AccountId"]);
                    }
                    if (dr["AccGrade"] != DBNull.Value)
                    {
                        obj.AccGrade = Convert.ToInt32(dr["AccGrade"]);
                    }
                    if (dr["UserName"] != DBNull.Value)
                    {
                        obj.UserName = Convert.ToString(dr["UserName"]);
                    }
                    if (dr["Password"] != DBNull.Value)
                    {
                        obj.Password = Convert.ToString(dr["Password"]);
                    }
                    if (dr["NickName"] != DBNull.Value)
                    {
                        obj.NickName = Convert.ToString(dr["NickName"]);
                    }
                    if (dr["FirtName"] != DBNull.Value)
                    {
                        obj.FirtName = Convert.ToString(dr["FirtName"]);
                    }
                    if (dr["LastName"] != DBNull.Value)
                    {
                        obj.LastName = Convert.ToString(dr["LastName"]);
                    }
                    if (dr["Phone"] != DBNull.Value)
                    {
                        obj.Phone = Convert.ToString(dr["Phone"]);
                    }
                    if (dr["MobilePhone"] != DBNull.Value)
                    {
                        obj.MobilePhone = Convert.ToString(dr["MobilePhone"]);
                    }
                    if (dr["MaxCredit"] != DBNull.Value)
                    {
                        obj.MaxCredit = Convert.ToDecimal(dr["MaxCredit"]);
                    }
                    if (dr["Fax"] != DBNull.Value)
                    {
                        obj.Fax = Convert.ToString(dr["Fax"]);
                    }
                    if (dr["IsOpen"] != DBNull.Value)
                    {
                        obj.IsOpen = Convert.ToBoolean(dr["IsOpen"]);
                    }
                    if (dr["IsSuspended"] != DBNull.Value)
                    {
                        obj.IsSuspended = Convert.ToBoolean(dr["IsSuspended"]);
                    }
                    if (dr["AllowAutoPT"] != DBNull.Value)
                    {
                        obj.AllowAutoPT = Convert.ToBoolean(dr["AllowAutoPT"]);
                    }
                    if (dr["TransferConditionId"] != DBNull.Value)
                    {
                        obj.TransferConditionId = Convert.ToInt32(dr["TransferConditionId"]);
                    }
                    if (dr["CreateBy"] != DBNull.Value)
                    {
                        obj.CreateBy = Convert.ToInt64(dr["CreateBy"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyDate"] != DBNull.Value)
                    {
                        obj.ModifyDate = Convert.ToDateTime(dr["ModifyDate"]);
                    }
                    if (dr["LastTxn"] != DBNull.Value)
                    {
                        obj.LastTxn = Convert.ToDateTime(dr["LastTxn"]);
                    }
                    if (dr["PasswordExpiryDate"] != DBNull.Value)
                    {
                        obj.PasswordExpiryDate = Convert.ToDateTime(dr["PasswordExpiryDate"]);
                    }
                    if (dr["LoginIP"] != DBNull.Value)
                    {
                        obj.LoginIP = Convert.ToString(dr["LoginIP"]);
                    }
                    if (dr["LoginTime"] != DBNull.Value)
                    {
                        obj.LoginTime = Convert.ToDateTime(dr["LoginTime"]);
                    }
                    if (dr["LastLoginIP"] != DBNull.Value)
                    {
                        obj.LastLoginIP = Convert.ToString(dr["LastLoginIP"]);
                    }
                    if (dr["LastLoginTime"] != DBNull.Value)
                    {
                        obj.LastLoginTime = Convert.ToDateTime(dr["LastLoginTime"]);
                    }
                    if (dr["IsOutright"] != DBNull.Value)
                    {
                        obj.IsOutright = Convert.ToBoolean(dr["IsOutright"]);
                    }
                    objList.Add(obj);
                }
                return objList;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.CloseConn();
            }
        }
        /// <summary>
        /// Trả về một Account theo ID
        /// </summary>
        /// <param name="id">ID của Account muốn tìm</param>
        /// <returns>Account</returns>
        public clsAccount getById(Int64 id)
        {
            try
            {
                clsAccount obj = new clsAccount();
                SqlCommand com = new SqlCommand("iBet_tblAccounts_Get", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["ParentId"] != DBNull.Value)
                    {
                        obj.ParentId = Convert.ToInt64(dr["ParentId"]);
                    }
                    if (dr["SGMId"] != DBNull.Value)
                    {
                        obj.SGMId = Convert.ToInt64(dr["SGMId"]);
                    }
                    if (dr["GMId"] != DBNull.Value)
                    {
                        obj.GMId = Convert.ToInt64(dr["GMId"]);
                    }
                    if (dr["MaterId"] != DBNull.Value)
                    {
                        obj.MasterId = Convert.ToInt64(dr["MaterId"]);
                    }
                    if (dr["AgentId"] != DBNull.Value)
                    {
                        obj.AgentId = Convert.ToInt64(dr["AgentId"]);
                    }
                    if (dr["AccountId"] != DBNull.Value)
                    {
                        obj.AccountId = Convert.ToInt64(dr["AccountId"]);
                    }
                    if (dr["AccGrade"] != DBNull.Value)
                    {
                        obj.AccGrade = Convert.ToInt32(dr["AccGrade"]);
                    }
                    if (dr["UserName"] != DBNull.Value)
                    {
                        obj.UserName = Convert.ToString(dr["UserName"]);
                    }
                    if (dr["Password"] != DBNull.Value)
                    {
                        obj.Password = Convert.ToString(dr["Password"]);
                    }
                    if (dr["NickName"] != DBNull.Value)
                    {
                        obj.NickName = Convert.ToString(dr["NickName"]);
                    }
                    if (dr["FirtName"] != DBNull.Value)
                    {
                        obj.FirtName = Convert.ToString(dr["FirtName"]);
                    }
                    if (dr["LastName"] != DBNull.Value)
                    {
                        obj.LastName = Convert.ToString(dr["LastName"]);
                    }
                    if (dr["Phone"] != DBNull.Value)
                    {
                        obj.Phone = Convert.ToString(dr["Phone"]);
                    }
                    if (dr["MobilePhone"] != DBNull.Value)
                    {
                        obj.MobilePhone = Convert.ToString(dr["MobilePhone"]);
                    }
                    if (dr["MaxCredit"] != DBNull.Value)
                    {
                        obj.MaxCredit = Convert.ToDecimal(dr["MaxCredit"]);
                    }
                    if (dr["Fax"] != DBNull.Value)
                    {
                        obj.Fax = Convert.ToString(dr["Fax"]);
                    }
                    if (dr["IsOpen"] != DBNull.Value)
                    {
                        obj.IsOpen = Convert.ToBoolean(dr["IsOpen"]);
                    }
                    if (dr["IsSuspended"] != DBNull.Value)
                    {
                        obj.IsSuspended = Convert.ToBoolean(dr["IsSuspended"]);
                    }
                    if (dr["AllowAutoPT"] != DBNull.Value)
                    {
                        obj.AllowAutoPT = Convert.ToBoolean(dr["AllowAutoPT"]);
                    }
                    if (dr["TransferConditionId"] != DBNull.Value)
                    {
                        obj.TransferConditionId = Convert.ToInt32(dr["TransferConditionId"]);
                    }
                    if (dr["CreateBy"] != DBNull.Value)
                    {
                        obj.CreateBy = Convert.ToInt64(dr["CreateBy"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyDate"] != DBNull.Value)
                    {
                        obj.ModifyDate = Convert.ToDateTime(dr["ModifyDate"]);
                    }
                    if (dr["LastTxn"] != DBNull.Value)
                    {
                        obj.LastTxn = Convert.ToDateTime(dr["LastTxn"]);
                    }
                    if (dr["PasswordExpiryDate"] != DBNull.Value)
                    {
                        obj.PasswordExpiryDate = Convert.ToDateTime(dr["PasswordExpiryDate"]);
                    }
                    if (dr["LoginIP"] != DBNull.Value)
                    {
                        obj.LoginIP = Convert.ToString(dr["LoginIP"]);
                    }
                    if (dr["LoginTime"] != DBNull.Value)
                    {
                        obj.LoginTime = Convert.ToDateTime(dr["LoginTime"]);
                    }
                    if (dr["LastLoginIP"] != DBNull.Value)
                    {
                        obj.LastLoginIP = Convert.ToString(dr["LastLoginIP"]);
                    }
                    if (dr["LastLoginTime"] != DBNull.Value)
                    {
                        obj.LastLoginTime = Convert.ToDateTime(dr["LastLoginTime"]);
                    }
                    if (dr["IsOutright"] != DBNull.Value)
                    {
                        obj.IsOutright = Convert.ToBoolean(dr["IsOutright"]);
                    }
                }
                return obj;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.CloseConn();
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
        public void Insert(Int64 parentid, Int64 sgmid, Int64 gmid, Int64 masterid, Int64 agentid, Int64 accountid, int accgrade,
            string username, string password, string nickname, string firtname, string lastname, string phone, string mobilephone,
            decimal maxcredit, string fax, bool isopent, bool issuspended, bool allowautopt, int transferconditionid, Int64 createby,
            DateTime createdate, Int64 modifyby, DateTime modifydate, DateTime lasttxn, DateTime passwordexpiredate, string loginip,
            DateTime logintime, string lastloginip, DateTime lastlogintime, bool isoutright)
        {
            try
            {
                clsAccount obj = new clsAccount();
                SqlCommand com = new SqlCommand("iBet_tblAccounts_Insert", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ParentId", parentid);
                com.Parameters.AddWithValue("@SGMId", sgmid);
                com.Parameters.AddWithValue("@GMId", gmid);
                com.Parameters.AddWithValue("@MaterId", masterid);
                com.Parameters.AddWithValue("@AgentId", agentid);
                com.Parameters.AddWithValue("@AccountId", accountid);
                com.Parameters.AddWithValue("@AccGrade", accgrade);
                com.Parameters.AddWithValue("@UserName", username);
                com.Parameters.AddWithValue("@Password", password);
                com.Parameters.AddWithValue("@NickName", nickname);
                com.Parameters.AddWithValue("@FirtName", firtname);
                com.Parameters.AddWithValue("@LastName", lastname);
                com.Parameters.AddWithValue("@Phone", phone);
                com.Parameters.AddWithValue("@MobilePhone", mobilephone);
                com.Parameters.AddWithValue("@MaxCredit", maxcredit);
                com.Parameters.AddWithValue("@Fax", fax);
                com.Parameters.AddWithValue("@IsOpen", isopent);
                com.Parameters.AddWithValue("@Issuspended", issuspended);
                com.Parameters.AddWithValue("@AllowAutoPT", allowautopt);
                com.Parameters.AddWithValue("@TransferConditionId", transferconditionid);
                com.Parameters.AddWithValue("@CreateBy", createby);
                com.Parameters.AddWithValue("@CreateDate", createdate);
                com.Parameters.AddWithValue("@ModifyBy", modifyby);
                com.Parameters.AddWithValue("@ModifyDate", modifydate);
                com.Parameters.AddWithValue("@LastTxn", lasttxn);
                com.Parameters.AddWithValue("@PasswordExpiryDate", passwordexpiredate);
                com.Parameters.AddWithValue("@LoginIP", loginip);
                com.Parameters.AddWithValue("@LoginTime", logintime);
                com.Parameters.AddWithValue("@LastLoginIP", lastloginip);
                com.Parameters.AddWithValue("@LastLoginTime", lastlogintime);
                com.Parameters.AddWithValue("@IsOutright", isoutright);
                conn.OpenConn();
                com.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.CloseConn();
            }
        }
        /// <summary>
        /// Sửa một Account
        /// </summary>
        /// <param name="id">ID Account cần sửa</param>
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
        public void Update(Int64 id, Int64 parentid, Int64 sgmid, Int64 gmid, Int64 masterid, Int64 agentid, Int64 accountid, int accgrade,
            string username, string password, string nickname, string firtname, string lastname, string phone, string mobilephone,
            decimal maxcredit, string fax, bool isopent, bool issuspended, bool allowautopt, int transferconditionid, Int64 createby,
            DateTime createdate, Int64 modifyby, DateTime modifydate, DateTime lasttxn, DateTime passwordexpiredate, string loginip,
            DateTime logintime, string lastloginip, DateTime lastlogintime, bool isoutright)
        {
            try
            {
                clsAccount obj = new clsAccount();
                SqlCommand com = new SqlCommand("iBet_tblAccounts_Update", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                com.Parameters.AddWithValue("@ParentId", parentid);
                com.Parameters.AddWithValue("@SGMId", sgmid);
                com.Parameters.AddWithValue("@GMId", gmid);
                com.Parameters.AddWithValue("@MaterId", masterid);
                com.Parameters.AddWithValue("@AgentId", agentid);
                com.Parameters.AddWithValue("@AccountId", accountid);
                com.Parameters.AddWithValue("@AccGrade", accgrade);
                com.Parameters.AddWithValue("@UserName", username);
                com.Parameters.AddWithValue("@Password", password);
                com.Parameters.AddWithValue("@NickName", nickname);
                com.Parameters.AddWithValue("@FirtName", firtname);
                com.Parameters.AddWithValue("@LastName", lastname);
                com.Parameters.AddWithValue("@Phone", phone);
                com.Parameters.AddWithValue("@MobilePhone", mobilephone);
                com.Parameters.AddWithValue("@MaxCredit", maxcredit);
                com.Parameters.AddWithValue("@Fax", fax);
                com.Parameters.AddWithValue("@IsOpen", isopent);
                com.Parameters.AddWithValue("@Issuspended", issuspended);
                com.Parameters.AddWithValue("@AllowAutoPT", allowautopt);
                com.Parameters.AddWithValue("@TransferConditionId", transferconditionid);
                com.Parameters.AddWithValue("@CreateBy", createby);
                com.Parameters.AddWithValue("@CreateDate", createdate);
                com.Parameters.AddWithValue("@ModifyBy", modifyby);
                com.Parameters.AddWithValue("@ModifyDate", modifydate);
                com.Parameters.AddWithValue("@LastTxn", lasttxn);
                com.Parameters.AddWithValue("@PasswordExpiryDate", passwordexpiredate);
                com.Parameters.AddWithValue("@LoginIP", loginip);
                com.Parameters.AddWithValue("@LoginTime", logintime);
                com.Parameters.AddWithValue("@LastLoginIP", lastloginip);
                com.Parameters.AddWithValue("@LastLoginTime", lastlogintime);
                com.Parameters.AddWithValue("@IsOutright", isoutright);
                conn.OpenConn();
                com.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.CloseConn();
            }
        }
        /// <summary>
        /// Xóa một Account
        /// </summary>
        /// <param name="id">ID Account muốn xóa</param>
        public void Delete(int id)
        {
            try
            {
                clsAccount obj = new clsAccount();
                SqlCommand com = new SqlCommand("iBet_tblAccounts_Delete", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                conn.OpenConn();
                com.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.CloseConn();
            }
        }
        public Int64 CheckUserName(string username)
        {
            try
            {
                clsAccount obj = new clsAccount();
                SqlCommand com = new SqlCommand("iBet_tblAccounts_CheckUserName", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@UserName", username);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["ID"] != DBNull.Value)
                    {
                        return Convert.ToInt64(dr["ID"]);
                    }
                    else
                    {
                        return 0;
                    }
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception)
            {
                throw;
            }
            finally { conn.CloseConn(); }
        }
        public void ResetPassword(Int64 id, string password)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblAccounts_ResetPassword", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                password = clsDataAccessMD5Password.ChangeMD5(password);
                com.Parameters.AddWithValue("@Id", id);
                com.Parameters.AddWithValue("@Password", password);
                conn.OpenConn();
                com.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                conn.CloseConn();
            }
        }
    }
}
