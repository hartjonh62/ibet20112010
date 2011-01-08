using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace MiBetDataAccess.MemberInfomation
{
    /// <summary>
    /// Thao tác dữ liệu trên bảng tblSoccerDeadBall
    /// Create By ThiepND
    /// 28/12/2010
    /// </summary>
    public class clsDataAccessSoccerDeadBall
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các SoccerBetSetting
        /// </summary>
        /// <returns>List</returns>
        public List<clsSoccerDeadBall> getAll()
        {
            try
            {
                List<clsSoccerDeadBall> objList = new List<clsSoccerDeadBall>();
                SqlCommand com = new SqlCommand("iBet_tblSoccerDeadBall_Gets", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsSoccerDeadBall obj = new clsSoccerDeadBall();
                    if (dr["ID"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["ID"]);
                    }
                    if (dr["AccID"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccID"]);
                    }
                    if (dr["Handi_NG"] != DBNull.Value)
                    {
                        obj.Handi_NG = Convert.ToDecimal(dr["Handi_NG"]);
                    }
                    if (dr["Over_Under"] != DBNull.Value)
                    {
                        obj.Over_Under = Convert.ToDecimal(dr["Over_Under"]);
                    }
                    if (dr["FirtHandicap"] != DBNull.Value)
                    {
                        obj.FirtHandicap = Convert.ToDecimal(dr["FirtHandicap"]);
                    }
                    if (dr["FirtOverUnder"] != DBNull.Value)
                    {
                        obj.FirtOverUnder = Convert.ToDecimal(dr["FirtOverUnder"]);
                    }
                    if (dr["Over_Event"] != DBNull.Value)
                    {
                        obj.Over_Event = Convert.ToDecimal(dr["Over_Event"]);
                    }
                    if (dr["OneXTwo"] != DBNull.Value)
                    {
                        obj.OneXTwo = Convert.ToDecimal(dr["OneXTwo"]);
                    }
                    if (dr["CorrectScore"] != DBNull.Value)
                    {
                        obj.CorrectScore = Convert.ToDecimal(dr["CorrectScore"]);
                    }
                    if (dr["TotalGoal"] != DBNull.Value)
                    {
                        obj.TotalGoal = Convert.ToDecimal(dr["TotalGoal"]);
                    }
                    if (dr["MixParlay"] != DBNull.Value)
                    {
                        obj.MixParlay = Convert.ToDecimal(dr["MixParlay"]);
                    }
                    if (dr["Outright"] != DBNull.Value)
                    {
                        obj.Outright = Convert.ToDecimal(dr["Outright"]);
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
        public clsSoccerDeadBall getById(int id)
        {
            try
            {
                clsSoccerDeadBall obj = new clsSoccerDeadBall();
                SqlCommand com = new SqlCommand("iBet_tblSoccerDeadBall_Get", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["ID"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["ID"]);
                    }
                    if (dr["AccID"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccID"]);
                    }
                    if (dr["Handi_NG"] != DBNull.Value)
                    {
                        obj.Handi_NG = Convert.ToDecimal(dr["Handi_NG"]);
                    }
                    if (dr["Over_Under"] != DBNull.Value)
                    {
                        obj.Over_Under = Convert.ToDecimal(dr["Over_Under"]);
                    }
                    if (dr["FirtHandicap"] != DBNull.Value)
                    {
                        obj.FirtHandicap = Convert.ToDecimal(dr["FirtHandicap"]);
                    }
                    if (dr["FirtOverUnder"] != DBNull.Value)
                    {
                        obj.FirtOverUnder = Convert.ToDecimal(dr["FirtOverUnder"]);
                    }
                    if (dr["Over_Event"] != DBNull.Value)
                    {
                        obj.Over_Event = Convert.ToDecimal(dr["Over_Event"]);
                    }
                    if (dr["OneXTwo"] != DBNull.Value)
                    {
                        obj.OneXTwo = Convert.ToDecimal(dr["OneXTwo"]);
                    }
                    if (dr["CorrectScore"] != DBNull.Value)
                    {
                        obj.CorrectScore = Convert.ToDecimal(dr["CorrectScore"]);
                    }
                    if (dr["TotalGoal"] != DBNull.Value)
                    {
                        obj.TotalGoal = Convert.ToDecimal(dr["TotalGoal"]);
                    }
                    if (dr["MixParlay"] != DBNull.Value)
                    {
                        obj.MixParlay = Convert.ToDecimal(dr["MixParlay"]);
                    }
                    if (dr["Outright"] != DBNull.Value)
                    {
                        obj.Outright = Convert.ToDecimal(dr["Outright"]);
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
        public clsSoccerDeadBall getByAccId(Int64 accid)
        {
            try
            {
                clsSoccerDeadBall obj = new clsSoccerDeadBall();
                SqlCommand com = new SqlCommand("iBet_tblSoccerDeadBall_GetByAccId", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["ID"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["ID"]);
                    }
                    if (dr["AccID"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccID"]);
                    }
                    if (dr["Handi_NG"] != DBNull.Value)
                    {
                        obj.Handi_NG = Convert.ToDecimal(dr["Handi_NG"]);
                    }
                    if (dr["Over_Under"] != DBNull.Value)
                    {
                        obj.Over_Under = Convert.ToDecimal(dr["Over_Under"]);
                    }
                    if (dr["FirtHandicap"] != DBNull.Value)
                    {
                        obj.FirtHandicap = Convert.ToDecimal(dr["FirtHandicap"]);
                    }
                    if (dr["FirtOverUnder"] != DBNull.Value)
                    {
                        obj.FirtOverUnder = Convert.ToDecimal(dr["FirtOverUnder"]);
                    }
                    if (dr["Over_Event"] != DBNull.Value)
                    {
                        obj.Over_Event = Convert.ToDecimal(dr["Over_Event"]);
                    }
                    if (dr["OneXTwo"] != DBNull.Value)
                    {
                        obj.OneXTwo = Convert.ToDecimal(dr["OneXTwo"]);
                    }
                    if (dr["CorrectScore"] != DBNull.Value)
                    {
                        obj.CorrectScore = Convert.ToDecimal(dr["CorrectScore"]);
                    }
                    if (dr["TotalGoal"] != DBNull.Value)
                    {
                        obj.TotalGoal = Convert.ToDecimal(dr["TotalGoal"]);
                    }
                    if (dr["MixParlay"] != DBNull.Value)
                    {
                        obj.MixParlay = Convert.ToDecimal(dr["MixParlay"]);
                    }
                    if (dr["Outright"] != DBNull.Value)
                    {
                        obj.Outright = Convert.ToDecimal(dr["Outright"]);
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
        public void Insert(Int64 accid, decimal handi_ng, decimal over_under, decimal firthandicap,decimal firtoverunder,
            decimal over_event, decimal onextwo,decimal correctscore,decimal totalgoal, decimal mixparlay, decimal outright)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerDeadBall_Insert", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@Id", 0);
                com.Parameters.AddWithValue("@Handi_NG", handi_ng);
                com.Parameters.AddWithValue("@Over_Under", over_under);
                com.Parameters.AddWithValue("@FirtHandicap", firthandicap);
                com.Parameters.AddWithValue("@FirtOverUnder", firtoverunder);
                com.Parameters.AddWithValue("@Over_Event", over_event);
                com.Parameters.AddWithValue("@OneXTwo", onextwo);
                com.Parameters.AddWithValue("@CorrectScore", correctscore);
                com.Parameters.AddWithValue("@TotalGoal", totalgoal);
                com.Parameters.AddWithValue("@MixParlay", mixparlay);
                com.Parameters.AddWithValue("@Outright", outright);
                conn.OpenConn();
                com.ExecuteNonQuery();
                SqlDataReader dr = com.ExecuteReader();
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
        public void Update(int id, Int64 accid, decimal handi_ng, decimal over_under, decimal firthandicap, decimal firtoverunder,
            decimal over_event, decimal onextwo, decimal correctscore, decimal totalgoal, decimal mixparlay, decimal outright)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerDeadBall_Update", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@Handi_NG", handi_ng);
                com.Parameters.AddWithValue("@Over_Under", over_under);
                com.Parameters.AddWithValue("@FirtHandicap", firthandicap);
                com.Parameters.AddWithValue("@FirtOverUnder", firtoverunder);
                com.Parameters.AddWithValue("@Over_Event", over_event);
                com.Parameters.AddWithValue("@OneXTwo", onextwo);
                com.Parameters.AddWithValue("@CorrectScore", correctscore);
                com.Parameters.AddWithValue("@TotalGoal", totalgoal);
                com.Parameters.AddWithValue("@MixParlay", mixparlay);
                com.Parameters.AddWithValue("@Outright", outright);
                conn.OpenConn();
                com.ExecuteNonQuery();
                SqlDataReader dr = com.ExecuteReader();
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
        public void Delete(int id)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerDeadBall_Delete", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                conn.OpenConn();
                com.ExecuteNonQuery();
                SqlDataReader dr = com.ExecuteReader();
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
