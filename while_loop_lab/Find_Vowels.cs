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
    public partial class Find_Vowels : Form
    {
        public Find_Vowels()
        {
            InitializeComponent();
        }

        private void btn_check_Click(object sender, EventArgs e)
        {
            int countA = 0, countE = 0, countI = 0, countO = 0, countU = 0,totalwords = 1;
            int textLength = txtVowels.Text.Length;
            
            int index = 0;//loop counter
            string temp;
            while (index < textLength)
            {
                temp = txtVowels.Text.Substring(index, 1);

                switch (temp)
                {
                    case "A":
                    case "a":
                        countA += 1;
                        break;
                    case "E":
                    case "e":
                        countE += 1;
                        break;
                    case "I":
                    case "i":
                        countI += 1;
                        break;
                    case "O":
                    case "o":
                        countO += 1;
                        break;
                    case "U":
                    case "u":
                        countU += 1;
                        break;
                }//case
                if(temp.Equals(" "))
                {
                    totalwords += 1;
                }
                index++;
            }//while
            //display resault
            lblA.Text = countA.ToString();
            lblE.Text = countE.ToString();
            lblI.Text = countI.ToString();
            lblO.Text = countO.ToString();
            lblU.Text = countU.ToString();
            lblTotal.Text = totalwords.ToString();
        }
    }
}
