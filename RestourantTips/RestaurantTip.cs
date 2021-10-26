using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Globalization;

namespace RestourantTips
{
    public partial class frmRestaurantTip : Form
    {
        public frmRestaurantTip()
        {
            InitializeComponent();
        }

        private void btnCalc_Click(object sender, EventArgs e)
        {
            float billAmount = 0.0f;
            float tipAmount = 0.0f;

            //read bill amount
            billAmount = float.Parse(txtTotalBill.Text);

            //determine the tips amount shhould be paid
            if(billAmount <= 30)
            {
                tipAmount = billAmount * 0.03f;
            }
            else
            {
                tipAmount = billAmount * 0.1f;
            }

            //display
            lblTipsAmount.Text = tipAmount.ToString("c");
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            /*
            frmDashboard dsh = new frmDashboard();
            dsh.Show();
            */
            this.Close();
        }
    }
}