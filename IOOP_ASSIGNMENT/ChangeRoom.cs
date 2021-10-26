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
    public partial class ChangeRoom : Form
    {
        public ChangeRoom()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        private void LoadAvailableRoom(string UserIdNumber)
        {
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

        private void setDateTime()
        {
            dtpDateChange.MinDate = DateTime.Now;
            dtpDateChange.MaxDate = DateTime.Now.AddDays(14);
        }
        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            LoadAvailableRoom(txtUserId.Text);
            dgvUserBooked.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
        }

        private void ChangeRoom_Load(object sender, EventArgs e)
        {
            setDateTime();
            int start = 9;
            for (start = 9; start <= 19; start += 2)
            {

                if (start > 12)
                {
                    cbxTime.Items.Add((start - 12) + 00 + "PM");
                }
                else
                {
                    cbxTime.Items.Add(start + 00 + "AM");
                }

            }
            cboRoomTypes.Items.Add("Amber");
            cboRoomTypes.Items.Add("Black Thorn");
            cboRoomTypes.Items.Add("Cedar");
            cboRoomTypes.Items.Add("Daphne");
            cboRoomTypes.DropDownStyle = ComboBoxStyle.DropDownList;
            cboRoomTypes.SelectedIndex = -1;
            cbxTime.DropDownStyle = ComboBoxStyle.DropDownList;
            cbxTime.SelectedIndex = -1;
        }

        private void btnComfirm_Click(object sender, EventArgs e)
        {
            string stuID = txtUserId.Text.Trim();
            string times = cbxTime.Text.Trim();
            string roomID = txtRoomId.Text.Trim();
            string RoomType = cboRoomTypes.Text.Trim();
            if ((stuID == "") || (times == "") || (roomID == "") || (RoomType == "") )
            {
                string message = null;
                if (message == null)
                {
                    MessageBox.Show("Please fill in Room Id, Room type, TP Number, time and date for change.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                try
                {
                    SqlConnection connt2 = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");
                    connt2.Open();
                    SqlCommand updatePending = new SqlCommand("UPDATE Room_Table SET Status='Pending', Room_Type =@roomType, Room_Id =@roomId, Date =@date, Time=@time, RDate=@rdate WHERE User_Id=@userId", connt2);
                    updatePending.Parameters.AddWithValue("@date", dtpDateChange.Value.ToString("yyyy / MM / dd"));
                    updatePending.Parameters.AddWithValue("@time", cbxTime.Text);
                    updatePending.Parameters.AddWithValue("@userId", txtUserId.Text);
                    updatePending.Parameters.AddWithValue("@roomType", cboRoomTypes.Text);
                    updatePending.Parameters.AddWithValue("@roomId", txtRoomId.Text);
                    updatePending.Parameters.AddWithValue("@rdate", dtpDateChange.Value.ToShortDateString());
                    updatePending.ExecuteNonQuery();
                    connt2.Close();
                    MessageBox.Show("You have change successfully.", "Successfully", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    user_main_page umn = new user_main_page();
                    umn.enableDisableStudentButton(false);
                    umn.num = 0;
                    umn.enableDisableAdminButton(true);
                    umn.Show();
                    this.Hide();
                }
                catch
                {
                    MessageBox.Show("Change failed", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            
            
        }

        private void dgvUserBooked_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtUserId_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnBack_Click(object sender, EventArgs e)
        {
            Student_Reserved_Page srp = new Student_Reserved_Page();
            this.Hide();
            srp.Show();
        }
    }
}
