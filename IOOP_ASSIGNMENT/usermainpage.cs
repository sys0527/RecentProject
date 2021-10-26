using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace IOOP_Assignment
{
    public partial class user_main_page : Form
    {
        public int num;
        public string fullname;
        public void enableDisableStudentButton(bool flag)
        { 
            btnPending.Visible = flag;
            btnReport.Visible = flag;
        }
        public void enableDisableAdminButton(bool flag)
        {
            btnReserve.Visible = flag;
        }
        public user_main_page()
        {
            InitializeComponent();
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DialogResult reply;
            reply = MessageBox.Show("Are you sure you want to logout?", "Logout Application", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation);
            if (reply == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void user_main_page_Load(object sender, EventArgs e)
        {
            lblTPnumber.Text = fullname;
            userPicBox.Image = userImageList.Images[num];
        }

        private void btnReserve_Click(object sender, EventArgs e)
        {
            Student_Reserved_Page srp = new Student_Reserved_Page();
            srp.Show();
            this.Hide();
        }

        private void btnReport_Click(object sender, EventArgs e)
        {
            ReportMainPage rmp = new ReportMainPage();
            rmp.Show();
            this.Hide();
        }

        private void btnPending_Click(object sender, EventArgs e)
        {
            Pending p = new Pending();
            p.Show();
            this.Hide();
        }
    }
}
