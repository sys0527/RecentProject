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

namespace restaurantReccipt
{
    
    public partial class Form1 : Form
    {
        float totalfood, svc, tax, total;
        public Form1()
        {
            InitializeComponent();
        }

        private void btnNew_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            label5.Text = "";
            label6.Text = "";
            label7.Text = "";
            textBox1.Focus();
        }

        private void btnTotal_Click(object sender, EventArgs e)
        {
            
            totalfood = float.Parse(textBox1.Text);
            //cauculate
            svc = totalfood * 0.05f; //f make the 0.05 become float
            tax = totalfood * 0.06f;
            //cauculate total
            total = totalfood + svc + tax;
            //display output
            label5.Text = svc.ToString("C");
            label6.Text = tax.ToString("C");
            label7.Text = total.ToString("C");//show two decimal in ringit

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            CultureInfo c = new CultureInfo("ms-MY");//zh-CN,en-SG
           System.Threading.Thread.CurrentThread.CurrentCulture = c;
            label8.Text = DateTime.Now.ToLongTimeString();
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            lstReceipt.Items.Clear();
            lstReceipt.Items.Add("Data:" + DateTime.Now.ToShortDateString());
            lstReceipt.Items.Add("Data:" + DateTime.Now.ToShortTimeString());

            lstReceipt.Items.Add("\n");

            lstReceipt.Items.Add("Total Food and Beverge Charges" + "\t" + totalfood.ToString("C"));
            lstReceipt.Items.Add("Service Charge \t\t\t" + svc.ToString("C"));
            lstReceipt.Items.Add("Total Tax Charge \t\t\t" + tax.ToString("C"));
            lstReceipt.Items.Add("\t\t\t\t -----------");
            lstReceipt.Items.Add("Total \t\t\t\t" + total.ToString("C"));
            lstReceipt.Items.Add("\t\t\t\t -----------");
        }
        private void timer1_Tick(object sender, EventArgs e)
        {
            label8.Text = DateTime.Now.ToLongTimeString();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult reply = MessageBox.Show("Do you want to exit this application?", "Confirm Exit", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (reply == DialogResult.Yes)
            {
                Application.Exit();
            }
        }


    }
}
