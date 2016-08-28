using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Windows.Media;
using Telerik.Windows.Controls.Map;
using Telerik.Windows.Controls;

namespace AirCraft
{
    public class Area : ViewModelBase, IPlaneRegisData
    {
        private ImageSource imgPlane;
        private string regisPlane;

       private DateTime modifiedAt;

        private double strokeThickness;
        private IList<IPlaneRegisData> planeRegis = new List<IPlaneRegisData>();
        private FlightArea area;

        public Area(FlightArea areaData)
        {
            this.area = areaData;

            this.InitializeAreaFlight(areaData);

        }

        public string RegisName
        {
            get
            {
                return this.area.RegisName;
            }
        }



        public ImageSource ImgPlane
        {
            get
            {
                return this.imgPlane;
            }
        }

        public string RegisPlane
        {
            get
            {
                return this.regisPlane;
            }
        }


        
        public DateTime ModifiedAt
        {
            get
            {
                return this.modifiedAt;
            }
        }

        public double StrokeThickness
        {
            get
            {
                return this.strokeThickness;
            }

            set
            {
                if (this.strokeThickness != value)
                {
                    this.strokeThickness = value;
                    this.OnPropertyChanged("StrokeThickness");
                }
            }
        }

        public IList<IPlaneRegisData> PlaneRegis
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

        public Location Center
        {
            get
            {
                return new Location(this.area.Latitude, this.area.Longitude);
            }
        }

        private void InitializeAreaFlight(FlightArea areaData)
        {
            var airCraft = new List<IPlaneRegisData>();

            foreach (var airCraftData in areaData.AirCraft)
            {
                airCraft.Add(new Regis(airCraftData, this));
            }

            this.PlaneRegis = airCraft;
        }

        public override string ToString()
        {
            return this.RegisName;
        }

    }
}
