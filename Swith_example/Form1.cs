using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Swith_example
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void txtGrade_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar.Equals(Keys.Enter))
            {
                string classification;

                string grade = txtGrade.Text.ToUpper() ;

                switch(grade)
                {
                    case "A+":
                    case "A":
                        classification = "First class";
                        break;
                    case "B+":
                    case "B":
                        classification = "Second Class Upper";
                        break;
                    case "C+":
                    case "C":
                        classification = "Second Class Lower";
                        break;
                    case "D":
                        classification = "Third Class";
                        break;
                    case "F":
                        classification = "Fail";
                        break;
                        //any other value, default is equivalent to an else part in an if-else
                    default:
                        classification = "No such grade";
                        break;
                }
                lblclassification.Text = classification; 
            }
        }
    }
}
