using System;
using System.Collections.ObjectModel;
using System.Data;
using System.Linq;
using MySql.Data.MySqlClient;
using Telerik.Windows.Controls;
using Telerik.Windows.Controls.Map;
using System.Collections.Generic;
using System.Globalization;
using System.Windows;
using System.Windows.Resources;
using System.Xml;
using System.Windows.Media.Imaging;


namespace AirCraft
{
    public class MonitoringViewModel : ViewModelBase
    {
        private AreaSelection selection;
        private ObservableCollection<Area> areas;
        private ObservableCollection<IPlaneRegisData> planeRegis;
        
        private DataTable MsAirBase = null;
        private DataTable regisPlane = null;

        private string totalFlight = string.Empty;
        private string totalNoFlight = string.Empty;

        

        public AreaSelection Selection
        {
            get
            {
                return this.selection;
            }
            set
            {
                if (this.selection != value)
                {
                    this.selection = value;
                    this.OnPropertyChanged("Selection");
                }
            }
        }

        public ObservableCollection<Area> Areas
        {
            get
            {
                return this.areas;
            }
            set
            {
                if (this.areas != value)
                {
                    this.areas = value;
                    this.OnPropertyChanged("Areas");
                }
            }
        }

        public ObservableCollection<IPlaneRegisData> PlaneRegis
        {
            get
            {
                return this.planeRegis;
            }
            set
            {
                if (this.planeRegis != value)
                {
                    this.planeRegis = value;
                    this.OnPropertyChanged("PlaneRegis");
                }
            }
        }

        public MonitoringViewModel()
        {
            GetFlightAreas();
        }

        private void GetFlightAreas()
        {
            List<FlightArea> list = this.GetFlightAreasData();

            var areas = new ObservableCollection<Area>();

            foreach (FlightArea areaData in list)
            {
                areas.Add(new Area(areaData));
            }

            this.Areas = areas;
            this.PlaneRegis = new ObservableCollection<IPlaneRegisData>(this.Areas.SelectMany(area => area.PlaneRegis));

            this.SetupInitialSelectionState();
        }

        private List<FlightArea> GetFlightAreasData()
        {
            List<FlightArea> list = new List<FlightArea>();

            FlightArea area = null;

            GetMsAirBase();

            if (MsAirBase != null)
            {
                for(int i = 0 ; i < MsAirBase.Rows.Count; i++)
                {
                    area = new FlightArea(Convert.ToDouble(MsAirBase.Rows[i]["Latitude"]),Convert.ToDouble(MsAirBase.Rows[i]["Longitude"]),
                        Convert.ToString(MsAirBase.Rows[i]["AirBaseId"]));

                    GetRegisPlane(Convert.ToString(MsAirBase.Rows[i]["AirBaseId"]));

                    if (regisPlane != null)
                    {
                        List<RegisData> aircraft = new List<RegisData>();

                        for (int x = 0; x < regisPlane.Rows.Count; x++)
                        {
                            BitmapImage imgSource = null;
                            string statusCode = Convert.ToString(regisPlane.Rows[x]["StatusCode"]);
                            if(statusCode == "G")
                                imgSource = new BitmapImage(new Uri("pack://application:,,,/AirCraft;component/airplanegreen.png"));
                            else if(statusCode == "Y")
                                imgSource = new BitmapImage(new Uri("pack://application:,,,/AirCraft;component/airplaneyellow.png"));
                            else if (statusCode == "H")
                                imgSource = new BitmapImage(new Uri("pack://application:,,,/AirCraft;component/airplanered.png"));

                            RegisData airCraftData = new RegisData(
                            Convert.ToDouble(regisPlane.Rows[x]["Latitude"]), Convert.ToDouble(regisPlane.Rows[x]["Longitude"]),
                            Convert.ToString(regisPlane.Rows[x]["RegisName"]),imgSource, Convert.ToString(regisPlane.Rows[x]["RegCode"]),
                            Convert.ToDateTime(regisPlane.Rows[x]["ModifiedAt"]));

                            aircraft.Add(airCraftData);
                        }

                        area.AirCraft = aircraft;

                        list.Add(area);
                    }
                }
            }

            return list;
        }

        private void SetupInitialSelectionState()
        {
            // no selection is applied initially (i.e. all areas are selected).

            AreaSelection selection = new AreaSelection();
            foreach (var area in this.Areas)
            {
                selection.Data.Add(area);
            }

            this.Selection = selection;
        }

        private void GetMsAirBase()
        {
            Global glo = new Global();

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;

            string query = "SELECT * FROM MsAirBase ORDER By AirBaseId ASC";

            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if (ds != null)
            {
                MsAirBase = new DataTable();
                MsAirBase = ds.Tables[0].Copy();
            }
        }        

        private void GetRegisPlane(string airBaseId)
        {
            Global glo = new Global();

            DataSet ds = new DataSet();
            MySqlDataAdapter adapater = null;

            string query = "SELECT TAC.RegCode, TAC.Enginner, TAC.Plane, TAC.Latitude, TAC.Longitude, TAC.Remark, TAC.TimeSinceNew, " +
                           "TAC.CycleSinceNew, TAC.SerialNumber, TAC.StatusCode, TAC.ModifiedAt, MRP.Description RegisName" ;
                   query += " FROM TxAirCraft TAC LEFT JOIN MsAirBase BS ON TAC.AirBaseId = BS.AirBaseId";
                   query += " LEFT JOIN MsRegPlane MRP ON TAC.RegCode = MRP.RegCode";                   
                   query += " LEFT JOIN MsStatus STS ON TAC.StatusCode = STS.StatusCode";
                   query += " WHERE TAC.AirBaseId = '"+airBaseId+"' ORDER BY TAC.ModifiedAt DESC";

            adapater = new MySqlDataAdapter(query, glo.OpenConn());
            adapater.Fill(ds);

            if (ds != null)
            {
                regisPlane = new DataTable();
                regisPlane = ds.Tables[0].Copy();
            }
        }
    }
}
