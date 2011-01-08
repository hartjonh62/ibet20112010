using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;
namespace MiBetDataAccess.Report
{
    public class clsDataAccessResults
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsResults> GetAll(string date,int eventid,int leagueid)
        {
            try
            {
                List<clsResults> objList = new List<clsResults>();
                SqlCommand com = new SqlCommand("iBet_tblResult_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Date", date);
                com.Parameters.AddWithValue("@EventId", eventid);
                com.Parameters.AddWithValue("@LeagueId", leagueid);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsResults obj = new clsResults();
                    if (dr["ResultId"] != DBNull.Value)
                    {
                        obj.ResultId = Convert.ToInt64(dr["ResultId"]);
                    }
                    if (dr["AwayName"] != DBNull.Value)
                    {
                        obj.AwayName = Convert.ToString(dr["AwayName"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["EventId"] != DBNull.Value)
                    {
                        obj.EventId = Convert.ToInt32(dr["EventId"]);
                    }
                    if (dr["EventName"] != DBNull.Value)
                    {
                        obj.EventName = Convert.ToString(dr["EventName"]);
                    }
                    if (dr["FinalAway"] != DBNull.Value)
                    {
                        obj.FinalAway = Convert.ToString(dr["FinalAway"]);
                    }
                    if (dr["FinalHome"] != DBNull.Value)
                    {
                        obj.FinalHome = Convert.ToString(dr["FinalHome"]);
                    }
                    if (dr["FirstHaflAway"] != DBNull.Value)
                    {
                        obj.FirstHafAway = Convert.ToString(dr["FirstHaflAway"]);
                    }
                    if (dr["FirstHaflHome"] != DBNull.Value)
                    {
                        obj.FirstHaflHome = Convert.ToString(dr["FirstHaflHome"]);
                    }
                    if (dr["HomeName"] != DBNull.Value)
                    {
                        obj.HomeName = Convert.ToString(dr["HomeName"]);
                    }
                    if (dr["KickoffTime"] != DBNull.Value)
                    {
                        obj.KickoffTime = Convert.ToDateTime(dr["KickoffTime"]);
                    }
                    if (dr["LeagueId"] != DBNull.Value)
                    {
                        obj.LeagueId = Convert.ToInt32(dr["LeagueId"]);
                    }
                    if (dr["LeagueName"] != DBNull.Value)
                    {
                        obj.LeagueName = Convert.ToString(dr["LeagueName"]);
                    }
                    if (dr["MatchId"] != DBNull.Value)
                    {
                        obj.MatchId = Convert.ToInt64(dr["MatchId"]);
                    }
                    if (dr["Status"] != DBNull.Value)
                    {
                        obj.Status = Convert.ToString(dr["Status"]);
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
