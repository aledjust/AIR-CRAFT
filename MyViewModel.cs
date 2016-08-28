using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Collections.ObjectModel;
using System.Data;

namespace AirCraft
{
    public class MyViewModel
    {
        private ObservableCollection<Club> clubs;
        public static DataTable dtData { get; set; }

        public ObservableCollection<Club> Clubs
        {
            get
            {
                if (this.clubs == null)
                {
                    this.clubs = this.CreateClubs();
                }

                return this.clubs;
            }
        }

        public ObservableCollection<Club> CreateClubs()
        {
            ObservableCollection<Club> clubs = new ObservableCollection<Club>();
            Club club;

            if (dtData == null)
                return clubs;
            for(int i= 0 ; i < dtData.Rows.Count; i++)
            {
                club = new Club(dtData.Rows[i][0].ToString(), dtData.Rows[i][1].ToString(), Convert.ToDateTime(dtData.Rows[i][2]));
                clubs.Add(club);
            }

            return clubs;
        }
    }
}
