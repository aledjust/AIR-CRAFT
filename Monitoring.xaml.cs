using System;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using MySql.Data.MySqlClient;
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.Map;
using Telerik.Windows.Controls.GridView;
using Telerik.Windows.Data;
using Telerik.Windows.Controls.Filtering.Editors;
using System.Data;

namespace AirCraft
{
    public partial class Monitoring : UserControl
    {

        #region Memeber Varible(s)
        private const int DefaultZoomLevel = 5;
        private string vEKey = "AqaPuZWytKRUA8Nm5nqvXHWGL8BDCXvK8onCl2PkC581Zp3T_fYAQBiwIphJbRAK";

        private Regis lastHighlightedStore;
        private Area lastHighlightedArea;
        private FrameworkElement clickedElement;
        private MonitoringViewModel context;

        private DataTable FindData = null;

        #endregion Memeber Varible(s)

        #region Designer(s)
        public Monitoring()
        {
            LoadForm();
        }
       
        private void RadMapMapMouseClick(object sender, MapMouseRoutedEventArgs eventArgs)
        {
            MapClicked();
        }
        private void ElementMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            MouselLeftDown(sender);
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ViewAll();
        }
        private void GridViewDataLoaded(object sender, EventArgs e)
        {
            GridViewLoaded(sender);
        }
        private void TxtSearchFlight_KeyDown(object sender, KeyEventArgs e)
        {
            SearchFlight(e);
        }
        private void TxtSearch_KeyUp(object sender, System.Windows.Input.KeyEventArgs e)
        {
            
        }
        private void BtnRefresh_Click(object sender, RoutedEventArgs e)
        {
            Refresh();
        }
        #endregion Designer(s)
      
        #region Method(s)
        private void LoadForm()
        {
            Thread.CurrentThread.CurrentCulture = new CultureInfo("en-us");
            this.Resources.MergedDictionaries.Add(new System.Windows.ResourceDictionary() { Source = new Uri("/AirCraft;component/Win8Resources.xaml", UriKind.RelativeOrAbsolute) });
            this.Resources.MergedDictionaries.Add(new System.Windows.ResourceDictionary() { Source = new Uri("/AirCraft;component/GridViewStyles.xaml", UriKind.RelativeOrAbsolute) });

            InitializeComponent();

            context = this.DataContext as MonitoringViewModel;

            SetProvider();
            GetFlightStatus();
        }
        
        private void RadGridView_FilterOperatorsLoading(object sender, FilterOperatorsLoadingEventArgs e)
        {

            if (e.AvailableOperators.Contains(FilterOperator.Contains))
            {
                e.DefaultOperator1 = FilterOperator.Contains;
            }
            else if (e.AvailableOperators.Contains(FilterOperator.IsLessThanOrEqualTo))
            {
                e.DefaultOperator1 = FilterOperator.IsLessThanOrEqualTo;
            }
        }

        private void RadGridView_FieldFilterEditorCreated(object sender, EditorCreatedEventArgs e)
        {
            var stringFilterEditor = e.Editor as StringFilterEditor;

            if (stringFilterEditor != null)
            {
                // filtering with StringFilterEditor (when filtering string values)
                e.Editor.Loaded += (s1, e1) =>
                {
                    var textBox = e.Editor.ChildrenOfType<TextBox>().Single();
                    textBox.TextChanged += (s2, e2) =>
                    {
                        textBox.GetBindingExpression(TextBox.TextProperty).UpdateSource();
                    };
                };
            }
            else
            {
                // Filtering with TextBox editor (when filtering numeric values)
                var textBox = e.Editor as TextBox;
                if (textBox != null)
                {
                    textBox.TextChanged += (s2, e2) =>
                    {
                        textBox.GetBindingExpression(TextBox.TextProperty).UpdateSource();
                    };
                }
            }
        }

        // Initialize Virtual Earth map provider.
        private void SetProvider()
        {
            BingMapProvider provider = new BingMapProvider(MapMode.Road, true, vEKey);
            provider.IsTileCachingEnabled = true;
            this.radMap.Provider = provider;
        }
        private void SetDefaultZoomAndCenter()
        {
            // set center
            this.radMap.Center = new Telerik.Windows.Controls.Map.Location(-6.1274979, 106.5913319);

            // set zoom
            this.radMap.ZoomLevel = DefaultZoomLevel;
        }

        private void MapClicked()
        {
            object senderDataPoint = GetSenderDataPoint();
            if (senderDataPoint != null)
            {
                Area area = this.GetDataPointArea(senderDataPoint);
                if (senderDataPoint is Regis)
                {
                    Regis store = (Regis)senderDataPoint;

                    if (!store.Equals(this.lastHighlightedStore))
                    {
                        this.SelectArea(store.Area);
                        this.SetStoreHighlightStyle(store);
                    }
                    else
                    {
                        this.SetStoreDefaultStyle();
                    }
                }
                else
                {
                    this.SelectArea(area);
                }
            }
        }

        private void MouselLeftDown(object sender)
        {
            FrameworkElement element = sender as FrameworkElement;
            if (element != null)
            {
                this.clickedElement = element;

                ClearLabel();
                string regisPlane = ((AirCraft.Regis)(this.clickedElement.DataContext)).RegisPlane;
                GetFindData(regisPlane);
            }
        }
        private void ViewAll()
        {
            this.context.Selection.SelectedArea = null;
            SelectArea(lastHighlightedArea);
        }
        private void GridViewLoaded(object sender)
        {
            var grid = (RadGridView)sender;

            if (grid.Items.Groups.Count > 0)
            {
                var firstGroup = grid.Items.Groups[0] as Telerik.Windows.Data.IGroup;
                if (firstGroup != null)
                {
                    grid.ExpandGroup(firstGroup);
                }
            }
        }

        private void SearchFlight(KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                ClearLabel();
                GetFindData(TxtSearchFlight.Text);
                this.radMap.Center = new Location(Convert.ToDouble(FindData.Rows[0]["Latitude"]), Convert.ToDouble(FindData.Rows[0]["Longitude"]));
            }
        }

        private void SelectItem(object item)
        {
            Area area = item as Area;
            if (area != null)
            {
                this.radMap.Center = area.Center;
            }
            else
            {
                Regis regis = item as Regis;
                if (regis != null)
                {
                    this.radMap.Center = regis.Center;
                    this.SetStoreHighlightStyle(regis);
                }
            }
        }
        private void SetStoreDefaultStyle()
        {
            this.lastHighlightedStore = null;
        }
        private void SetStoreHighlightStyle(Regis element)
        {
            if (element.Equals(this.lastHighlightedStore))
            {
                return;
            }

            if (this.lastHighlightedStore != null)
            {
                this.SetStoreDefaultStyle();
            }

            this.lastHighlightedStore = element;
        }

        private void SelectArea(Area area)
        {
            if (area == lastHighlightedArea)
            {
                this.context.Selection.SelectedArea = null;
            }
            else
            {
                this.context.Selection.SelectedArea = area;
            }
        }
        

        private object GetSenderDataPoint()
        {
            if (this.clickedElement != null)
            {
                FrameworkElement element = this.clickedElement;
                this.clickedElement = null;

                return element.DataContext;
            }
            return null;
        }
        private Area GetDataPointArea(object senderDataPoint)
        {
            if (senderDataPoint is Regis)
            {
                return ((Regis)senderDataPoint).Area;
            }
            else
            {
                return (Area)senderDataPoint;
            }
        }

        
        private void GetFindData(string regisPlane)
        {
            Global glo = new Global();

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;

            string query = "SELECT TAC.RowId, TAC.Enginner, TAC.Plane, TAC.Remark, TAC.Latitude, TAC.Longitude, TAC.TimeSinceNew, " +
                           "TAC.CycleSinceNew, TAC.SerialNumber, ";
            query += " BS.BaseName, MRP.Description RegisName, STS.Description AS Status";
            query += " FROM TxAirCraft TAC LEFT JOIN MsAirBase BS ON TAC.AirBaseId = BS.AirBaseId";
            query += " LEFT JOIN MsRegPlane MRP ON TAC.RegCode = MRP.RegCode";
            query += " LEFT JOIN MsStatus STS ON TAC.StatusCode = STS.StatusCode";
            query += " WHERE TAC.RegCode = '" + regisPlane + "' OR MRP.Description = '" + regisPlane + "' ";

            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if (ds != null)
            {
                if (ds.Tables[0].Rows.Count == 0)
                {
                    MessageBox.Show("RegisPlane ID not registered");
                    return;
                }

                FindData = new DataTable();
                FindData = ds.Tables[0].Copy();
                FillLabel();
                GetDataMaintenance(ds.Tables[0].Rows[0]["RowId"].ToString());
            }
        }
        private void FillLabel()
        {
            LblName.Text = FindData.Rows[0]["Enginner"].ToString();
            LblPlane.Text = FindData.Rows[0]["Plane"].ToString();
            LblBase.Text = FindData.Rows[0]["BaseName"].ToString();
            LblRegisName.Text = FindData.Rows[0]["RegisName"].ToString();            
            LblStatus.Text = FindData.Rows[0]["Status"].ToString();
            LblSinceNew.Text = FindData.Rows[0]["TimeSinceNew"].ToString();
            LblCycleSinceNew.Text = FindData.Rows[0]["CycleSinceNew"].ToString();
            LblSN.Text = FindData.Rows[0]["SerialNumber"].ToString();
            LblRemark.Text = FindData.Rows[0]["Remark"].ToString();
        }
        private void ClearLabel()
        {
            LblName.Text = string.Empty;
            LblPlane.Text = string.Empty;
            LblBase.Text = string.Empty;
            LblRegisName.Text = string.Empty;
            LblStatus.Text = string.Empty;
            LblCycleSinceNew.Text = string.Empty;
            LblSinceNew.Text = string.Empty;
            LblSN.Text = string.Empty;
            LblRemark.Text = string.Empty;
        }

        private void GetFlightStatus()
        {
            Global glo = new Global();

            DataSet ds = glo.QuerySelect(glo.OpenConn(), "SELECT COUNT(*) AS Qty FROM TxAirCraft WHERE StatusCode = 'G' ");

            if (ds != null)
            {
                TotalFlightGood.Text = ds.Tables[0].Rows[0]["Qty"].ToString();
            }

            DataSet ds1 = glo.QuerySelect(glo.OpenConn(), "SELECT COUNT(*) AS Qty FROM TxAirCraft WHERE StatusCode = 'Y' ");

            if (ds1 != null)
            {
                TotalFlightMiddleRisk.Text = ds1.Tables[0].Rows[0]["Qty"].ToString();
            }

            DataSet ds2 = glo.QuerySelect(glo.OpenConn(), "SELECT COUNT(*) AS Qty FROM TxAirCraft WHERE StatusCode = 'H' ");

            if (ds2 != null)
            {
                TotalFlightHighRisk.Text = ds2.Tables[0].Rows[0]["Qty"].ToString();
            }
        }

        private void GetDataMaintenance(string rowId)
        { 
            Global glo = new Global();

            string query = "SELECT COALESCE(M.Description,'') AS MaintenanceName, COALESCE(D.Component,''), COALESCE(D.DueDate,NOW()) FROM msmaintenance M " +
                           " LEFT OUTER JOIN txmaintenance D ON M.MaintenanceCode = D.MaintenanceCode " +
                           " LEFT OUTER JOIN txaircraft A ON D.AirCraftId = A.RowId " +
                           " WHERE A.RowId = '" + rowId + "'";

            DataSet ds = glo.QuerySelect(glo.OpenConn(), query);

            if (ds != null)
            {
                MyViewModel.dtData = ds.Tables[0];
                this.gridView.ItemsSource = new MyViewModel().Clubs;
            }
        }

        private void Refresh()
        {
            this.DataContext = null;
            this.DataContext = new MonitoringViewModel();
            LoadForm();
        }
        #endregion Method(s)        

        
    }
       
}
