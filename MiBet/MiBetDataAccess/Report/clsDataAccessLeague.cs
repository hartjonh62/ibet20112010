using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MiBetCommon.Report;
using System.Data.SqlClient;

namespace MiBetDataAccess.Report
{
    public class clsDataAccessLeague
    {
        clsDataAccessConnection conn = new clsDataAccessConnection();
        public List<clsLeague> GetAll()
        {
            try
            {
                List<clsLeague> objList = new List<clsLeague>();
                SqlCommand com = new SqlCommand("iBet_tblLeague_GetsAll", conn.GetConn());
                com.CommandType = System.Data.CommandType.StoredProcedure;
                conn.OpenConn();
                clsLeague obj1 = new clsLeague();
                obj1.LeagueId = 0;
                obj1.LeagueName = "*..::* Show All Leagues  *::..*";
                objList.Add(obj1);
                SqlDataReader dr = com.ExecuteReader();
                while (dr.Read())
                {
                    clsLeague obj = new clsLeague();
                    if (dr["LeaguaId"] != DBNull.Value)
                    {
                        obj.LeagueId = Convert.ToInt32(dr["LeaguaId"]);
                    }
                    if (dr["LeaguaName"] != DBNull.Value)
                    {
                        obj.LeagueName = Convert.ToString(dr["LeaguaName"]);
                    }
                    if (dr["LeagueStatus"] != DBNull.Value)
                    {
                        obj.LeagueStatus = Convert.ToBoolean(dr["LeagueStatus"]);
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
