using System;
using System.Configuration;
using System.Linq;
using System.Data;
using MySql.Data.MySqlClient;

namespace FlightStatusEntry
{
    public class Global
    {
        #region Test Connection
        public string TestConnection(string serverName, string userName, string password, string port, string database)
        {
            string result = string.Empty;
            try
            {
                MySqlConnection conn = OpenConnTest(serverName, userName, password, port, database);
                if (conn != null)
                {
                    if (conn.State != ConnectionState.Open)
                    {
                        conn.Open();
                    }
                    else if (conn.State == ConnectionState.Open)
                    {
                        result = "Connection Established...";
                        conn.Close();
                    }
                }
                else
                {
                    result = "Connection String is not valid";
                }
            }
            catch (System.Exception e)
            {
                result = e.Message;
            }
            return result;
        }
        private string GetConnectionStringTest(string sServerName, string sUserName, string sPassword, string sPort, string sDatabase)
        {
            if (sPort.Equals(string.Empty))
                sPort = "3306";

            return "SERVER=" + sServerName + ";PORT=" + sPort + ";DATABASE=" + sDatabase + ";UID=" + sUserName + ";" + "PWD=" + sPassword + ";";
        }
        private MySqlConnection OpenConnTest(string serverName, string userName, string password, string port, string database)
        {
            string connectionstring = GetConnectionStringTest(serverName, userName, password, port, database);
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = connectionstring;
            conn.Open();
            return conn;
        }
        #endregion Test Connection

        #region GlobalConnection
        public MySqlConnection OpenConn()
        {
            string connectionstring = GetConnectionString();
            MySqlConnection conn = new MySqlConnection();
            conn.ConnectionString = connectionstring;
            conn.Open();
            return conn;
        }
        public string GetConnectionString()
        {
            ConfigurationManager.RefreshSection("appSettings");

            Config cfg = new Config();
           
            string serverName, userName, password, port,database;
            serverName = cfg.ServerName;
            userName = cfg.UserName;
            password = cfg.Password;
            port = cfg.Port;
            database = cfg.Database;

            if (port.Equals(string.Empty))
                port = "3306";

            return "SERVER=" + serverName + ";PORT=" + port + ";DATABASE=" + database + ";UID=" + userName + ";" + "PWD=" + password + ";Convert Zero Datetime=True;";
        }

        public DataSet QuerySelect(MySqlConnection conn, string selectCommand)
        {
            DataSet ds = new DataSet();
            MySqlCommand cmdCheck = new MySqlCommand();
            cmdCheck.CommandText = selectCommand;
            cmdCheck.Connection = conn;
            MySqlDataAdapter adapter = new MySqlDataAdapter(cmdCheck);
            adapter.Fill(ds);
            cmdCheck.Dispose();
            return ds;
        }
        public int QueryScalar(MySqlConnection conn, string selectCommand)
        {
            int result = 0;
            try
            {
                MySqlCommand cmdCheck = new MySqlCommand();
                cmdCheck.CommandText = selectCommand;
                cmdCheck.Connection = conn;
                result = Convert.ToInt32(cmdCheck.ExecuteScalar());
                cmdCheck.Dispose();
            }
            catch
            {
            }
            return result;
        }
        public int QueryInsertUpdate(MySqlConnection conn, string queryCommand)
        {
            int status;
            MySqlCommand cmdUpdate = new MySqlCommand();
            cmdUpdate.CommandText = queryCommand;
            cmdUpdate.Connection = conn;
            status = cmdUpdate.ExecuteNonQuery();
            cmdUpdate.Dispose();
            return status;
        }
        public bool IsDataSetEmpty(DataSet ds)
        {
            if (ds == null)
                return true;

            if (ds.Tables.Count == 0)
                return true;

            if (ds.Tables[0].Rows.Count == 0)
                return true;

            return false;
        }

        #endregion GlobalConnection
    }
}
