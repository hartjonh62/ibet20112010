using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpMatchWinLossDetail
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpMatchWinLossDetail> GetByAccId(Int64 accid,string fdate,string tdate)
        {
            try
            {
                List<clsRpMatchWinLossDetail> objList = new List<clsRpMatchWinLossDetail>();
                SqlCommand com = new SqlCommand("iBet_tblRpMatchWinLossDetail_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@fDate", fdate);
                com.Parameters.AddWithValue("@tDate", tdate);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpMatchWinLossDetail obj = new clsRpMatchWinLossDetail();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["AccId"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccId"]);
                    }
                                       
                    if (dr["MatchId"] != DBNull.Value)
                    {
                        obj.MatchId = Convert.ToInt64(dr["MatchId"]);
                    }
                    if (dr["MatchName"] != DBNull.Value)
                    {
                        obj.MatchName = Convert.ToString(dr["MatchName"]);
                    }
                    if (dr["BetTypeId"] != DBNull.Value)
                    {
                        obj.BetTypeId = Convert.ToInt32(dr["BetTypeId"]);
                    }
                    
                    if (dr["BetTypeName"] != DBNull.Value)
                    {
                        obj.BetTypeName = Convert.ToString(dr["BetTypeName"]);
                    }
                    if (dr["Turnover"] != DBNull.Value)
                    {
                        obj.Turnover = Convert.ToDecimal(dr["Turnover"]);
                    }
                    if (dr["GrossComm"] != DBNull.Value)
                    {
                        obj.GrossComm = Convert.ToDecimal(dr["GrossComm"]);
                    }
                    if (dr["MeComm"] != DBNull.Value)
                    {
                        obj.MeComm = Convert.ToDecimal(dr["MeComm"]);
                    }
                    if (dr["MeWinLoss"] != DBNull.Value)
                    {
                        obj.MeWinLoss = Convert.ToDecimal(dr["MeWinLoss"]);
                    }
                    if (dr["MeTotal"] != DBNull.Value)
                    {
                        obj.MeTotal = Convert.ToDecimal(dr["MeTotal"]);
                    }
                    if (dr["AgWinLoss"] != DBNull.Value)
                    {
                        obj.AgWinLoss = Convert.ToDecimal(dr["AgWinLoss"]);
                    }
                    if (dr["AgComm"] != DBNull.Value)
                    {
                        obj.AgComm = Convert.ToDecimal(dr["AgComm"]);
                    }
                    if (dr["AgTotal"] != DBNull.Value)
                    {
                        obj.AgTotal = Convert.ToDecimal(dr["AgTotal"]);
                    }
                    if (dr["MaWinLoss"] != DBNull.Value)
                    {
                        obj.MaWinLoss = Convert.ToDecimal(dr["MaWinLoss"]);
                    }
                    if (dr["MaComm"] != DBNull.Value)
                    {
                        obj.MaComm = Convert.ToDecimal(dr["MaComm"]);
                    }
                    if (dr["MaTotal"] != DBNull.Value)
                    {
                        obj.MaTotal = Convert.ToDecimal(dr["MaTotal"]);
                    }
                    if (dr["GmWinLoss"] != DBNull.Value)
                    {
                        obj.GmWinLoss = Convert.ToDecimal(dr["GmWinLoss"]);
                    }
                    if (dr["GmComm"] != DBNull.Value)
                    {
                        obj.GmComm = Convert.ToDecimal(dr["GmComm"]);
                    }
                    if (dr["GmTotal"] != DBNull.Value)
                    {
                        obj.GmTotal = Convert.ToDecimal(dr["GmTotal"]);
                    }
                    if (dr["SuWinLoss"] != DBNull.Value)
                    {
                        obj.SuWinLoss = Convert.ToDecimal(dr["SuWinLoss"]);
                    }
                    if (dr["SuComm"] != DBNull.Value)
                    {
                        obj.SuComm = Convert.ToDecimal(dr["SuComm"]);
                    }
                    if (dr["SuTotal"] != DBNull.Value)
                    {
                        obj.SuTotal = Convert.ToDecimal(dr["SuTotal"]);
                    }
                    if (dr["CompanyComm"] != DBNull.Value)
                    {
                        obj.CompanyComm = Convert.ToDecimal(dr["CompanyComm"]);
                    }
                    if (dr["CompanyTotal"] != DBNull.Value)
                    {
                        obj.CompanyTotal = Convert.ToDecimal(dr["CompanyTotal"]);
                    }
                    if (dr["CompanyTotal"] != DBNull.Value)
                    {
                        obj.CompanyTotal = Convert.ToDecimal(dr["CompanyTotal"]);
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
