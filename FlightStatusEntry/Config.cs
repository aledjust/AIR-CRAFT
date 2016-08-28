using System;
using System.Linq;
using System.Configuration;

namespace FlightStatusEntry
{
    public class Config
    {
        public string ServerName = ConfigurationSettings.AppSettings["ServerName"];
        public string UserName = ConfigurationSettings.AppSettings["UserId"];
        public string Password = ConfigurationSettings.AppSettings["Password"];
        public string Port = ConfigurationSettings.AppSettings["Port"];
        public string Database = ConfigurationSettings.AppSettings["Database"];
    }
}
