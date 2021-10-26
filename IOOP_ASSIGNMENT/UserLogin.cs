using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace IOOP_Assignment
{
    public partial class User_Login : Form
    {
        SqlConnection connt;
        public User_Login()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            connt = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");

            string strSelect = "SELECT *  FROM Users_Table WHERE User_Id=@userid AND Password=@password ";

            //open conect
            connt.Open();

            //create command object
            SqlCommand cmd = new SqlCommand(strSelect, connt);

            //assign parameter 
            cmd.Parameters.AddWithValue("@userid", txtUserId.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            //executes command
            SqlDataReader dr = cmd.ExecuteReader();

            //check whether records found
            if (dr.HasRows)
            {
                dr.Read();//read column data value
                MessageBox.Show("Welcome " + dr["Fullname"].ToString(), "Login Successful", MessageBoxButtons.OK, MessageBoxIcon.Information);
                // create an instance of the form
                user_main_page dsh = new user_main_page();
                dsh.fullname = "Welcome " + dr["Fullname"].ToString();
                if (dr["Rules"].ToString().Equals("Admin"))
                {
                    dsh.enableDisableStudentButton(true);
                    dsh.num = 1;
                    dsh.enableDisableAdminButton(false);
                }
                else
                {
                    dsh.enableDisableStudentButton(false);
                    dsh.num = 0;
                    dsh.enableDisableAdminButton(true);
                }
                
                dsh.Show(); // show the form
                this.Hide(); // hide the login form from view

            }
            else
            {
                //faild login
                MessageBox.Show("Unable to login", "Login Failed", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            connt.Close();
        }

        private void lblLibLogin_Click(object sender, EventArgs e)
        {

        }

        private void linkLabelRegister_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            RegisterUser ru = new RegisterUser();
            ru.Show();
            this.Hide();
        }

        private void chkView_CheckedChanged(object sender, EventArgs e)
        {
            if (chkView.Checked)
            { // unmask the textbox
                txtPassword.UseSystemPasswordChar = false;
            }
            else
            {
                txtPassword.UseSystemPasswordChar = true;
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            DialogResult reply;
            reply = MessageBox.Show("Quit the Application?", "Confirm Quit", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (reply == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void User_Login_Load(object sender, EventArgs e)
        {
            txtPassword.UseSystemPasswordChar = true;
        }
    }
}
