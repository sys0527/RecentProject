using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;//改！！
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;

namespace databaseDemo
{
    public partial class Form1 : Form
    {
        SqlConnection conn;
        public Form1()
        {
            InitializeComponent();
        }

        private void btnSignIn_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\USERS\\OWNER\\DOCUMENTS\\VISUAL STUDIO 2019\\PROJECTS\\EVENTSDEMO\\BIN\\DEBUG\\DEBUG.MDF;Integrated Security=True;Connect Timeout=30");
            string strSQL = "SELECT * FROM Users WHERE FullName='" + txtLoginName.Text + "'AND Passwords='" + txtPassword.Text + "'";

            conn.Open(); // opens the connection

            //create the command object
            SqlCommand cmd = new SqlCommand(strSQL, conn);
            
            //executes the command
            SqlDataReader dr = cmd.ExecuteReader();

            //check whether any records found
            if (dr.HasRows)
            {
                MessageBox.Show("Welcome to my app", "Login Successful", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Unable login", "Login Failed", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            conn.Close();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            txtLoginName.Clear();
            txtPassword.Clear();
        }
    }
}
