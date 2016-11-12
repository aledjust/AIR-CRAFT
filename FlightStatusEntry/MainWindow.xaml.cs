using System;
using System.Linq;
using System.Text.RegularExpressions;
using System.Windows;
using System.Data;
using MySql.Data.MySqlClient;
using System.Windows.Input;
using System.Collections.ObjectModel;

namespace FlightStatusEntry
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        #region Member Variable(s)
        private readonly string namePlane = "Boeing 737-800 NG";
        private DataTable txAirCraft = null;
        private string generateRowId = string.Empty;
        private readonly string separators = "|";
        private string tmpAirCraftId = string.Empty;
        #endregion Member Variable(s)

        #region Designer(s)
        public MainWindow()
        {
            InitializeComponent();
        }
        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            LoadForm();
        }
        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            AddItem();
        }
        private void BtnDltLstAll_Click(object sender, RoutedEventArgs e)
        {
            LstItems.Items.Clear();
        }
        private void BtnDltLst_Click(object sender, RoutedEventArgs e)
        {
            DeleteItems();
        }
        private void TxtSearch_KeyUp(object sender, System.Windows.Input.KeyEventArgs e)
        {
            ShowAddMaster();
        }
        private void TxtSearch_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            SearchRegis(e);
        }
        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            Save();
        }
        private void btnSaveMaintenance_Click(object sender, RoutedEventArgs e)
        {
            SaveMaintenance();
        }

        private void CmbMaintenance_SelectionChanged(object sender, System.Windows.Controls.SelectionChangedEventArgs e)
        {
            FillListItem(tmpAirCraftId, CmbMaintenance.SelectedValue.ToString());
        }
        private void txtItems_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
                AddItem();
        }
        #endregion Designer(s)

        #region Method(s)
        private void LoadForm()
        {
            try
            {
                TxtPlane.Text = namePlane;
                GetMsRegPlane();
                GetMsAirBase();
                GetMsMaintenance();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private void GetMsAirBase()
        {
            Global glo = new Global();

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;

            string query = "SELECT * FROM MsAirBase ORDER BY BaseName ASC";

            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if (ds != null)
            {
                CmbAirBase.ItemsSource = ds.Tables[0].DefaultView;
                CmbAirBase.DisplayMemberPath = "BaseName";
                CmbAirBase.SelectedValuePath = "AirBaseId";
            }
        }
        private void GetMsRegPlane()
        {
            Global glo = new Global();

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;

            string query = "SELECT * FROM MsRegPlane ORDER BY Description ASC";

            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if (ds != null)
            {
                CmbRegPlane.ItemsSource = ds.Tables[0].DefaultView;
                CmbRegPlane.DisplayMemberPath = "Description";
                CmbRegPlane.SelectedValuePath = "RegCode";
            }
        }
        private void GetMsMaintenance()
        {
            Global glo = new Global();

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;

            string query = "SELECT * FROM MsMaintenance ORDER BY Description ASC";

            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if (ds != null)
            {
                CmbMaintenance.ItemsSource = ds.Tables[0].DefaultView;
                CmbMaintenance.DisplayMemberPath = "Description";
                CmbMaintenance.SelectedValuePath = "MaintenanceCode";
            }
        }
        private void AddItem()
        {
            string joinItem = string.Empty;

            if (txtItems.Text == string.Empty)
                MessageBox.Show("Please Fill Component");
            else if (dtDueDate.SelectedDate == null)
                MessageBox.Show("Please Select DueDate");
            else
            {
                string dates = dtDueDate.SelectedDate.Value.ToString("yyyy-MM-dd");
                joinItem = txtItems.Text + " " + separators + " " + dates;
                LstItems.Items.Add(joinItem);
                txtItems.Text = string.Empty;
                txtItems.Focus();
            }
        }
        private void DeleteItems()
        {
            var selected = LstItems.SelectedItems.Cast<Object>().ToArray();
            foreach (var item in selected) LstItems.Items.Remove(item);           
        }
        private void ShowAddMaster()
        {
            if (TxtSearch.Text.Equals("4dm1n123%"))
            {
                TxtSearch.Text = string.Empty;
                new InputMasterData().ShowDialog();
            }
            if (TxtSearch.Text.Equals("Delete$%"))
            {
                TxtSearch.Text = string.Empty;
                new DeleteMasterTx().ShowDialog();
            }
            if (TxtSearch.Text.Equals("Settings"))
            {
                TxtSearch.Text = string.Empty;
                new Settings().ShowDialog();
            }
        }
        private void SearchRegis(KeyEventArgs e)
        {
            try
            {
                if (TxtSearch.Text == string.Empty)
                    return;

                if (e.Key == Key.Enter)
                {
                    int result = -1;

                    result = CheckExistRegisIntx();
                    if (result == 1)
                    {
                        tmpAirCraftId = txAirCraft.Rows[0]["RowId"].ToString();
                        CmbRegPlane.SelectedValue = txAirCraft.Rows[0]["RegCode"].ToString();
                        TxtName.Text = txAirCraft.Rows[0]["Enginner"].ToString();
                        CmbAirBase.SelectedValue = txAirCraft.Rows[0]["AirBaseId"].ToString();
                        Txtlatitude.Text = txAirCraft.Rows[0]["Latitude"].ToString();
                        TxtLongitude.Text = txAirCraft.Rows[0]["Longitude"].ToString();
                        txtRemark.Text = txAirCraft.Rows[0]["Remark"].ToString();
                        txtSerialNumber.Text = txAirCraft.Rows[0]["SerialNumber"].ToString();
                        dTTimeSinceNew.Text = txAirCraft.Rows[0]["TimeSinceNew"].ToString();
                        dTCycleSinceNew.Text = txAirCraft.Rows[0]["CycleSinceNew"].ToString();

                        if (txAirCraft.Rows[0]["StatusCode"].ToString() == "G")
                        {
                            rdGood.IsChecked = true;
                            rdMiddle.IsChecked = false;
                            rdHigh.IsChecked = false;
                        }
                        else if (txAirCraft.Rows[0]["StatusCode"].ToString() == "Y")
                        {
                            rdGood.IsChecked = false;
                            rdMiddle.IsChecked = true;
                            rdHigh.IsChecked = false;
                        }
                        else if (txAirCraft.Rows[0]["StatusCode"].ToString() == "H")
                        {
                            rdGood.IsChecked = false;
                            rdMiddle.IsChecked = false;
                            rdHigh.IsChecked = true;
                        }
                    }
                    else
                    {
                        MessageBox.Show("RegisPlane ID not registered");
                        TxtSearch.Focus();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private void FillListItem(string rowId, string maintenanceCode)
        {
            LstItems.Items.Clear();

            if (tmpAirCraftId == string.Empty)
            {
                MessageBox.Show("Please find or add new plane");
                return;
            }
            if (CmbMaintenance.SelectedValue == null)
            {
                MessageBox.Show("Please Select Maintenance");
                return;
            }

            string joinItem = string.Empty;

            Global glo = new Global();

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;

            string query = "SELECT TCI.* FROM TxMaintenance TCI LEFT OUTER JOIN TxAirCraft TC";
                    query += " ON TCI.AirCraftId = TC.RowId ";
                    query += " WHERE TCI.AirCraftId = '" + rowId + "' AND TCI.MaintenanceCode = '" + maintenanceCode + "'";

            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if (ds != null)
            {
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    string dates = ds.Tables[0].Rows[i]["DueDate"].ToString();
                    joinItem = ds.Tables[0].Rows[i]["Component"].ToString() + " " + separators + " " + dates;
                    LstItems.Items.Add(joinItem);
                }
            }
        }

        private void Save()
        {
            try
            {
                int result = -1;

                if (CmbRegPlane.SelectedValue == null)
                {
                    MessageBox.Show("Please Select No. Reg Plane");
                    return;
                }

                if (TxtName.Text == string.Empty)
                {
                    MessageBox.Show("Please Fill Name");
                    return;
                }

                if (CmbAirBase.SelectedValue == null)
                {
                    MessageBox.Show("Please Select Base");
                    return;
                }

                if (CmbMaintenance.SelectedValue == null)
                {
                    MessageBox.Show("Please Select Maintenance");
                    return;
                }

                if (Txtlatitude.Text == string.Empty || TxtLongitude.Text == string.Empty)
                {
                    MessageBox.Show("Please fill Latitde, Longitude");
                    return;
                }

                if (rdGood.IsChecked == false && rdMiddle.IsChecked == false && rdHigh.IsChecked == false)
                {
                    MessageBox.Show("Please check status at least one (Good or Middele Risk or High Risk)");
                    return;
                }

                result = CheckExistCmbRegisIntx();

                if (result == 1)
                    UpdateTx();
                else
                    InsertTx();

                MessageBox.Show("Save Success");
                TxtSearch.Focus();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private void UpdateTx()
        {
            Global glo = new Global();

            string tmpRegCode = (CmbRegPlane.SelectedValue == null ? string.Empty : CmbRegPlane.SelectedValue.ToString());

            DataSet ds = glo.QuerySelect(glo.OpenConn(), "SELECT RowId FROM TxAirCraft WHERE RegCode = '" + tmpRegCode + "'");

            if (ds == null)
                return;
            
            generateRowId = ds.Tables[0].Rows[0]["RowId"].ToString();

            string tmpStatusCode = string.Empty;
            if (rdGood.IsChecked == true)
                tmpStatusCode = "G";
            else if (rdMiddle.IsChecked == true)
                tmpStatusCode = "Y";
            else if (rdHigh.IsChecked == true)
                tmpStatusCode = "H";

            string tmpEnginner = TxtName.Text;    
            string tmpLatitude = Txtlatitude.Text;
            string tmpLongitude = TxtLongitude.Text;
            string tmpAirBaseId = (CmbAirBase.SelectedValue == null ? string.Empty : CmbAirBase.SelectedValue.ToString());
            string tmpRemark = txtRemark.Text;
            string tmpTimeSinceNew = (dTTimeSinceNew.Text == null ? string.Empty : dTTimeSinceNew.Text);
            string tmpCycleSinceNew = (dTCycleSinceNew.Text == null ? string.Empty : dTCycleSinceNew.Text);
            string tmpSerialNumber = txtSerialNumber.Text;
            string tmpModifiedAt = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            string tmpMaintenanceCode = (CmbMaintenance.SelectedValue == null ? string.Empty : CmbMaintenance.SelectedValue.ToString());

            string query = "UPDATE TxAirCraft SET Enginner = '" + tmpEnginner + "'";
                   query += " , StatusCode = '" + tmpStatusCode + "', Latitude = '" + tmpLatitude + "', Longitude = '" + tmpLongitude + "'";
                   query += " , AirBaseId = '" + tmpAirBaseId + "', Remark = '" + tmpRemark + "',  TimeSinceNew = '" + tmpTimeSinceNew + "', CycleSinceNew = '" + tmpCycleSinceNew + "', SerialNumber = '" + tmpSerialNumber + "',ModifiedAt = '" + tmpModifiedAt + "'";
                   query += " WHERE RowId = '"+generateRowId+"'";

            glo.QueryInsertUpdate(glo.OpenConn(), query);

            // Delete TxMaintenence
            query = "DELETE FROM TxMaintenance WHERE AirCraftId = '" + generateRowId + "' AND MaintenanceCode = '" + tmpMaintenanceCode + "'";
            glo.QueryInsertUpdate(glo.OpenConn(), query);

            string tmpItems;
            string tmpDueDate;

            // Add TxAirCraftItem
            foreach (var item in LstItems.Items)
            {
                string[] items;

                tmpItems = string.Empty;
                tmpDueDate = string.Empty;

                items = item.ToString().Split('|');
                tmpItems = items[0];
                tmpDueDate = items[1];
                query = "INSERT INTO TxMaintenance (RowId,AirCraftId,MaintenanceCode,Component,DueDate)";
                query += " VALUES('" + Guid.NewGuid().ToString() + "','" + generateRowId + "','" + tmpMaintenanceCode + "','" + tmpItems + "','" + tmpDueDate + "')";

                glo.QueryInsertUpdate(glo.OpenConn(), query);
            }
                        
        }
        private void InsertTx()
        {
            generateRowId = Guid.NewGuid().ToString();
            tmpAirCraftId = generateRowId;

            string tmpStatusCode = string.Empty;
            if (rdGood.IsChecked == true)
                tmpStatusCode = "G";
            else if (rdMiddle.IsChecked == true)
                tmpStatusCode = "Y";
            else if (rdHigh.IsChecked == true)
                tmpStatusCode = "H";

            string tmpEnginner = TxtName.Text;
            string tmpRegCode = (CmbRegPlane.SelectedValue == null ? string.Empty : CmbRegPlane.SelectedValue.ToString());        
            string tmpLatitude = Txtlatitude.Text;
            string tmpLongitude = TxtLongitude.Text;
            string tmpMaintenanceCode = (CmbMaintenance.SelectedValue == null ? string.Empty : CmbMaintenance.SelectedValue.ToString());
            string tmpAirBaseId = (CmbAirBase.SelectedValue == null ? string.Empty : CmbAirBase.SelectedValue.ToString());
            string tmpRemark = txtRemark.Text;
            string tmpTimeSinceNew = (dTTimeSinceNew.Text == null ? string.Empty : dTTimeSinceNew.Text);
            string tmpCycleSinceNew = (dTCycleSinceNew.Text == null ? string.Empty : dTCycleSinceNew.Text);
            string tmpSerialNumber = txtSerialNumber.Text;
            string tmpModifiedAt = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");

            string tmpItems;
            string tmpDueDate;

            string query = "INSERT INTO TxAirCraft (RowId,Enginner,Plane,RegCode,StatusCode,Latitude,Longitude,AirBaseId,Remark,TimeSinceNew,CycleSinceNew,SerialNumber,ModifiedAt)";
            query += " VALUES('" + generateRowId + "','" + tmpEnginner + "','" + namePlane + "','" + tmpRegCode + "','" + tmpStatusCode + "'";
            query += " ,'" + tmpLatitude + "','" + tmpLongitude + "','" + tmpAirBaseId + "','" + tmpRemark + "','" + tmpTimeSinceNew + "','" + tmpCycleSinceNew + "','" + tmpSerialNumber + "','" + tmpModifiedAt + "')";

            Global glo = new Global();

            glo.QueryInsertUpdate(glo.OpenConn(), query);

            // Add TxMaintenence
            foreach (var item in LstItems.Items)
            {
                string[] items;

                tmpItems = string.Empty;
                tmpDueDate = string.Empty;

                items = item.ToString().Split('|');
                tmpItems = items[0];
                tmpDueDate = items[1];
                query = "INSERT INTO TxMaintenance (RowId,AirCraftId,MaintenanceCode,Component,DueDate)";
                query += " VALUES('" + Guid.NewGuid().ToString() + "','" + generateRowId + "','" + tmpMaintenanceCode + "','" + tmpItems + "','" + tmpDueDate + "')";

                glo.QueryInsertUpdate(glo.OpenConn(), query);
            }
        }
        private void SaveMaintenance()
        {
            if (tmpAirCraftId == string.Empty)
            {
                MessageBox.Show("Please find or add new plane");
                return;
            }
            if (CmbMaintenance.SelectedValue == null)
            {
                MessageBox.Show("Please Select Maintenance");
                return;
            }

            Global glo = new Global();
            string tmpMaintenanceCode = (CmbMaintenance.SelectedValue == null ? string.Empty : CmbMaintenance.SelectedValue.ToString());

            // Delete TxMaintenence
            string query = "DELETE FROM TxMaintenance WHERE AirCraftId = '" + tmpAirCraftId + "' AND MaintenanceCode = '" + tmpMaintenanceCode + "'";
            glo.QueryInsertUpdate(glo.OpenConn(), query);

            string tmpItems;
            string tmpDueDate;

            // Add TxAirCraftItem
            foreach (var item in LstItems.Items)
            {
                string[] items;

                tmpItems = string.Empty;
                tmpDueDate = string.Empty;

                items = item.ToString().Split('|');
                tmpItems = items[0];
                tmpDueDate = items[1];
                query = "INSERT INTO TxMaintenance (RowId,AirCraftId,MaintenanceCode,Component,DueDate)";
                query += " VALUES('" + Guid.NewGuid().ToString() + "','" + tmpAirCraftId + "','" + tmpMaintenanceCode + "','" + tmpItems + "','" + tmpDueDate + "')";

                glo.QueryInsertUpdate(glo.OpenConn(), query);
            }

            MessageBox.Show("Update Maintenance success");
        }

        private int CheckExistRegisIntx()
        {
            int result = -1;

            Global glo = new Global();

            string query = "SELECT T.* FROM TxAirCraft T LEFT JOIN MsRegPlane R";
            query += " ON T.RegCode = R.RegCode WHERE T.RegCode = '" + TxtSearch.Text + "' OR R.Description = '" + TxtSearch.Text + "' ";

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;
            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if(ds != null)
            {
                result = Convert.ToInt32(ds.Tables[0].Rows.Count);

                if (result == 1)
                    txAirCraft = ds.Tables[0].Copy();
            }

            return result;
        }
        private int CheckExistCmbRegisIntx()
        {
            int result = -1;

            Global glo = new Global();

            string tmpRegCode = (CmbRegPlane.SelectedValue == null ? string.Empty : CmbRegPlane.SelectedValue.ToString());

            string query = "SELECT COUNT(*) AS Total FROM TxAirCraft WHERE RegCode = '" + tmpRegCode + "'";

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;
            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if (ds != null)
            {
                result = Convert.ToInt32(ds.Tables[0].Rows[0]["Total"].ToString());

                if (result == 1)
                    txAirCraft = ds.Tables[0].Copy();
            }

            return result;
        }

        private void NumberValidationTextBox(object sender, TextCompositionEventArgs e)
        {
            Regex regex = new Regex("[^0-9.-]+");
            e.Handled = regex.IsMatch(e.Text);
        }
        #endregion Method(s)
        
    }

 
}
