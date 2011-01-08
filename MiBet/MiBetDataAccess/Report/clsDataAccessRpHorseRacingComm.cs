using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessRpHorseRacingComm
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsRpHorseRacingComm> GetByParentId(Int64 parentid,string fdate,string tdate)
        {
            try
            {
                List<clsRpHorseRacingComm> objList = new List<clsRpHorseRacingComm>();
                SqlCommand com = new SqlCommand("iBet_tblRpHorseRacingComm_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@ParentId", parentid);
                com.Parameters.AddWithValue("@fDate", fdate);
                com.Parameters.AddWithValue("@tDate", tdate);
                conn.OpenConn();
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsRpHorseRacingComm obj = new clsRpHorseRacingComm();
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
                    if (dr["Win"] != DBNull.Value)
                    {
                        obj.Win = (float)Convert.ToDecimal(dr["Win"]);
                    }
                    if (dr["Place"] != DBNull.Value)
                    {
                        obj.Place = (float)Convert.ToDecimal(dr["Place"]);
                    }
                    if (dr["WinPlace"] != DBNull.Value)
                    {
                        obj.WinPlace = (float)Convert.ToDecimal(dr["WinPlace"]);
                    }
                    if (dr["Total"] != DBNull.Value)
                    {
                        obj.Total = (float)Convert.ToDecimal(dr["Total"]);
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
