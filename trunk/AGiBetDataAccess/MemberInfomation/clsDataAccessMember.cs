using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace AGiBetDataAccess.MemberInfomation
{
    /// <summary>
    /// Thao tác dữ liệu trên bảng tblMember
    /// Create By ThiepND
    /// 28/12/2010
    /// </summary>
    public class clsDataAccessMember
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các Account
        /// </summary>
        /// <returns>List</returns>
        public List<clsMember> getAll()
        {
            try
            {
                List<clsMember> objList = new List<clsMember>();
                SqlCommand com = new SqlCommand("iBet_tblMember_Gets", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsMember obj = new clsMember();
                    if (dr["MemberId"] != DBNull.Value)
                    {
                        obj.MemberId = Convert.ToInt64(dr["MemberId"]);
                    }
                    if (dr["UserNamePrefix"] != DBNull.Value)
                    {
                        obj.UserNamePrefix = Convert.ToString(dr["UserNamePrefix"]);
                    }
                    if (dr["UserName"] != DBNull.Value)
                    {
                        obj.UserName = Convert.ToString(dr["UserName"]);
                    }
                    if (dr["Pass"] != DBNull.Value)
                    {
                        obj.Pass = Convert.ToString(dr["Pass"]);
                    }
                    if (dr["FName"] != DBNull.Value)
                    {
                        obj.FName = Convert.ToString(dr["FName"]);
                    }
                    if (dr["LName"] != DBNull.Value)
                    {
                        obj.LName = Convert.ToString(dr["LName"]);
                    }
                    if (dr["Phone"] != DBNull.Value)
                    {
                        obj.Phone = Convert.ToString(dr["Phone"]);
                    }
                    if (dr["MobilePhone"] != DBNull.Value)
                    {
                        obj.MobilePhone = Convert.ToString(dr["MobilePhone"]);
                    }
                    if (dr["Fax"] != DBNull.Value)
                    {
                        obj.Fax = Convert.ToString(dr["Fax"]);
                    }
                    if (dr["MemberId"] != DBNull.Value)
                    {
                        obj.MemberId = Convert.ToInt64(dr["MemberId"]);
                    }
                    if (dr["Status"] != DBNull.Value)
                    {
                        obj.Status = Convert.ToString(dr["Status"]);
                    }
                    if (dr["MinBet"] != DBNull.Value)
                    {
                        obj.MinBet = Convert.ToDecimal(dr["MinBet"]);
                    }
                    if (dr["MaxBet"] != DBNull.Value)
                    {
                        obj.MaxBet = Convert.ToDecimal(dr["MaxBet"]);
                    }
                    if (dr["MaxPerMatch"] != DBNull.Value)
                    {
                        obj.MaxPerMatch = Convert.ToDecimal(dr["MaxPerMatch"]);
                    }
                    if (dr["LastLogin"] != DBNull.Value)
                    {
                        obj.LastLogin = Convert.ToString(dr["LastLogin"]);
                    }
                    if (dr["Loginip"] != DBNull.Value)
                    {
                        obj.Loginip = Convert.ToString(dr["Loginip"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyDate"] != DBNull.Value)
                    {
                        obj.ModifyDate = Convert.ToDateTime(dr["ModifyDate"]);
                    }
                    if (dr["SessionLogin"] != DBNull.Value)
                    {
                        obj.SessionLogin = Convert.ToString(dr["SessionLogin"]);
                    }
                    if (dr["Online"] != DBNull.Value)
                    {
                        obj.Online = Convert.ToBoolean(dr["Online"]);
                    }
                    if (dr["PasswordExpiryDate"] != DBNull.Value)
                    {
                        obj.PasswordExpiryDate = Convert.ToDateTime(dr["PasswordExpiryDate"]);
                    }
                    if (dr["CashBalance"] != DBNull.Value)
                    {
                        obj.CashBalance = Convert.ToDecimal(dr["CashBalance"]);
                    }
                    if (dr["OutStanding"] != DBNull.Value)
                    {
                        obj.OutStanding = Convert.ToDecimal(dr["OutStanding"]);
                    }
                    if (dr["BetCredit"] != DBNull.Value)
                    {
                        obj.BetCredit = Convert.ToDecimal(dr["BetCredit"]);
                    }
                    if (dr["GivenCredit"] != DBNull.Value)
                    {
                        obj.GivenCredit = Convert.ToDecimal(dr["GivenCredit"]);
                    }
                    if (dr["TimeInsert"] != DBNull.Value)
                    {
                        obj.TimeInsert = Convert.ToDateTime(dr["TimeInsert"]);
                    }
                    if (dr["CommissionHDPOU"] != DBNull.Value)
                    {
                        obj.CommissionHDPOU = Convert.ToDecimal(dr["CommissionHDPOU"]);
                    }
                    if (dr["Commission1x2"] != DBNull.Value)
                    {
                        obj.Commission1x2 = Convert.ToDecimal(dr["Commission1x2"]);
                    }
                    if (dr["CommissionOther"] != DBNull.Value)
                    {
                        obj.CommissionOther = Convert.ToDecimal(dr["CommissionOther"]);
                    }
                    objList.Add(obj);
                }
                return objList;
            }
            catch (Exception)
            {
                throw;
            }
        }
        public clsMember getByUserName(string username)
        {
            try
            {
                clsMember obj = new clsMember();
                SqlCommand com = new SqlCommand("iBet_tblMember_GetByUserName", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@UserName", username);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["MemberId"] != DBNull.Value)
                    {
                        obj.MemberId = Convert.ToInt64(dr["MemberId"]);
                    }
                    if (dr["UserNamePrefix"] != DBNull.Value)
                    {
                        obj.UserNamePrefix = Convert.ToString(dr["UserNamePrefix"]);
                    }
                    if (dr["UserName"] != DBNull.Value)
                    {
                        obj.UserName = Convert.ToString(dr["UserName"]);
                    }
                    if (dr["Pass"] != DBNull.Value)
                    {
                        obj.Pass = Convert.ToString(dr["Pass"]);
                    }
                    if (dr["FName"] != DBNull.Value)
                    {
                        obj.FName = Convert.ToString(dr["FName"]);
                    }
                    if (dr["LName"] != DBNull.Value)
                    {
                        obj.LName = Convert.ToString(dr["LName"]);
                    }
                    if (dr["Phone"] != DBNull.Value)
                    {
                        obj.Phone = Convert.ToString(dr["Phone"]);
                    }
                    if (dr["MobilePhone"] != DBNull.Value)
                    {
                        obj.MobilePhone = Convert.ToString(dr["MobilePhone"]);
                    }
                    if (dr["Fax"] != DBNull.Value)
                    {
                        obj.Fax = Convert.ToString(dr["Fax"]);
                    }
                    if (dr["MemberId"] != DBNull.Value)
                    {
                        obj.MemberId = Convert.ToInt64(dr["MemberId"]);
                    }
                    if (dr["Status"] != DBNull.Value)
                    {
                        obj.Status = Convert.ToString(dr["Status"]);
                    }
                    if (dr["MinBet"] != DBNull.Value)
                    {
                        obj.MinBet = Convert.ToDecimal(dr["MinBet"]);
                    }
                    if (dr["MaxBet"] != DBNull.Value)
                    {
                        obj.MaxBet = Convert.ToDecimal(dr["MaxBet"]);
                    }
                    if (dr["MaxPerMatch"] != DBNull.Value)
                    {
                        obj.MaxPerMatch = Convert.ToDecimal(dr["MaxPerMatch"]);
                    }
                    if (dr["LastLogin"] != DBNull.Value)
                    {
                        obj.LastLogin = Convert.ToString(dr["LastLogin"]);
                    }
                    if (dr["Loginip"] != DBNull.Value)
                    {
                        obj.Loginip = Convert.ToString(dr["Loginip"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyDate"] != DBNull.Value)
                    {
                        obj.ModifyDate = Convert.ToDateTime(dr["ModifyDate"]);
                    }
                    if (dr["SessionLogin"] != DBNull.Value)
                    {
                        obj.SessionLogin = Convert.ToString(dr["SessionLogin"]);
                    }
                    if (dr["Online"] != DBNull.Value)
                    {
                        obj.Online = Convert.ToBoolean(dr["Online"]);
                    }
                    if (dr["PasswordExpiryDate"] != DBNull.Value)
                    {
                        obj.PasswordExpiryDate = Convert.ToDateTime(dr["PasswordExpiryDate"]);
                    }
                    if (dr["CashBalance"] != DBNull.Value)
                    {
                        obj.CashBalance = Convert.ToDecimal(dr["CashBalance"]);
                    }
                    if (dr["OutStanding"] != DBNull.Value)
                    {
                        obj.OutStanding = Convert.ToDecimal(dr["OutStanding"]);
                    }
                    if (dr["BetCredit"] != DBNull.Value)
                    {
                        obj.BetCredit = Convert.ToDecimal(dr["BetCredit"]);
                    }
                    if (dr["GivenCredit"] != DBNull.Value)
                    {
                        obj.GivenCredit = Convert.ToDecimal(dr["GivenCredit"]);
                    }
                    if (dr["TimeInsert"] != DBNull.Value)
                    {
                        obj.TimeInsert = Convert.ToDateTime(dr["TimeInsert"]);
                    }
                    if (dr["CommissionHDPOU"] != DBNull.Value)
                    {
                        obj.CommissionHDPOU = Convert.ToDecimal(dr["CommissionHDPOU"]);
                    }
                    if (dr["Commission1x2"] != DBNull.Value)
                    {
                        obj.Commission1x2 = Convert.ToDecimal(dr["Commission1x2"]);
                    }
                    if (dr["CommissionOther"] != DBNull.Value)
                    {
                        obj.CommissionOther = Convert.ToDecimal(dr["CommissionOther"]);
                    }
                }
                return obj;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
