using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpWinLostDetail
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpWinLostDetail> GetByParentId(Int64 perentid,string fdate,string tdate)
        {
            try
            {
                List<clsRpWinLostDetail> objList = new List<clsRpWinLostDetail>();
                SqlCommand com = new SqlCommand("iBet_tblRpWinLostDetail_GetsByParentId", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ParentId", perentid);
                com.Parameters.AddWithValue("@fDate", fdate);
                com.Parameters.AddWithValue("@tDate", tdate);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpWinLostDetail obj = new clsRpWinLostDetail();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["AccId"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccId"]);
                    }
                    if (dr["StrAccId"] != DBNull.Value)
                    {
                        obj.StrAccId = Convert.ToString(dr["StrAccId"]);
                    }
                    if (dr["Turnover"] != DBNull.Value)
                    {
                        obj.Turnover = Convert.ToDecimal(dr["Turnover"]);
                    }
                    if (dr["GrossComm"] != DBNull.Value)
                    {
                        obj.GrossComm = Convert.ToDecimal(dr["GrossComm"]);
                    }
                    if (dr["MeWinLoss"] != DBNull.Value)
                    {
                        obj.MeWinLoss = Convert.ToDecimal(dr["MeWinLoss"]);
                    }
                    if (dr["MeComm"] != DBNull.Value)
                    {
                        obj.MeComm = Convert.ToDecimal(dr["MeComm"]);
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
                    if (dr["MaWinloss"] != DBNull.Value)
                    {
                        obj.MaWinloss = Convert.ToDecimal(dr["MaWinloss"]);
                    }
                    if (dr["MaComm"] != DBNull.Value)
                    {
                        obj.MaComm = Convert.ToDecimal(dr["MaComm"]);
                    }
                    if (dr["MaTotal"] != DBNull.Value)
                    {
                        obj.MaTotal = Convert.ToDecimal(dr["MaTotal"]);
                    }
                    if (dr["GmWinloss"] != DBNull.Value)
                    {
                        obj.GmWinloss = Convert.ToDecimal(dr["GmWinloss"]);
                    }
                    if (dr["GmComm"] != DBNull.Value)
                    {
                        obj.GmComm = Convert.ToDecimal(dr["GmComm"]);
                    }
                    if (dr["GmTotal"] != DBNull.Value)
                    {
                        obj.GmTotal = Convert.ToDecimal(dr["GmTotal"]);
                    }
                    if (dr["SuWinloss"] != DBNull.Value)
                    {
                        obj.SuWinloss = Convert.ToDecimal(dr["SuWinloss"]);
                    }
                    if (dr["SuComm"] != DBNull.Value)
                    {
                        obj.SuComm = Convert.ToDecimal(dr["SuComm"]);
                    }
                    if (dr["SuTotal"] != DBNull.Value)
                    {
                        obj.SuTotal = Convert.ToDecimal(dr["SuTotal"]);
                    }
                    if (dr["Company"] != DBNull.Value)
                    {
                        obj.Company = Convert.ToDecimal(dr["Company"]);
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
