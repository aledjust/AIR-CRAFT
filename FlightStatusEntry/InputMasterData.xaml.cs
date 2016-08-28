using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Text.RegularExpressions;

namespace FlightStatusEntry
{
    /// <summary>
    /// Interaction logic for InputMasterData.xaml
    /// </summary>
    public partial class InputMasterData : Window
    {
        public InputMasterData()
        {
            InitializeComponent();
        }

        private void BtnAddRegPlane_Click(object sender, RoutedEventArgs e)
        {
            AddRegPlane();
        }
        private void BtnAddSystem_Click(object sender, RoutedEventArgs e)
        {
            AddSystem();
        }
        private void BtnAddBase_Click(object sender, RoutedEventArgs e)
        {
            AddAirBase();
        }       

        private void AddRegPlane()
        {
            try
            {
                if (TxtMsRegCode.Text != string.Empty && TxtMsRegDesc.Text != string.Empty)
                {
                    Global glo = new Global();

                    if (CheckExistRegCode() == 1)
                    {
                        MessageBox.Show("RegCode already exists");
                        TxtMsRegCode.Focus();
                        return;
                    }

                    string query = "INSERT INTO MsRegPlane (RowId, RegCode, Description)";
                    query += " VALUES ('" + Guid.NewGuid().ToString() + "','" + TxtMsRegCode.Text + "','" + TxtMsRegDesc.Text + "') ";
                    glo.QueryInsertUpdate(glo.OpenConn(), query);
                    MessageBox.Show("Add Success");
                    TxtMsRegCode.Focus();
                    TxtMsRegDesc.Text = string.Empty;
                }
                else
                {
                    MessageBox.Show("Data MsRegPlane harus diisi semua");
                    TxtMsRegCode.Focus();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private int CheckExistRegCode()
        {
            int result = -1;

            Global glo = new Global();

            string query = "SELECT COUNT(RegCode) FROM MsRegPlane WHERE RegCode = '" + TxtMsRegCode.Text + "'";
            
            result = glo.QueryScalar(glo.OpenConn(), query);

            return result;
        }

        private void AddSystem()
        {
            try
            {
                if (TxtSystemCode.Text != string.Empty && TxtSystemDesc.Text != string.Empty)
                {
                    Global glo = new Global();

                    if (CheckExistSystemCode() == 1)
                    {
                        MessageBox.Show("SystemCode already exists");
                        TxtSystemCode.Focus();
                        return;
                    }

                    string query = "INSERT INTO MsSystem (RowId, SystemCode, Description)";
                    query += " VALUES ('" + Guid.NewGuid().ToString() + "','" + TxtSystemCode.Text + "','" + TxtSystemDesc.Text + "') ";
                    glo.QueryInsertUpdate(glo.OpenConn(), query);
                    MessageBox.Show("Add Success");
                    TxtSystemCode.Focus();
                    TxtSystemDesc.Text = string.Empty;
                }
                else
                {
                    MessageBox.Show("Data MsSystem harus diisi semua");
                    TxtSystemCode.Focus();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private void AddAirBase()
        {
            try
            {
                if (txtAirBaseId.Text != string.Empty && txtBaseName.Text != string.Empty && txtLatitude.Text != string.Empty && txtLongitude.Text != string.Empty)
                {
                    Global glo = new Global();

                    if (CheckExistAirBaseId() == 1)
                    {
                        MessageBox.Show("AirBaseId already exists");
                        txtAirBaseId.Focus();
                        return;
                    }

                    string query = "INSERT INTO MsAirBase (RowId, AirBaseId, BaseName, Latitude, Longitude)";
                    query += " VALUES ('" + Guid.NewGuid().ToString() + "','" + txtAirBaseId.Text + "','" + txtBaseName.Text + "','" + txtLatitude.Text + "','" + txtLongitude.Text + "') ";
                    glo.QueryInsertUpdate(glo.OpenConn(), query);
                    MessageBox.Show("Add Success");
                    txtAirBaseId.Focus();
                    txtBaseName.Text = string.Empty;
                    txtLatitude.Text = string.Empty;
                    txtLongitude.Text = string.Empty;
                }
                else
                {
                    MessageBox.Show("Data MsAirBase harus diisi semua");
                    TxtSystemCode.Focus();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private int CheckExistSystemCode()
        {
            int result = -1;

            Global glo = new Global();

            string query = "SELECT COUNT(SystemCode) FROM MsSystem WHERE SystemCode = '" + TxtSystemCode.Text + "'";

            result = glo.QueryScalar(glo.OpenConn(), query);

            return result;
        }
        private int CheckExistAirBaseId()
        {
            int result = -1;

            Global glo = new Global();

            string query = "SELECT COUNT(AirBaseId) FROM MsAirBase WHERE AirBaseId = '" + txtAirBaseId.Text + "'";

            result = glo.QueryScalar(glo.OpenConn(), query);

            return result;
        }
        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9.-]+");
            e.Handled = regex.IsMatch(e.Text);
        }
    }
}
