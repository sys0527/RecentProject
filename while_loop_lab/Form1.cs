using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace while_loop_lab
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btn_calculate_Click(object sender, EventArgs e)
        {
            double balance = 1000;
            int year = 1;
            lstOutput.Items.Clear();
            lstOutput.Items.Add("Year\tBalance");
            lstOutput.Items.Add("- - - - - - - - - - -");
            while(balance<=10000)
            {
                balance = balance +(balance*0.0425);//balance *= 1.0425(same)
                lstOutput.Items.Add(year + "\t" + balance.ToString("n"));

                year += 1;
            }
           

        }

        private void btn_for_calc_Click(object sender, EventArgs e)
        {
            int year;
            double balance = 1000;
            lstOutput.Items.Clear();
            lstOutput.Items.Add("Year\tBalance");
            lstOutput.Items.Add("- - - - - - - - - - -");

            for (year = 1; year <= 10; year+=1)
            {
                balance *= 1.0425;
                lstOutput.Items.Add(year + "\t" + balance.ToString("n"));
            }
        }
    }
}
