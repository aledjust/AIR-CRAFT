using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace FlightStatusEntry
{
    /// <summary>
    /// Interaction logic for DeleteMasterTx.xaml
    /// </summary>
    public partial class DeleteMasterTx : Window
    {
        public DeleteMasterTx()
        {
            InitializeComponent();
        }

        private void BtnAddRegPlane_Click(object sender, RoutedEventArgs e)
        {
            Global glo = new Global();
            glo.QueryInsertUpdate(glo.OpenConn(), "DELETE FROM MsRegPlane");
            MessageBox.Show("Delete Success");
        }

        private void BtnAddSystem_Click(object sender, RoutedEventArgs e)
        {
            Global glo = new Global();
            glo.QueryInsertUpdate(glo.OpenConn(), "DELETE FROM MsSystem");
            MessageBox.Show("Delete Success");
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            Global glo = new Global();
            glo.QueryInsertUpdate(glo.OpenConn(), "DELETE FROM TxAirCraft");
            MessageBox.Show("Delete Success");
        }

        private void button2_Click(object sender, RoutedEventArgs e)
        {
            Global glo = new Global();
            glo.QueryInsertUpdate(glo.OpenConn(), "DELETE FROM TxAirCraftItem");
            MessageBox.Show("Delete Success");
        }

        private void button3_Click(object sender, RoutedEventArgs e)
        {
            Global glo = new Global();
            glo.QueryInsertUpdate(glo.OpenConn(), "DELETE FROM MsAirBase");
            MessageBox.Show("Delete Success");
        }
    }
}
