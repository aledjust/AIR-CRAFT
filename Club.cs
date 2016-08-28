using System;using System.Linq;
using System.ComponentModel;

namespace AirCraft
{
    public class Club : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        private string maintenances;
        private string components;
        private DateTime duedate;

        public string Maintenances
        {
            get { return this.maintenances; }
            set
            {
                if (value != this.maintenances)
                {
                    this.maintenances = value;
                    this.OnPropertyChanged("Maintenances");
                }
            }
        }

        public string Components
        {
            get { return this.components; }
            set
            {
                if (value != this.components)
                {
                    this.components = value;
                    this.OnPropertyChanged("Components");
                }
            }
        }

        public DateTime DueDate
        {
            get { return this.duedate; }
            set
            {
                if (value != this.duedate)
                {
                    this.duedate = value;
                    this.OnPropertyChanged("DueDate");
                }
            }
        }


        public Club(string maintenances, string components, DateTime duedate)
        {
            this.maintenances = maintenances;
            this.components = components;
            this.duedate = duedate;
        }

        protected virtual void OnPropertyChanged(PropertyChangedEventArgs args)
        {
            PropertyChangedEventHandler handler = this.PropertyChanged;
            if (handler != null)
            {
                handler(this, args);
            }
        }

        private void OnPropertyChanged(string propertyName)
        {
            this.OnPropertyChanged(new PropertyChangedEventArgs(propertyName));
        }
    }
}
