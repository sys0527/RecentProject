using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace eventsDemo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }

        private void button1_MouseHover(object sender, EventArgs e)
        {
            label1.Text = "hello";
        }

        private void button1_MouseLeave(object sender, EventArgs e)
        {
            label1.Text = "";//must use "" to clear
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            label2.Text = comboBox1.Text;
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            label3.Text = listBox1.SelectedItem.ToString();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            label4.Text = radioButton1.Name; 
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            label4.Text = radioButton2.Name;
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            comboBox1.SelectedIndex = 2;
            radioButton1.Checked = true;
            checkBox1.Checked = true;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            label5.Text = textBox1.Text;
            label6.Text = textBox1.Text.Length.ToString();
        }
    }
}
