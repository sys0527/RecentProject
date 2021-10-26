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
    public partial class BookRoom : Form
    {
        public BookRoom()
        {
            InitializeComponent();
        }

        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");

        //self added func

        private void setDateTime()
        {
            dtpSelectedDate.MinDate = DateTime.Now.AddDays(2);
            dtpSelectedDate.MaxDate = DateTime.Now.AddDays(16);
        }
        private void cboRoomTypes_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void cbxTime_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        private void dtpSelectedDate_ValueChanged(object sender, EventArgs e)
        {

        }

        private void BookRoom_Load(object sender, EventArgs e)
        {
            
            cboRoomTypes.Items.Add("Amber");
            cboRoomTypes.Items.Add("Black Thorn");
            cboRoomTypes.Items.Add("Cedar");
            cboRoomTypes.Items.Add("Daphne");
            cboRoomTypes.DropDownStyle = ComboBoxStyle.DropDownList;
            cboRoomTypes.SelectedIndex = 0;
            setDateTime();
            dtpSelectedDate.CustomFormat = "yyyy / MM / dd";
            int start = 9;
            for (start = 9; start <= 19; start += 2)
            {
                
                if (start > 12)
                {
                    cbxTime.Items.Add((start-12) + 00 + "PM");
                }
                else
                {
                    cbxTime.Items.Add(start + 00 + "AM");
                }
                
            }

            cbxTime.DropDownStyle = ComboBoxStyle.DropDownList;
            cbxTime.SelectedIndex = 0;
        }

        private void btnComfirm_Click_1(object sender, EventArgs e)
        {
            string stuID = txtStudentName.Text.Trim();
            string roomID = txtRoomId.Text.Trim();

            try
            {
                if ((stuID == "") || (roomID == ""))
                {
                    string message = null;
                    if (message == null)
                    {
                        MessageBox.Show("Please fill in your TP Number and the Room ID.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                else
                {
                    SqlConnection connt2 = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");
                    connt2.Open();

                    string selStr = "SELECT * FROM Room_Table WHERE User_Id='" + stuID + "' AND Status != 'Passed'";
                    SqlDataAdapter da = new SqlDataAdapter(selStr, connt2);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    if (ds.Tables[0].Rows.Count != 0)
                    {
                        MessageBox.Show("You have booked another room already", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }

                    else
                    {
                        string strData = dtpSelectedDate.Value.ToString("yyyy / MM / dd");
                        string rData = dtpSelectedDate.Value.ToShortDateString();
                        SqlConnection connt = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");
                        //check if user has record or not


                        //insert record into database
                        SqlCommand cmd = new SqlCommand("INSERT INTO Room_Table (Room_Id, Room_Type, Status, Date, Time, User_Id,RDate) VALUES (@roomId, @RoomType,@status, @date, @time, @userId, @rdate) ", connt);
                        cmd.Parameters.AddWithValue("@roomId", txtRoomId.Text);
                        cmd.Parameters.AddWithValue("@RoomType", cboRoomTypes.Text);
                        cmd.Parameters.AddWithValue("@status", "Booked");
                        cmd.Parameters.AddWithValue("@date", strData);
                        cmd.Parameters.AddWithValue("@time", cbxTime.Text);
                        cmd.Parameters.AddWithValue("@userId", txtStudentName.Text);
                        cmd.Parameters.AddWithValue("@rdate", rData);
                        connt.Open();
                        cmd.ExecuteNonQuery();
                        connt.Close();
                        MessageBox.Show("You have Booked successfully.", "Successfully", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        user_main_page umn = new user_main_page();
                        umn.enableDisableStudentButton(false);
                        umn.num = 0;
                        umn.enableDisableAdminButton(true);
                        umn.Show();
                        this.Hide();

                    }
                    connt2.Close();
                }
                
            }
            catch
            {
                MessageBox.Show("Booking Field.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
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
