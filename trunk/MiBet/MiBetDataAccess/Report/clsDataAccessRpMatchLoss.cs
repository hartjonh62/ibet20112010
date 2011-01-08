using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpMatchLoss
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpMatchLoss> GetAll(string fdate)
        {
            try
            {
                List<clsRpMatchLoss> objList = new List<clsRpMatchLoss>();
                SqlCommand com = new SqlCommand("iBet_tblRpMatchLoss_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@fDate", fdate);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpMatchLoss obj = new clsRpMatchLoss();
                    if (dr["Id"] != DBNull.Value)
                    {
                        obj.Id = Convert.ToInt32(dr["Id"]);
                    }
                    if (dr["Results"] != DBNull.Value)
                    {
                        obj.Results = Convert.ToString(dr["Results"]);
                    }
                    if (dr["YEntered"] != DBNull.Value)
                    {
                        obj.YEntered = Convert.ToString(dr["YEntered"]);
                    }
                    if (dr["YNonEntered"] != DBNull.Value)
                    {
                        obj.YNonEntered = Convert.ToString(dr["YNonEntered"]);
                    }
                    if (dr["Entered"] != DBNull.Value)
                    {
                        obj.Entered = Convert.ToString(dr["Entered"]);
                    }
                    if (dr["NonEntered"] != DBNull.Value)
                    {
                        obj.NonEntered = Convert.ToString(dr["NonEntered"]);
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
