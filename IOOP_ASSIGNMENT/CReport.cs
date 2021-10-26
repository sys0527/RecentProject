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
    public partial class CReport : Form
    {
        string[] calMonth = { "01", "02", "03", "04", "05", "06", "07", "08",
            "09", "10", "11", "12" };
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\DB_IOOP_Assignment.mdf;Integrated Security=True;Connect Timeout=30");

         int monthIndex = 0;
        public CReport()
        {
            InitializeComponent();
        }

        private void CReport_Load(object sender, EventArgs e)
        {
            panel1.Enabled = false; //disable the panel 
            cboSelectMonth.Items.AddRange(calMonth); // add the list of month names
            cboSelectMonth.SelectedIndex = 0;
            cboSelectMonth.DropDownStyle = ComboBoxStyle.DropDownList;
        }


        private void cboSelectMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            monthIndex = cboSelectMonth.SelectedIndex + 1;
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            string selectSQL = "SELECT Room_Id,Room_Type,RDate,Time, User_Id FROM Room_Table WHERE DATEPART(mm, Room_Table.RDate)=@month";

            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(selectSQL, conn);
            // set the parameter
            da.SelectCommand.Parameters.AddWithValue("@month", monthIndex);

            // create an instance of the dataset
            dsReport dsR = new dsReport();
            da.Fill(dsR, "dtReports"); // fill the datatable with rows
            //
            Report rpt = new Report();

            // set the report source to the dataset
            rpt.SetDataSource(dsR);

            // display the report on the reportviewer
            crystalReportViewer1.ReportSource = rpt;
            conn.Close();
        }

        private void rbtnViewDaily_CheckedChanged(object sender, EventArgs e)
        {
            panel1.Enabled = false;
            string selectSQL = "SELECT Room_Id,Room_Type,RDate,Time, User_Id FROM Room_Table WHERE Date=@today";
            conn.Open();
            SqlDataAdapter da = new SqlDataAdapter(selectSQL, conn);
            // set the parameter
            da.SelectCommand.Parameters.Add("@today", SqlDbType.DateTime).Value = DateTime.Now.ToShortDateString();
            // create an instance of the dataset
            dsReport dsR = new dsReport();
            da.Fill(dsR, "dtReports"); // fill the datatable with rows
            //
            Report rpt = new Report();

            // set the report source to the dataset
            rpt.SetDataSource(dsR);

            // display the report on the reportviewer
            crystalReportViewer1.ReportSource = rpt;
           
            conn.Close();
        }

        private void rbtnViewMonthly_CheckedChanged(object sender, EventArgs e)
        {
            panel1.Enabled = true;
        }

        private void lbl_SelectMonth(object sender, EventArgs e)
        {

        }

        private void panel(object sender, PaintEventArgs e)
        {

        }

        private void btn_back_Click(object sender, EventArgs e)
        {
            ReportMainPage xxx = new ReportMainPage();
            xxx.Show();
            this.Hide();
        }
    }
}
