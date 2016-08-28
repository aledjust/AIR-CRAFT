using System;
using System.Linq;
using System.Windows.Media;

namespace AirCraft
{
    public class RegisData : RegisLocation
    {        
        private string _RegisPlane;
        public string RegisPlane
        {
            get
            {
                return _RegisPlane;
            }
            set
            {
                _RegisPlane = value;
            }
        }

        private DateTime _ModifiedAt;
        public DateTime ModifiedAt
        {
            get
            {
                return _ModifiedAt;
            }
            set
            {
                _ModifiedAt = value;
            }
        }

        public RegisData()
        {
        }

        public RegisData(double latitude, double longitude, string regisName, ImageSource imgPlane, string regisPlane, DateTime modifiedAt) :
            base(latitude, longitude, regisName)
        {
            this.ImgPlane = imgPlane;
            this.RegisPlane = regisPlane;
            this.RegisName = regisName;
            this.ModifiedAt = modifiedAt;
        }
    }
}
