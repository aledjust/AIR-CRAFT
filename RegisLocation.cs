using System;
using System.Linq;
using System.Windows.Media;

namespace AirCraft
{

    public class RegisLocation
    {
        private double _latitude;
        private double _longitude;
        private string _regisName;
        private ImageSource _imgPlane;

        public double Latitude
        {
            get
            {
                return _latitude;
            }
            set
            {
                _latitude = value;
            }
        }

        public double Longitude
        {
            get
            {
                return _longitude;
            }
            set
            {
                _longitude = value;
            }
        }

        public string RegisName
        {
            get
            {
                return _regisName;
            }
            set
            {
                _regisName = value;
            }
        }

        public ImageSource ImgPlane
        {
            get
            {
                return _imgPlane;
            }
            set
            {
                _imgPlane = value;
            }
        }

       
        /// <summary>
        /// Initializes a new instance of the StoreLocation class.
        /// </summary>
        public RegisLocation()
        {
        }


        public RegisLocation(double latitude, double longitude, string regisName)
        {
            this.Latitude = latitude;
            this.Longitude = longitude;
            this._regisName = regisName;
        }
    }
}
