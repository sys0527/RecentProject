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
    public partial class frmDashboard : Form
    {
        public frmDashboard()
        {
            InitializeComponent();
        }

        private void btnRestaurant_Click(object sender, EventArgs e)
        {
            frmRestaurantTip frt = new frmRestaurantTip();
            frt.Show();//will open the window form
        }

        private void btnTutor_Click(object sender, EventArgs e)
        {
            frmTutorWages ftw = new frmTutorWages();
            ftw.Show();//will open the window form
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult reply;
            reply = MessageBox.Show("Do you want to exit from this apps", "Comfirm Exit", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (reply == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
    }
}