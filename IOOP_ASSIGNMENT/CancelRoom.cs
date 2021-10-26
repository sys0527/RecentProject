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
    public partial class Cancel_Room : Form
    {
        public Cancel_Room()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");

        private void btnCancel_Click(object sender, EventArgs e)
        {
            string userid = txtUserId.Text;

            string studentcancel = "delete from Room_Table where User_Id='" + userid + "' AND (Status = 'Booked' OR Status = 'Pending')";
            SqlCommand cmd = new SqlCommand(studentcancel, conn);
            conn.Open();
            cmd.ExecuteNonQuery();

            string user_id = txtUserId.Text.Trim();
            if (user_id == "")
            {
                string message = null;
                if (message == null)
                {
                    MessageBox.Show("Please fill in your UserId in order to cancel room.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            else 
            {
                
                DialogResult reply;
                reply = MessageBox.Show("Are you sure you want to cancel the room?", "Confirm Cancel", MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (reply == DialogResult.Yes)
                {
                    MessageBox.Show("Reserved room has canceled successfully", "Cancel Successful", MessageBoxButtons.OK, MessageBoxIcon.Question);
                    
                    user_main_page umn = new user_main_page();
                    umn.enableDisableStudentButton(false);
                    umn.num = 0;
                    umn.enableDisableAdminButton(true);
                    umn.Show();
                    this.Hide();
                }
                else 
                {
                        MessageBox.Show("Please fill in the correct information needed.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            conn.Close();
            

        }

        private void Cancel_Room_Load(object sender, EventArgs e)
        {
            
        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            Student_Reserved_Page srp = new Student_Reserved_Page();
            srp.Show();
            this.Hide();
        }

        private void btnMain_Click(object sender, EventArgs e)
        {
            user_main_page umn = new user_main_page();
            umn.enableDisableStudentButton(false);
            umn.num = 0;
            umn.enableDisableAdminButton(true);
            umn.Show();
            this.Hide();
        }

        private void lblRoomDate_Click(object sender, EventArgs e)
        {

        }
        private void LoadAvailableRoom (string UserIdNumber)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");
            SqlDataAdapter da;
            DataSet ds = new DataSet();

            string selectSQL = "SELECT Room_Id, Room_Type, Date, Time, Status,User_Id FROM Room_Table WHERE User_Id=@userId AND Status != 'Passed'";
            conn.Open();
            da = new SqlDataAdapter(selectSQL, conn);
            da.SelectCommand.Parameters.AddWithValue("@userId", UserIdNumber);
            ds.Clear();//clear database
            da.Fill(ds, "Room_Table");  //fill gray box with table
            dgvUserBooked.Refresh();//refresh database
            dgvUserBooked.DataSource = ds.Tables["Room_Table"];
            conn.Close();
        }
        private void btnSearch_Click(object sender, EventArgs e)
        {
            LoadAvailableRoom(txtUserId.Text);
        }

        private void dgvUserBooked_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtUserId_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
