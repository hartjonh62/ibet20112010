using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;
namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpCancelledBet
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpCancelledBet> GetAll(Int64 parentid)
        {
            try
            {
                List<clsRpCancelledBet> objList = new List<clsRpCancelledBet>();
                SqlCommand com = new SqlCommand("iBet_tblRpCancelledBet_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ParentId", parentid);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpCancelledBet obj = new clsRpCancelledBet();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["Id"]);
                    }
                    if (dr["AwayName"] != DBNull.Value)
                    {
                        obj.AwayName = Convert.ToString(dr["AwayName"]);
                    }
                    if (dr["BetType"] != DBNull.Value)
                    {
                        obj.Bettype = Convert.ToString(dr["BetType"]);
                    }
                    if (dr["HomeName"] != DBNull.Value)
                    {
                        obj.HomeName = Convert.ToString(dr["HomeName"]);
                    }
                    if (dr["LeaguaName"] != DBNull.Value)
                    {
                        obj.LeaguaName = Convert.ToString(dr["LeaguaName"]);
                    }
                    if (dr["StrAcc"] != DBNull.Value)
                    {
                        obj.Member = Convert.ToString(dr["StrAcc"]);
                    }
                    if (dr["Status"] != DBNull.Value)
                    {
                        obj.Status = Convert.ToString(dr["Status"]);
                    }
                    if (dr["TransTime"] != DBNull.Value)
                    {
                        obj.Transtime = Convert.ToString(dr["TransTime"]);
                    }
                    if (dr["Odds"] != DBNull.Value)
                    {
                        obj.Odds = Convert.ToString(dr["Odds"]);
                    }
                    if (dr["Stake"] != DBNull.Value)
                    {
                        obj.Stake = Convert.ToString(dr["Stake"]);
                    }
                    if (dr["Choice"] != DBNull.Value)
                    {
                        obj.Choice = Convert.ToString(dr["Choice"]);
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
