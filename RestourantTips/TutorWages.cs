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
    public partial class frmTutorWages : Form
    {
        public frmTutorWages()
        {
            InitializeComponent();
        }

        private void btnTotalWage_Click(object sender, EventArgs e)
        {
            int workloakhours;
            double wage;

            //read in workload hour
            workloakhours = int.Parse(txtWorkload.Text);

            //determine the hours and calculate wage

            if(workloakhours <= 10)
            {
                wage = workloakhours * 8.00;
            }
            else
            {
                //max hour charge + OT
                wage = 80 + ((workloakhours -10) * 5.0);           
            }
            //display
            lblTotalWage.Text = wage.ToString("c");
        }
    }
}
