using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Loan_Estimator_Application
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void txtLoan_TextChanged(object sender, EventArgs e)
        {

        }

        private void frmMain_Load(object sender, EventArgs e)
        {
            cboRate.SelectedIndex = 0;
        }

        private void txtLoan_MouseClick(object sender, MouseEventArgs e)
        {
            txtLoan.Text = "";
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            //clear textbox
            txtLoan.Clear();

            //clears the combobox selection
            cboRate.SelectedIndex = -1;
            //reset to the first item
            cboRate.SelectedIndex = 0;
            //deselect the ratio button
            radLength5.Checked = false;
            radLength10.Checked = false;
            radLength15.Checked = false;

            txtLoan.Focus();
        }
    }
}
