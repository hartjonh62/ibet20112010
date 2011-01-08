using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpFinanceCommission
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpFinanceCommission> GetByParentId(Int64 parentid,string fdate,string tdate)
        {
            try
            {
                List<clsRpFinanceCommission> objList = new List<clsRpFinanceCommission>();
                SqlCommand com = new SqlCommand("iBet_tblRpFinanceCommission_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ParentId", parentid);
                com.Parameters.AddWithValue("@fDate", fdate);
                com.Parameters.AddWithValue("@tDate", tdate);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpFinanceCommission obj = new clsRpFinanceCommission();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["AccId"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccId"]);
                    }
                    if (dr["StrAccId"] != DBNull.Value)
                    {
                        obj.StrAccId = Convert.ToString(dr["StrAccId"]);
                    }
                    if (dr["OU5Min"] != DBNull.Value)
                    {
                        obj.OU5Min = (float)Convert.ToDecimal(dr["OU5Min"]);
                    }
                    if (dr["OU15Min"] != DBNull.Value)
                    {
                        obj.OU15Min = (float)Convert.ToDecimal(dr["OU15Min"]);
                    }
                    if (dr["OU30Min"] != DBNull.Value)
                    {
                        obj.OU30Min = (float)Convert.ToDecimal(dr["OU30Min"]);
                    }
                    if (dr["OU45Min"] != DBNull.Value)
                    {
                        obj.OU45Min = (float)Convert.ToDecimal(dr["OU45Min"]);
                    }
                    if (dr["OU60Min"] != DBNull.Value)
                    {
                        obj.OU60Min = (float)Convert.ToDecimal(dr["OU60Min"]);
                    }
                    if (dr["OUEndOfDay"] != DBNull.Value)
                    {
                        obj.OUEndOfDay = (float)Convert.ToDecimal(dr["OUEndOfDay"]);
                    }
                    if (dr["OUTotal"] != DBNull.Value)
                    {
                        obj.OUTotal = (float)Convert.ToDecimal(dr["OUTotal"]);
                    }
                    if (dr["OE5Min"] != DBNull.Value)
                    {
                        obj.OE5Min = (float)Convert.ToDecimal(dr["OE5Min"]);
                    }
                    if (dr["OE15Min"] != DBNull.Value)
                    {
                        obj.OE15Min = (float)Convert.ToDecimal(dr["OE15Min"]);
                    }
                    if (dr["OE30Min"] != DBNull.Value)
                    {
                        obj.OE30Min = (float)Convert.ToDecimal(dr["OE30Min"]);
                    }
                    if (dr["OE45Min"] != DBNull.Value)
                    {
                        obj.OE45Min = (float)Convert.ToDecimal(dr["OE45Min"]);
                    }
                    if (dr["OE60Min"] != DBNull.Value)
                    {
                        obj.OE60Min = (float)Convert.ToDecimal(dr["OE60Min"]);
                    }
                    if (dr["OEEndOfDay"] != DBNull.Value)
                    {
                        obj.OEEndOfDay = (float)Convert.ToDecimal(dr["OEEndOfDay"]);
                    }
                    if (dr["OETotal"] != DBNull.Value)
                    {
                        obj.OETotal = (float)Convert.ToDecimal(dr["OETotal"]);
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
