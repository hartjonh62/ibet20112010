using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace AGiBetDataAccess.MemberInfomation
{
    /// <summary>
    /// Thao tác dữ liệu trên bảng tblSoccerDeadBall
    /// Create By ThiepND
    /// 28/12/2010
    /// </summary>
    public class clsDataAccessUserCommission
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các tblSoccerDeadBall
        /// </summary>
        /// <returns>List</returns>
        public List<clsUserCommission> getAll()
        {
            try
            {
                List<clsUserCommission> objList = new List<clsUserCommission>();
                SqlCommand com = new SqlCommand("iBet_tblUserCommission_Gets", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsUserCommission obj = new clsUserCommission();
                    if (dr["ID"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["ID"]);
                    }
                    if (dr["AccID"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccID"]);
                    }
                    if (dr["CommA"] != DBNull.Value)
                    {
                        obj.CommA = Convert.ToDecimal(dr["CommA"]);
                    }
                    if (dr["CommB"] != DBNull.Value)
                    {
                        obj.CommB = Convert.ToDecimal(dr["CommB"]);
                    }
                    if (dr["CommC"] != DBNull.Value)
                    {
                        obj.CommC = Convert.ToDecimal(dr["CommC"]);
                    }
                    if (dr["CommD"] != DBNull.Value)
                    {
                        obj.CommD = Convert.ToDecimal(dr["CommD"]);
                    }
                    if (dr["Comm1x2"] != DBNull.Value)
                    {
                        obj.Comm1x2 = Convert.ToDecimal(dr["Comm1x2"]);
                    }
                    if (dr["CommOther"] != DBNull.Value)
                    {
                        obj.CommOther = Convert.ToDecimal(dr["CommOther"]);
                    }
                    if (dr["CreateBy"] != DBNull.Value)
                    {
                        obj.CreateBy = Convert.ToInt64(dr["CreateBy"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyBy"] != DBNull.Value)
                    {
                        obj.ModifyBy = Convert.ToInt64(dr["ModifyBy"]);
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
            finally
            {
                conn.CloseConn();
            }
        }
        public clsUserCommission getById(int id)
        {
            try
            {
                clsUserCommission obj = new clsUserCommission();
                SqlCommand com = new SqlCommand("iBet_tblUserCommission_Get", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    if (dr["ID"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["ID"]);
                    }
                    if (dr["AccID"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccID"]);
                    }
                    if (dr["CommA"] != DBNull.Value)
                    {
                        obj.CommA = Convert.ToDecimal(dr["CommA"]);
                    }
                    if (dr["CommB"] != DBNull.Value)
                    {
                        obj.CommB = Convert.ToDecimal(dr["CommB"]);
                    }
                    if (dr["CommC"] != DBNull.Value)
                    {
                        obj.CommC = Convert.ToDecimal(dr["CommC"]);
                    }
                    if (dr["CommD"] != DBNull.Value)
                    {
                        obj.CommD = Convert.ToDecimal(dr["CommD"]);
                    }
                    if (dr["Comm1x2"] != DBNull.Value)
                    {
                        obj.Comm1x2 = Convert.ToDecimal(dr["Comm1x2"]);
                    }
                    if (dr["CommOther"] != DBNull.Value)
                    {
                        obj.CommOther = Convert.ToDecimal(dr["CommOther"]);
                    }
                    if (dr["CreateBy"] != DBNull.Value)
                    {
                        obj.CreateBy = Convert.ToInt64(dr["CreateBy"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyBy"] != DBNull.Value)
                    {
                        obj.ModifyBy = Convert.ToInt64(dr["ModifyBy"]);
                    }
                    if (dr["ModifyDate"] != DBNull.Value)
                    {
                        obj.ModifyDate = Convert.ToDateTime(dr["ModifyDate"]);
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
        public clsUserCommission getByAccId(Int64 accid)
        {
            try
            {
                clsUserCommission obj = new clsUserCommission();
                SqlCommand com = new SqlCommand("iBet_tblUserCommission_GetByAccId", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    if (dr["ID"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["ID"]);
                    }
                    if (dr["AccID"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccID"]);
                    }
                    if (dr["CommA"] != DBNull.Value)
                    {
                        obj.CommA = Convert.ToDecimal(dr["CommA"]);
                    }
                    if (dr["CommB"] != DBNull.Value)
                    {
                        obj.CommB = Convert.ToDecimal(dr["CommB"]);
                    }
                    if (dr["CommC"] != DBNull.Value)
                    {
                        obj.CommC = Convert.ToDecimal(dr["CommC"]);
                    }
                    if (dr["CommD"] != DBNull.Value)
                    {
                        obj.CommD = Convert.ToDecimal(dr["CommD"]);
                    }
                    if (dr["Comm1x2"] != DBNull.Value)
                    {
                        obj.Comm1x2 = Convert.ToDecimal(dr["Comm1x2"]);
                    }
                    if (dr["CommOther"] != DBNull.Value)
                    {
                        obj.CommOther = Convert.ToDecimal(dr["CommOther"]);
                    }
                    if (dr["CreateBy"] != DBNull.Value)
                    {
                        obj.CreateBy = Convert.ToInt64(dr["CreateBy"]);
                    }
                    if (dr["CreateDate"] != DBNull.Value)
                    {
                        obj.CreateDate = Convert.ToDateTime(dr["CreateDate"]);
                    }
                    if (dr["ModifyBy"] != DBNull.Value)
                    {
                        obj.ModifyBy = Convert.ToInt64(dr["ModifyBy"]);
                    }
                    if (dr["ModifyDate"] != DBNull.Value)
                    {
                        obj.ModifyDate = Convert.ToDateTime(dr["ModifyDate"]);
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
        public void Insert(Int64 accid, decimal comma, decimal commb, decimal commc, decimal commd,
            decimal comm1x2, decimal commother, Int64 createby,DateTime createdate,Int64 modifyby,DateTime modifydate)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblUserCommission_Insert", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@Id", 0);
                com.Parameters.AddWithValue("@CommA", comma);
                com.Parameters.AddWithValue("@CommB", commb);
                com.Parameters.AddWithValue("@CommC", commc);
                com.Parameters.AddWithValue("@CommD", commd);
                com.Parameters.AddWithValue("@Comm1x2", comm1x2);
                com.Parameters.AddWithValue("@CommOther", commother);
                com.Parameters.AddWithValue("@CreateBy", createby);
                com.Parameters.AddWithValue("@CreateDate", createdate);
                com.Parameters.AddWithValue("@ModifyBy", modifyby);
                com.Parameters.AddWithValue("@ModifyDate", modifydate);
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
        public void Update(int id, Int64 accid, decimal comma, decimal commb, decimal commc, decimal commd,
            decimal comm1x2, decimal commother, Int64 createby, DateTime createdate, Int64 modifyby, DateTime modifydate)
        {
            try
            {
                SqlCommand com = new SqlCommand("iBet_tblUserCommission_Update", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@Id", id);
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@CommA", comma);
                com.Parameters.AddWithValue("@CommB", commb);
                com.Parameters.AddWithValue("@CommC", commc);
                com.Parameters.AddWithValue("@CommD", commd);
                com.Parameters.AddWithValue("@Comm1x2", comm1x2);
                com.Parameters.AddWithValue("@CommOther", commother);
                com.Parameters.AddWithValue("@CreateBy", createby);
                com.Parameters.AddWithValue("@CreateDate", createdate);
                com.Parameters.AddWithValue("@ModifyBy", modifyby);
                com.Parameters.AddWithValue("@ModifyDate", modifydate);
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
                SqlCommand com = new SqlCommand("iBet_tblUserCommission_Update", conn.GetConn());
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
