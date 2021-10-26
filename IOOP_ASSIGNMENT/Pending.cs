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
    public partial class Pending : Form
    {
        public Pending()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");

        private void btnMain_Click(object sender, EventArgs e)
        {
            user_main_page umn = new user_main_page();
            umn.enableDisableStudentButton(true);
            umn.num = 1;
            umn.enableDisableAdminButton(false);
            umn.Show();
            this.Hide();
        }


        private void btnShow_Click(object sender, EventArgs e)
        {
            
        }

     

        private void btnApprove_Click(object sender, EventArgs e)
        {
            string userid = txtUserId.Text;

            string studentcancel = "update Room_Table set Status=@sts where User_Id='" + userid + "' AND Status = 'Pending'";
            SqlCommand cmd = new SqlCommand(studentcancel, conn);
            cmd.Parameters.AddWithValue("sts", "Booked");
            conn.Open();
            cmd.ExecuteNonQuery();


            string user_id = txtUserId.Text.Trim();
            if (user_id == "")
            {
                string message = null;
                if (message == null)
                {
                    MessageBox.Show("Please fill in the UserId in order to approve the specific room.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            else
            {

                DialogResult reply;
                reply = MessageBox.Show("Are you sure you want to approve the room?", "Confirm Cancel", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (reply == DialogResult.Yes)
                {
                    MessageBox.Show("Reserved room has approve successfully", "Aprrove Successful", MessageBoxButtons.OK, MessageBoxIcon.Question);
                }
                else
                {
                    MessageBox.Show("Please fill in the correct information needed.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            conn.Close();
        }

        private void btnReject_Click(object sender, EventArgs e)
        {
            string userid = txtUserId.Text;

            string studentcancel = "delete Room_Table where User_Id='" + userid + "' AND Status = 'Pending'";
            SqlCommand cmd = new SqlCommand(studentcancel, conn);
            conn.Open();
            cmd.ExecuteNonQuery();


            string user_id = txtUserId.Text.Trim();
            if (user_id == "")
            {
                string message = null;
                if (message == null)
                {
                    MessageBox.Show("Please fill in the UserId in order to reject the specific room.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            else
            {

                DialogResult reply;
                reply = MessageBox.Show("Are you sure you want to reject the room?", "Confirm Cancel", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (reply == DialogResult.Yes)
                {
                    MessageBox.Show("Reserved room has reject successfully", "Cancel Successful", MessageBoxButtons.OK, MessageBoxIcon.Question);
                }
                else
                {
                    MessageBox.Show("Please fill in the correct information needed.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            conn.Close();


        }

        private void dgvUserPending_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void Pending_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");
            SqlDataAdapter da;
            DataSet ds = new DataSet();

            string selectSQL = "SELECT Room_Id, Room_Type, Date, Time, Status,User_Id FROM Room_Table WHERE Status = 'Pending'";
            conn.Open();
            da = new SqlDataAdapter(selectSQL, conn);

            ds.Clear();//clear database
            da.Fill(ds, "Room_Table");  //fill gray box with table
            dgvUserPending.Refresh();//refresh database
            dgvUserPending.DataSource = ds.Tables["Room_Table"];
            conn.Close();
        }
    }
}

