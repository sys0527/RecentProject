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
    public partial class Student_Reserved_Page : Form
    {
        public Student_Reserved_Page()
        {
            InitializeComponent();
        }
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");
        SqlDataAdapter da;
        DataSet ds = new DataSet();

        private void LoadAvailableRoom(string columvalue)
        { 
            string selectSQL = "SELECT Room_Id, Room_Type, Date, Time, Status,User_Id FROM Room_Table WHERE Room_Type=@columvalue";
            string strData = dtpSelectedDate.Value.ToString("yyyy / MM / dd");
            conn.Open();
            da = new SqlDataAdapter(selectSQL, conn);
            da.SelectCommand.Parameters.AddWithValue("@columvalue", columvalue);
            ds.Clear();//clear database
            da.Fill(ds, "Room_Table");  //fill gray box with table
            dgvRoom.Refresh();//refresh database
            dgvRoom.DataSource = ds.Tables["Room_Table"];

            for (int i = 0; i < dgvRoom.Rows.Count; i++)
            {
                string currentRow = dgvRoom.Rows[i].Cells["Date"].Value.ToString();
                if (currentRow == strData || currentRow == "")
                {
                    dgvRoom.Rows[i].Visible = true;
                }
                
                else
                {
                    dgvRoom.CurrentCell = null;
                    dgvRoom.Rows[i].Visible = false;
                }
                conn.Close();
            }
        }
        private void Student_Reserved_Page_Load(object sender, EventArgs e)
        {
            cboRoomTypes.Items.Add("Amber");
            cboRoomTypes.Items.Add("Black Thorn");
            cboRoomTypes.Items.Add("Cedar");
            cboRoomTypes.Items.Add("Daphne");
            cboRoomTypes.DropDownStyle = ComboBoxStyle.DropDownList;
            cboRoomTypes.SelectedIndex = 0;
            setDateTime();
        }

        private void setDateTime()
        {
            dtpSelectedDate.MinDate = DateTime.Now;
            dtpSelectedDate.MaxDate = DateTime.Now.AddDays(14);
        }
        
        private void btnMain_Click(object sender, EventArgs e)
        {

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            Cancel_Room cr = new Cancel_Room();
            cr.Show();
            this.Hide();

        }

        private void btnAvailable_Click(object sender, EventArgs e)
        {
            BookRoom ra = new BookRoom();
            ra.Show();
            this.Hide();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");

            SqlCommand updateOldRecord = new SqlCommand("UPDATE Room_Table SET Status='Passed' WHERE Date < CONVERT(Date,GETDATE())", conn);
            conn.Open();
            updateOldRecord.ExecuteNonQuery();
            conn.Close();
            LoadAvailableRoom(cboRoomTypes.Text);
            dgvRoom.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.AllCells;
        }

        private void cboRoomTypes_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }


        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            user_main_page umn = new user_main_page();
            umn.enableDisableStudentButton(false);
            umn.num = 0;
            umn.enableDisableAdminButton(true);
            umn.Show();
            this.Hide();
        }

        private void btnChange_Click(object sender, EventArgs e)
        {
            ChangeRoom cr = new ChangeRoom();
            cr.Show();
            this.Hide();
        }

        private void dtpSelectedDate_ValueChanged(object sender, EventArgs e)
        {

        }
    }
}
