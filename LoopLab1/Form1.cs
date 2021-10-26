using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace LoopLab1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            temperature.Items.Clear();
            double F = 0, C = 0;
            double start, end;

            if (txtStart.Text.Length == 0 || txtEnd.Text.Length == 0)
            {
                MessageBox.Show("Please enter the start and end temperature", "Missing Start and End Temperature", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else { 
                start = double.Parse(txtStart.Text);
                end = double.Parse(txtEnd.Text);

                temperature.Items.Add("Fahrenheit\tCelsius");
                for (F = start; F <= end; F += 1)
                {
                    C = 0.55556 * F - 32;
                    temperature.Items.Add(F + "\t\t" + C.ToString("n1"));
                }
            }
        }

        private void txtStart_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (char.IsDigit(e.KeyChar) || char.IsControl(e.KeyChar))
            {
                e.Handled = false;
            }
            else { e.Handled = true;  }
        }
    }
}
