using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace MiBetDataAccess.MemberInfomation
{
    /// <summary>
    /// Thao tác dữ liệu trên bảng tblSoccerBetSetting
    /// Create By ThiepND
    /// 28/12/2010
    /// </summary>
    public class clsDataAccessSoccerBetSetting
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các SoccerBetSetting
        /// </summary>
        /// <returns>List</returns>
        public List<clsSoccerBetSetting> getAll()
        {
            try
            {
                List<clsSoccerBetSetting> objList = new List<clsSoccerBetSetting>();
                SqlCommand com = new SqlCommand("iBet_tblSoccerBetSetting_Gets", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsSoccerBetSetting obj = new clsSoccerBetSetting();
                    if (dr["ID"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["ID"]);
                    }
                    if (dr["AccID"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccID"]);
                    }
                    if (dr["Minbet"] != DBNull.Value)
                    {
                        obj.Minbet = Convert.ToDecimal(dr["Minbet"]);
                    }
                    if (dr["Maxbet"] != DBNull.Value)
                    {
                        obj.Maxbet = Convert.ToDecimal(dr["Maxbet"]);
                    }
                    if (dr["MaxPerMath"] != DBNull.Value)
                    {
                        obj.MaxPerMath = Convert.ToDecimal(dr["MaxPerMath"]);
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
        /// Trả về một đối tượng soccerBetSetting theo id
        /// </summary>
        /// <param name="id">ID của SoccerBetSetting muốn tìm</param>
        /// <returns>Đối tượng SoccerBetSetting</returns>
        public clsSoccerBetSetting getById(int id)
        {
            try
            {
                clsSoccerBetSetting obj = new clsSoccerBetSetting();
                SqlCommand com = new SqlCommand("iBet_tblSoccerBetSetting_Get", conn.GetConn());
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
                    if (dr["Minbet"] != DBNull.Value)
                    {
                        obj.Minbet = Convert.ToDecimal(dr["Minbet"]);
                    }
                    if (dr["Maxbet"] != DBNull.Value)
                    {
                        obj.Maxbet = Convert.ToDecimal(dr["Maxbet"]);
                    }
                    if (dr["MaxPerMath"] != DBNull.Value)
                    {
                        obj.MaxPerMath = Convert.ToDecimal(dr["MaxPerMath"]);
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
        /// Trả về một SeccerBetSetting theo AccID
        /// </summary>
        /// <param name="accid">ID Account muốn tìm</param>
        /// <returns>Đối tượng SeccerBetSetting</returns>
        public clsSoccerBetSetting getByAccId(Int64 accid)
        {
            try
            {
                clsSoccerBetSetting obj = new clsSoccerBetSetting();
                SqlCommand com = new SqlCommand("iBet_tblSoccerBetSetting_GetByAccId", conn.GetConn());
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
                    if (dr["Minbet"] != DBNull.Value)
                    {
                        obj.Minbet = Convert.ToDecimal(dr["Minbet"]);
                    }
                    if (dr["Maxbet"] != DBNull.Value)
                    {
                        obj.Maxbet = Convert.ToDecimal(dr["Maxbet"]);
                    }
                    if (dr["MaxPerMatch"] != DBNull.Value)
                    {
                        obj.MaxPerMath = Convert.ToDecimal(dr["MaxPerMatch"]);
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
        /// Thêm mới một SeccerBetSetting
        /// </summary>
        /// <param name="accid">ID Account</param>
        /// <param name="minbet">Min bet</param>
        /// <param name="maxbet">Max bet</param>
        /// <param name="maxpermatch">MaxPerMatch</param>
        public void Insert(Int64 accid, decimal minbet, decimal maxbet, decimal maxpermatch)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerBetSetting_Insert", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@Id", 0);
                com.Parameters.AddWithValue("@Minbet", minbet);
                com.Parameters.AddWithValue("@Maxbet", maxbet);
                com.Parameters.AddWithValue("@MaxPerMatch", maxpermatch);
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
        /// Cập nhật một SeccerBetSetting theo ID
        /// </summary>
        /// <param name="id">ID của đối tương SeccerBetSetting muốn sửa</param>
        /// <param name="accid">Account id</param>
        /// <param name="minbet">Min bet</param>
        /// <param name="maxbet">Max bet</param>
        /// <param name="maxpermatch">MaxPerMatch</param>
        public void Update(int id, Int64 accid, decimal minbet, decimal maxbet, decimal maxpermatch)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerBetSetting_Update", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@Minbet", minbet);
                com.Parameters.AddWithValue("@Maxbet", maxbet);
                com.Parameters.AddWithValue("@MaxPerMatch", maxpermatch);
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
        /// Xóa một đối tượng SeccerBetSetting
        /// </summary>
        /// <param name="id">ID của đối tượng SeccerBetSetting muốn xóa</param>
        public void Delete(int id)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblSoccerBetSetting_Delete", conn.GetConn());
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
