using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpOutstanding
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpOutstanding> GetByParentId(Int64 perentid)
        {
            try
            {
                List<clsRpOutstanding> objList = new List<clsRpOutstanding>();
                SqlCommand com = new SqlCommand("iBet_tblRpOutstandings_GetsByParentId", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ParentId", perentid);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpOutstanding obj = new clsRpOutstanding();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt64(dr["Id"]);
                    }
                    if (dr["AccId"] != DBNull.Value)
                    {
                        obj.AccId = Convert.ToInt64(dr["AccId"]);
                    }
                    if (dr["StrAcc"] != DBNull.Value)
                    {
                        obj.StrAcc = Convert.ToString(dr["StrAcc"]);
                    }
                    if (dr["SBOutstanding"] != DBNull.Value)
                    {
                        obj.SBOutstanding = (float)Convert.ToDecimal(dr["SBOutstanding"]);
                    }
                    if (dr["SBPosition"] != DBNull.Value)
                    {
                        obj.SBPosition = (float)Convert.ToDecimal(dr["SBPosition"]);
                    }
                    if (dr["CasinoOutstanding"] != DBNull.Value)
                    {
                        obj.CasinoOutstanding = (float)Convert.ToDecimal(dr["CasinoOutstanding"]);
                    }
                    if (dr["CasinoTransfer"] != DBNull.Value)
                    {
                        obj.CasinoTranfer = (float)Convert.ToDecimal(dr["CasinoTransfer"]);
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
