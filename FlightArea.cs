using System.Collections.Generic;
using Telerik.Windows.Controls.Map;

namespace AirCraft
{
    public class FlightArea : RegisLocation
    {
        private List<RegisData> _airCraft;
        private List<Location> _area;

        public List<RegisData> AirCraft
        {
            get
            {
                return _airCraft;
            }
            set
            {
                _airCraft = value;
            }
        }

        public List<Location> Area
        {
            get
            {
                return _area;
            }
            set
            {
                _area = value;
            }
        }

        public FlightArea()
        {
        }

        public FlightArea(double latitude, double longitude, string status) :
            base(latitude, longitude, status)
        {
        }
    }
}
