using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web;
namespace MiBetDataAccess
{
    public class clsDataAccessConnection
    {
        SqlConnection conn = new SqlConnection();
        public clsDataAccessConnection()
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ibbConnectionString"].ToString();
        }
        public void OpenConn()
        {
            this.conn.Open();
        }
        public void CloseConn()
        {
            this.conn.Close();
        }
        public SqlConnection GetConn()
        {
            return conn;
        }
    }
}
