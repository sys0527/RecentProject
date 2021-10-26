using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UseReport
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            dsCustomers dsC = new dsCustomers();
            dsCustomersTableAdapters.CustomersTableAdapter ad = new dsCustomersTableAdapters.CustomersTableAdapter();
            ad.Fill(dsC.Customers);
            CrystalReport1 frm = new CrystalReport1();
            frm.SetDataSource(dsC);
            crystalReportViewer1.ReportSource = dsC;
        }
    }
}
