using System;
using Telerik.Windows.Controls.Map;
using System.Windows.Media;

namespace AirCraft
{
    public class Regis : IPlaneRegisData
    {
        private Area area;
        private RegisData airCraft;

        public ImageSource ImgPlane
        {
            get
            {
                return this.airCraft.ImgPlane;
            }
        }

        public string RegisName
        {
            get
            {
                return this.airCraft.RegisName;
            }
        }

        public Area Area
        {
            get
            {
                return this.area;
            }
        }

        public string RegisPlane
        {
            get
            {
                return this.airCraft.RegisPlane;
            }
        }

        public DateTime ModifiedAt
        {
            get
            {
                return this.airCraft.ModifiedAt;
            }
        }

        public Location Center
        {
            get
            {
                return new Location(this.airCraft.Latitude, this.airCraft.Longitude);
            }
        }

        public Regis(RegisData airCraftData, Area areaData)
        {
            this.airCraft = airCraftData;
            this.area = areaData;
        }
    }
}
