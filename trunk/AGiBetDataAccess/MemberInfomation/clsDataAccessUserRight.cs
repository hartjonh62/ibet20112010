using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using AGiBetCommon.MemberInformation;
using System.Data.SqlClient;

namespace AGiBetDataAccess.MemberInfomation
{

    /// <summary>
    /// Thao tác dữ liệu trên bảng tblUserRight
    /// Create By ThiepND
    /// 28/12/2010
    /// </summary>
    public class clsDataAccessUserRight
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        /// <summary>
        /// Danh sách tất cả các tblUserRight
        /// </summary>
        /// <returns>List</returns>
        public List<clsUserRight> getAll()
        {
            try
            {
                List<clsUserRight> objList = new List<clsUserRight>();
                SqlCommand com = new SqlCommand("iBet_tblUserRight_Gets", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsUserRight obj = new clsUserRight();
                    if (dr["UserId"] != DBNull.Value)
                    {
                        obj.UserId = Convert.ToInt64(dr["UserId"]);
                    }
                    if (dr["IntFunctionId"] != DBNull.Value)
                    {
                        obj.IntFunctionId = Convert.ToInt32(dr["IntFunctionId"]);
                    }
                    if (dr["GradeId"] != DBNull.Value)
                    {
                        obj.GradeId = Convert.ToInt32(dr["GradeId"]);
                    }
                    objList.Add(obj);
                }
                return objList;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
    
