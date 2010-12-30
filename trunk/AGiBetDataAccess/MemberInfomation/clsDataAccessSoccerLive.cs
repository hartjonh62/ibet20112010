using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace AGiBetDataAccess.MemberInfomation
{
    /// <summary>
    /// Thao tác dữ liệu trên bảng tblSeccerLive
    /// Create By ThiepND
    /// 28/12/2010
    /// </summary>
    public class clsDataAccessSoccerLive
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Trả về tất cả các seccerLive
        /// </summary>
        /// <returns>List</returns>
        public List<clsSoccerLive> getAll()
        {
            try
            {
                List<clsSoccerLive> objList = new List<clsSoccerLive>();
                SqlCommand com = new SqlCommand("iBet_tblSoccerLive_Gets", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsSoccerLive obj = new clsSoccerLive();
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
        /// Trả về theo ID
        /// </summary>
        /// <param name="id">ID cần tìm</param>
        /// <returns>đối tượng SoccerLive</returns>
        public clsSoccerLive getById(int id)
        {
            try
            {
                clsSoccerLive obj = new clsSoccerLive();
                SqlCommand com = new SqlCommand("iBet_tblSoccerLive_Get", conn.GetConn());
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
        /// Trả về theo Account ID
        /// </summary>
        /// <param name="accid">ID Account cần tìm</param>
        /// <returns>Đối tượng SoccerLive</returns>
        public clsSoccerLive getByAccId(Int64 accid)
        {
            try
            {
                clsSoccerLive obj = new clsSoccerLive();
                SqlCommand com = new SqlCommand("iBet_tblSoccerLive_GetByAccId", conn.GetConn());
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
        /// Thêm mới một SoccerLive
        /// </summary>
        /// <param name="accid">Account ID</param>
        /// <param name="handi_ng">Handi_NG</param>
        /// <param name="over_under">Over_Under</param>
        /// <param name="firthandicap">Firt Handicap</param>
        /// <param name="firtoverunder">Firt Over Under</param>
        public void Insert(Int64 accid,decimal handi_ng, decimal over_under, decimal firthandicap,decimal firtoverunder)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerLive_Insert", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@Id", 0);
                com.Parameters.AddWithValue("@Handi_NG", handi_ng);
                com.Parameters.AddWithValue("@Over_Under", over_under);
                com.Parameters.AddWithValue("@FirtHandicap", firthandicap);
                com.Parameters.AddWithValue("@FirtOverUnder", firtoverunder);
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
        /// <summary>
        /// Sửa một SoccerLive
        /// </summary>
        /// <param name="id">ID soccerlive cần sửa</param>
        /// <param name="accid">Account ID</param>
        /// <param name="handi_ng">Handi_NG</param>
        /// <param name="over_under">Over_Under</param>
        /// <param name="firthandicap">Firt Handicap</param>
        /// <param name="firtoverunder">Firt Over Under</param>
        public void Update(int id,Int64 accid, decimal handi_ng, decimal over_under, decimal firthandicap, decimal firtoverunder)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerLive_Insert", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@Handi_NG", handi_ng);
                com.Parameters.AddWithValue("@Over_Under", over_under);
                com.Parameters.AddWithValue("@FirtHandicap", firthandicap);
                com.Parameters.AddWithValue("@FirtOverUnder", firtoverunder);
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
        /// <summary>
        /// Xóa một soccerlive
        /// </summary>
        /// <param name="id">Id của soccerlive cần xóa</param>
        public void Delete(int id)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerLive_Delete", conn.GetConn());
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
