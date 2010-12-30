using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace AGiBetDataAccess.MemberInfomation
{
    public class clsDataAccessModule
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các Module
        /// </summary>
        /// <returns>List</returns>
        public List<clsModule> getAll()
        {
            try
            {
                List<clsModule> objList = new List<clsModule>();
                SqlCommand com = new SqlCommand("iBet_tblModule_Gets", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsModule obj = new clsModule();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["Id"]);
                    }
                    if (dr["ModuleName"] != DBNull.Value)
                    {
                        obj.ModuleName = Convert.ToString(dr["ModuleName"]);
                    }
                    if (dr["ModuleTitle"] != DBNull.Value)
                    {
                        obj.ModuleTitle = Convert.ToString(dr["ModuleTitle"]);
                    }
                    if (dr["ModuleDescription"] != DBNull.Value)
                    {
                        obj.ModuleDescription = Convert.ToString(dr["ModuleDescription"]);
                    }
                    if (dr["ModuleURL"] != DBNull.Value)
                    {
                        obj.ModuleURL = Convert.ToString(dr["ModuleURL"]);
                    }
                    if (dr["IsVisible"] != DBNull.Value)
                    {
                        obj.IsVisible = Convert.ToBoolean(dr["IsVisible"]);
                    }
                    if (dr["Priority"] != DBNull.Value)
                    {
                        obj.Priority = Convert.ToInt32(dr["Priority"]);
                    }
                    if (dr["Identifier"] != DBNull.Value)
                    {
                        obj.Identifier = Convert.ToString(dr["Identifier"]);
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
        public clsModule getById(int id)
        {
            try
            {
                clsModule obj = new clsModule();
                SqlCommand com = new SqlCommand("iBet_tblModule_Get", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read())
                {
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["Id"]);
                    }
                    if (dr["ModuleName"] != DBNull.Value)
                    {
                        obj.ModuleName = Convert.ToString(dr["ModuleName"]);
                    }
                    if (dr["ModuleTitle"] != DBNull.Value)
                    {
                        obj.ModuleTitle = Convert.ToString(dr["ModuleTitle"]);
                    }
                    if (dr["ModuleDescription"] != DBNull.Value)
                    {
                        obj.ModuleDescription = Convert.ToString(dr["ModuleDescription"]);
                    }
                    if (dr["ModuleURL"] != DBNull.Value)
                    {
                        obj.ModuleURL = Convert.ToString(dr["ModuleURL"]);
                    }
                    if (dr["IsVisible"] != DBNull.Value)
                    {
                        obj.IsVisible = Convert.ToBoolean(dr["IsVisible"]);
                    }
                    if (dr["Priority"] != DBNull.Value)
                    {
                        obj.Priority = Convert.ToInt32(dr["Priority"]);
                    }
                    if (dr["Identifier"] != DBNull.Value)
                    {
                        obj.Identifier = Convert.ToString(dr["Identifier"]);
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

