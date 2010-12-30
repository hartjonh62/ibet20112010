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
    public class clsDataAccessBalance
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các Balance
        /// </summary>
        /// <returns>List</returns>
        public List<clsBalance> getAll()
        {
            try
            {
                List<clsBalance> objList = new List<clsBalance>();
                SqlCommand com = new SqlCommand("iBet_tblBalance_Gets",conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsBalance obj = new clsBalance();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["AccId"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccId"]);
                    }
                    if (dr["CashBalance"] != DBNull.Value)
                    {
                        obj.CashBalance = Convert.ToDecimal(dr["CashBalance"]);
                    }
                    if (dr["YesCashBalance"] != DBNull.Value)
                    {
                        obj.YesCashBalance = Convert.ToDecimal(dr["YesCashBalance"]);
                    }
                    if (dr["TotalBalance"] != DBNull.Value)
                    {
                        obj.TotalBalance = Convert.ToDecimal(dr["TotalBalance"]);
                    }
                    if (dr["YesTotalBalance"] != DBNull.Value)
                    {
                        obj.YesTotalBalance = Convert.ToDecimal(dr["YesTotalBalance"]);
                    }
                    if (dr["OutStanding"] != DBNull.Value)
                    {
                        obj.OutStanding = Convert.ToDecimal(dr["OutStanding"]);
                    }
                    if (dr["Credit"] != DBNull.Value)
                    {
                        obj.Credit = Convert.ToDecimal(dr["Credit"]);
                    }
                    if (dr["BetCredit"] != DBNull.Value)
                    {
                        obj.BetCredit = Convert.ToDecimal(dr["BetCredit"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyDate"] != DBNull.Value)
                    {
                        obj.ModifyDate = Convert.ToDateTime(dr["ModifyDate"]);
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
        //public clsBalance getByAccId(Int64 accid)
        //{
        //    try
        //    {
        //        clsBalance obj = new clsBalance();
        //        SqlCommand com = new SqlCommand("iBet_tblSoccerDeadBall_GetByAccId", conn.GetConn());
        //        com.CommandType = System.Data.CommandType.StoredProcedure;
        //        com.Parameters.AddWithValue("@AccId", accid);
        //        conn.OpenConn();
        //        SqlDataReader dr = com.ExecuteReader();
        //        if (dr.Read())
        //        { 
                
        //        }
        //    }
        //}
    }
}
