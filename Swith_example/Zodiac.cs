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
    public partial class Zodiac : Form
    {
        public Zodiac()
        {
            InitializeComponent();
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            string zodiac = "";
            int year = int.Parse(txtYearBorn.Text) % 12;

            switch(year)
            {
                case 0:
                    zodiac = "Monkey";
                    break;
                case 1:
                    zodiac = "Rooster";
                    break;
                case 2:
                    zodiac = "Dog";
                    break;
                case 3:
                    zodiac = "Pig";
                    break;
                case 4:
                    zodiac = "Rat";
                    break;
                case 5:
                    zodiac = "Cow";
                    break;
                case 6:
                    zodiac = "Tiger";
                    break;
                case 7:
                    zodiac = "Rabbit";
                    break;
                case 8:
                    zodiac = "Dragon";
                    break;
                case 9:
                    zodiac = "Snake";
                    break;

                case 10:
                    zodiac = "Horse";
                    break;
                case 11:
                    zodiac = "sheep";
                    break;
            }
            lblZodiac.Text = zodiac;
        }
    }
}
