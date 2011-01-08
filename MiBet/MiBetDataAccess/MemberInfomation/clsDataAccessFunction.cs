using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace MiBetDataAccess.MemberInfomation
{
    /// <summary>
    /// Thao tác dữ liệu trên bảng tblFunction
    /// Create By ThiepND
    /// 28/12/2010
    /// </summary>
    public class clsDataAccessFunction
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các Function
        /// </summary>
        /// <returns>List</returns>
        public List<clsFunction> getAll()
        {
            try
            {
                List<clsFunction> objList = new List<clsFunction>();
                SqlCommand com = new SqlCommand("iBet_tblFunction_Gets", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsFunction obj = new clsFunction();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["Id"]);
                    }
                    if (dr["ModileId"] != DBNull.Value)
                    {
                        obj.ModuleId = Convert.ToInt32(dr["ModileId"]);
                    }
                    if (dr["FunctionName"] != DBNull.Value)
                    {
                        obj.FunctionName = Convert.ToString(dr["FunctionName"]);
                    }
                    if (dr["FunctionTitle"] != DBNull.Value)
                    {
                        obj.FunctionTitle = Convert.ToString(dr["FunctionTitle"]);
                    }
                    if (dr["FunctionDescription"] != DBNull.Value)
                    {
                        obj.FunctionDescription = Convert.ToString(dr["FunctionDescription"]);
                    }
                    if (dr["FuncrionURL"] != DBNull.Value)
                    {
                        obj.FuncrionURL = Convert.ToString(dr["FuncrionURL"]);
                    }
                    if (dr["IsVisible"] != DBNull.Value)
                    {
                        obj.IsVisible = Convert.ToBoolean(dr["IsVisible"]);
                    }
                    if (dr["Priority"] != DBNull.Value)
                    {
                        obj.Priority = Convert.ToInt32(dr["Priority"]);
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
        public List<clsFunction> getByModuleId(int modileid)
        {
            try
            {
                List<clsFunction> objList = new List<clsFunction>();
                SqlCommand com = new SqlCommand("iBet_tblFunction_GetByModuleId", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ModileId", modileid);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsFunction obj = new clsFunction();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["Id"]);
                    }
                    if (dr["ModileId"] != DBNull.Value)
                    {
                        obj.ModuleId = Convert.ToInt32(dr["ModileId"]);
                    }
                    if (dr["FunctionName"] != DBNull.Value)
                    {
                        obj.FunctionName = Convert.ToString(dr["FunctionName"]);
                    }
                    if (dr["FunctionTitle"] != DBNull.Value)
                    {
                        obj.FunctionTitle = Convert.ToString(dr["FunctionTitle"]);
                    }
                    if (dr["FunctionDescription"] != DBNull.Value)
                    {
                        obj.FunctionDescription = Convert.ToString(dr["FunctionDescription"]);
                    }
                    if (dr["FuncrionURL"] != DBNull.Value)
                    {
                        obj.FuncrionURL = Convert.ToString(dr["FuncrionURL"]);
                    }
                    if (dr["IsVisible"] != DBNull.Value)
                    {
                        obj.IsVisible = Convert.ToBoolean(dr["IsVisible"]);
                    }
                    if (dr["Priority"] != DBNull.Value)
                    {
                        obj.Priority = Convert.ToInt32(dr["Priority"]);
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
        public clsFunction getById(int id)
        {
            try
            {
                clsFunction obj = new clsFunction();
                SqlCommand com = new SqlCommand("iBet_tblFunction_Get", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["Id"]);
                    }
                    if (dr["ModileId"] != DBNull.Value)
                    {
                        obj.ModuleId = Convert.ToInt32(dr["ModileId"]);
                    }
                    if (dr["FunctionName"] != DBNull.Value)
                    {
                        obj.FunctionName = Convert.ToString(dr["FunctionName"]);
                    }
                    if (dr["FunctionTitle"] != DBNull.Value)
                    {
                        obj.FunctionTitle = Convert.ToString(dr["FunctionTitle"]);
                    }
                    if (dr["FunctionDescription"] != DBNull.Value)
                    {
                        obj.FunctionDescription = Convert.ToString(dr["FunctionDescription"]);
                    }
                    if (dr["FuncrionURL"] != DBNull.Value)
                    {
                        obj.FuncrionURL = Convert.ToString(dr["FuncrionURL"]);
                    }
                    if (dr["IsVisible"] != DBNull.Value)
                    {
                        obj.IsVisible = Convert.ToBoolean(dr["IsVisible"]);
                    }
                    if (dr["Priority"] != DBNull.Value)
                    {
                        obj.Priority = Convert.ToInt32(dr["Priority"]);
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

    }
}
