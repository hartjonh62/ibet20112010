using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    /// <summary>
    /// Thao tác dữ liệu trên bảng tblRpCommByBetType
    /// Create By ThiepND
    /// 3/1/2011
    /// </summary>
    public class clsDataAccessRpCommByBetType
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpCommByBetType> GetByParentId(Int64 parentid,DateTime startdate,DateTime enddate)
        {
            try
            {
                List<clsRpCommByBetType> objList = new List<clsRpCommByBetType>();
                SqlCommand com = new SqlCommand("iBet_tblRpCommByBetType_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ParentId", parentid);
                com.Parameters.AddWithValue("@fDate", startdate.ToShortDateString());
                com.Parameters.AddWithValue("@tDate", enddate.ToShortDateString());
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpCommByBetType obj = new clsRpCommByBetType();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["ParentId"] != DBNull.Value)
                    {
                        obj.ParentId = Convert.ToInt64(dr["ParentId"]);
                    }
                    if (dr["AccId"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccId"]);
                    }
                    if (dr["UserName"] != DBNull.Value)
                    {
                        obj.UserName = Convert.ToString(dr["UserName"]);
                    }
                    if (dr["StrAccId"] != DBNull.Value)
                    {
                        obj.StrAccId = Convert.ToString(dr["StrAccId"]);
                    }
                    if (dr["Hdp"] != DBNull.Value)
                    {
                        obj.Hdp = Convert.ToDecimal(dr["Hdp"]);
                    }
                    if (dr["OU"] != DBNull.Value)
                    {
                        obj.OU = Convert.ToDecimal(dr["OU"]);
                    }
                    if (dr["OneHdp"] != DBNull.Value)
                    {
                        obj.OneHdp = Convert.ToDecimal(dr["OneHdp"]);
                    }
                    if (dr["OneOU"] != DBNull.Value)
                    {
                        obj.OneOU = Convert.ToDecimal(dr["OneOU"]);
                    }
                    if (dr["OE"] != DBNull.Value)
                    {
                        obj.OE = Convert.ToDecimal(dr["OE"]);
                    }
                    if (dr["NG"] != DBNull.Value)
                    {
                        obj.NG = Convert.ToDecimal(dr["NG"]);
                    }
                    if (dr["Total1"] != DBNull.Value)
                    {
                        obj.Total1 = Convert.ToDecimal(dr["Total1"]);
                    }
                    if (dr["OneXTwo"] != DBNull.Value)
                    {
                        obj.OneXTwo = Convert.ToDecimal(dr["OneXTwo"]);
                    }
                    if (dr["CorrectScore"] != DBNull.Value)
                    {
                        obj.CorrectScore = Convert.ToDecimal(dr["CorrectScore"]);
                    }
                    if (dr["TG"] != DBNull.Value)
                    {
                        obj.TG = Convert.ToDecimal(dr["TG"]);
                    }
                    if (dr["MP"] != DBNull.Value)
                    {
                        obj.MP = Convert.ToDecimal(dr["MP"]);
                    }
                    if (dr["Outright"] != DBNull.Value)
                    {
                        obj.Outright = Convert.ToDecimal(dr["Outright"]);
                    }
                    if (dr["FGLG"] != DBNull.Value)
                    {
                        obj.FGLG = Convert.ToDecimal(dr["FGLG"]);
                    }
                    if (dr["HTFT"] != DBNull.Value)
                    {
                        obj.HTFT = Convert.ToDecimal(dr["HTFT"]);
                    }
                    if (dr["MoneyLine"] != DBNull.Value)
                    {
                        obj.MoneyLine = Convert.ToDecimal(dr["MoneyLine"]);
                    }
                    if (dr["Total2"] != DBNull.Value)
                    {
                        obj.Total2 = Convert.ToDecimal(dr["Total2"]);
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
    }
}
