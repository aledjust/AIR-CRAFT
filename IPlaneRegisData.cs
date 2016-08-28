using System;
using System.Windows.Media;
namespace AirCraft
{
    public interface IPlaneRegisData
    {
        ImageSource ImgPlane
        {
            get;
        }

        string RegisPlane
        {
            get;
        }
        
        string RegisName
        {
            get;
        }

        DateTime ModifiedAt
        {
            get;
        }
    }
}
