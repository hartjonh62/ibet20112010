using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpMatchWinLoss
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpMatchWinLoss> GetByAccId(Int64 accid,string fdate,string tdate)
        {
            try
            {
                List<clsRpMatchWinLoss> objList = new List<clsRpMatchWinLoss>();
                SqlCommand com = new SqlCommand("iBet_tblRpMatchWinLoss_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@fDate", fdate);
                com.Parameters.AddWithValue("@tDate", tdate);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpMatchWinLoss obj = new clsRpMatchWinLoss();
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
                        obj.MatchId = Convert.ToInt32(dr["MatchId"]);
                    }
                    if (dr["MatchName"] != DBNull.Value)
                    {
                        obj.MatchName = Convert.ToString(dr["MatchName"]);
                    }
                    if (dr["BetType"] != DBNull.Value)
                    {
                        obj.BetType = Convert.ToString(dr["BetType"]);
                    }
                    if (dr["GrossComm"] != DBNull.Value)
                    {
                        obj.GrossComm = Convert.ToDecimal(dr["GrossComm"]);
                    }
                    if (dr["Comm"] != DBNull.Value)
                    {
                        obj.Comm = Convert.ToDecimal(dr["Comm"]);
                    }
                    if (dr["PositionTaking"] != DBNull.Value)
                    {
                        obj.PasitionTaking = Convert.ToDecimal(dr["PositionTaking"]);
                    }
                    if (dr["Total"] != DBNull.Value)
                    {
                        obj.Total = Convert.ToDecimal(dr["Total"]);
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
