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
    public partial class String_Function : Form
    {
        public String_Function()
        {
            InitializeComponent();
        }

        private void btnExtract_Click(object sender, EventArgs e)
        {
            string temp;
            int startpos = int.Parse(txtStart.Text);
            int numchars = int.Parse(txtNumChart.Text);
            temp = txtNumChart.Text.Substring(startpos, numchars);
            lblResault.Text = temp;
        }
    }
}
