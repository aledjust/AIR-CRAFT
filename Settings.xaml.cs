using System;
using System.Configuration;
using System.Linq;
using System.Windows;
using MySql.Data.MySqlClient;
using System.Reflection;

namespace AirCraft
{
    /// <summary>
    /// Interaction logic for Settings.xaml
    /// </summary>
    public partial class Settings : Window
    {
        public Settings()
        {
            InitializeComponent();
            LoadSetting();
        }

        private void BtnClose_Click(object sender, RoutedEventArgs e)
        {
            MainWindow mn = new MainWindow();
            mn.Show();
            this.Hide();
        }

        private void BtnTest_Click(object sender, RoutedEventArgs e)
        {
            TestConnection();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            SaveSettings();
        }


        private void TestConnection()
        {
            try
            {
                string ServerName, UserName, Password, Port, Instance, Database;

                ServerName = txtSvrName.Text;
                UserName = txtSvrUserId.Text;
                Password = txtSvrPassword.Password.ToString();
                Port = txtSvrPort.Text;
                Database = txtSvrDatabase.Text;

                Global glo = new Global();

                string result = glo.TestConnection(ServerName, UserName, Password, Port, Database);

                MessageBox.Show(this, result, "Connection", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void LoadSetting()
        {
            try
            {
                Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);

                // Fill Connection Form
                txtSvrName.Text = config.AppSettings.Settings["ServerName"].Value;
                txtSvrUserId.Text = config.AppSettings.Settings["UserId"].Value;
                txtSvrPassword.Password = config.AppSettings.Settings["Password"].Value;
                txtSvrPort.Text = config.AppSettings.Settings["Port"].Value;
                txtSvrDatabase.Text = config.AppSettings.Settings["Database"].Value;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void SaveSettings()
        {
            try
            {
                Configuration config = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
                ConfigurationSection section = config.GetSection("appSettings"); // could be any section

                config.AppSettings.Settings["ServerName"].Value = txtSvrName.Text;
                config.AppSettings.Settings["Database"].Value = txtSvrDatabase.Text;
                config.AppSettings.Settings["Port"].Value = txtSvrPort.Text;
                config.AppSettings.Settings["UserId"].Value = txtSvrUserId.Text;
                config.AppSettings.Settings["Password"].Value = txtSvrPassword.Password.ToString();

                config.Save(ConfigurationSaveMode.Modified);
                ConfigurationManager.RefreshSection("appSettings");

                //Encrypt Connection
                if (!section.SectionInformation.IsProtected)
                {
                    section.SectionInformation.ProtectSection("DataProtectionConfigurationProvider");
                    config.Save();
                }

                ResetConfigMechanism();
                MessageBox.Show("Connection Saved", "Info", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(this, ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void ResetConfigMechanism()
        {
            typeof(ConfigurationManager)
                .GetField("s_initState", BindingFlags.NonPublic |
                                         BindingFlags.Static)
                .SetValue(null, 0);

            typeof(ConfigurationManager)
                .GetField("s_configSystem", BindingFlags.NonPublic |
                                            BindingFlags.Static)
                .SetValue(null, null);

            typeof(ConfigurationManager)
                .Assembly.GetTypes().Where(x => x.FullName ==
                            "System.Configuration.ClientConfigPaths")
                .First()
                .GetField("s_current", BindingFlags.NonPublic |
                                       BindingFlags.Static)
                .SetValue(null, null);
        }
    }
}
