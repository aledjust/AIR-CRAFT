using System;
using System.Collections.Generic;
using System.Linq;
using Telerik.Windows.Controls;

namespace AirCraft
{
    public class AreaSelection : ViewModelBase
    {
        private const string DefaultSelectedAreaName = "PKY-00001";

        private IList<IPlaneRegisData> data;
        private Area selectedArea;

        public AreaSelection()
        {
            this.Data = new List<IPlaneRegisData>();
        }

        public IList<IPlaneRegisData> Data
        {
            get
            {
                if (this.SelectedArea != null)
                {
                    return this.SelectedArea.PlaneRegis;
                }

                return this.data;
            }
            private set
            {
                this.data = value;
            }
        }

        public string RegisName
        {
            get
            {
                if (this.SelectedArea != null)
                {
                    return this.SelectedArea.RegisName;
                }
                else
                {
                    return DefaultSelectedAreaName;
                }
            }
        }

        public Area SelectedArea
        {
            get
            {
                return this.selectedArea;
            }
            set
            {
                if (this.selectedArea != value)
                {
                    this.selectedArea = value;

                    OnPropertyChanged("SelectedArea");
                    OnPropertyChanged("Data");
                    OnPropertyChanged("RegisName");
                    OnPropertyChanged("TotalFlightGo");
                    OnPropertyChanged("TotalFlightNoGo");
                }
            }
        }

        public Area TotalGo
        {
            get
            {
                return this.selectedArea;
            }
            set
            {
                if (this.selectedArea != value)
                {
                    this.selectedArea = value;

                    OnPropertyChanged("SelectedArea");
                    OnPropertyChanged("Data");
                    OnPropertyChanged("RegisName");
                    OnPropertyChanged("TotalFlightGo");
                    OnPropertyChanged("TotalFlightNoGo");
                }
            }
        }
                    
    }
}
