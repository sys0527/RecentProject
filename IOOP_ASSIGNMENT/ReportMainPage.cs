using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace IOOP_Assignment
{
    public partial class ReportMainPage : Form
    {
        public ReportMainPage()
        {
            InitializeComponent();
        }

        private void btn_homePage_Click(object sender, EventArgs e)
        {
            user_main_page umn = new user_main_page();
            umn.enableDisableStudentButton(true);
            umn.num = 1;
            umn.enableDisableAdminButton(false);
            umn.Show();
            this.Hide();
        }

        private void btn_view_Click(object sender, EventArgs e)
        {
            CReport r = new CReport();
            r.Show();
            this.Hide();
        }

        private void ReportMainPage_Load(object sender, EventArgs e)
        {

        }
    }
}
