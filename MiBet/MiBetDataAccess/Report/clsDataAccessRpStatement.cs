using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpStatement
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpStatement> GetByAccId(Int64 accid,string fdate,string tdate)
        {
            try
            {
                List<clsRpStatement> objList = new List<clsRpStatement>();
                SqlCommand com = new SqlCommand("iBet_tblRpStatement_GetsByAccId", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@AccId", accid);
                com.Parameters.AddWithValue("@fDate", fdate);
                com.Parameters.AddWithValue("@tDate", tdate);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpStatement obj = new clsRpStatement();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["AccId"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccId"]);
                    }
                    if (dr["Date"] != DBNull.Value)
                    {
                        obj.Date = Convert.ToDateTime(dr["Date"]);
                    }
                    if (dr["Type"] != DBNull.Value)
                    {
                        obj.Type = Convert.ToString(dr["Type"]);
                    }
                    if (dr["Remark"] != DBNull.Value)
                    {
                        obj.Remark = Convert.ToString(dr["Remark"]);
                    }
                    if (dr["TotalAmt"] != DBNull.Value)
                    {
                        obj.TotalAmt = (float)Convert.ToDecimal(dr["TotalAmt"]);
                    }
                    if (dr["Total"] != DBNull.Value)
                    {
                        obj.Total = (float)Convert.ToDecimal(dr["Total"]);
                    }
                    if (dr["Total"] != DBNull.Value)
                    {
                        obj.Total = (float)Convert.ToDecimal(dr["Total"]);
                    }
                    if (dr["ReportDate"] != DBNull.Value)
                    {
                        obj.ReportDate = Convert.ToDateTime(dr["ReportDate"]);
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
