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
    public partial class RegisterUser : Form
    {
        SqlConnection connt;
        public RegisterUser()
        {
            InitializeComponent();
        }

        private void RegisterUser_Load(object sender, EventArgs e)
        {
            // set up combobox
            cboRole.Items.Add("Admin");
            cboRole.Items.Add("Student");
            cboRole.DropDownStyle = ComboBoxStyle.DropDownList;
            cboRole.SelectedIndex = 0;
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            connt = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");

            string insertSQL = "INSERT INTO Users_Table (Fullname, Email_Addr, User_Id, Password, Rules) VALUES (@fullname, @email, @userid, @password, @rule)";

            connt.Open();
            SqlCommand cmd = new SqlCommand(insertSQL, connt);

            // define the parameter values
            cmd.Parameters.AddWithValue("@fullname", txtFullname.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@userid", txtUserId.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@rule", cboRole.Text);
            
            cmd.ExecuteNonQuery(); // execute the sql command
            connt.Close(); // close the connection

            MessageBox.Show("You have register successfully.","Welcome", MessageBoxButtons.OK, MessageBoxIcon.Information);

            User_Login ul = new User_Login();
            ul.Show();
            this.Hide();

        }
    }
}
