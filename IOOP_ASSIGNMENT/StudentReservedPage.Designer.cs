
namespace IOOP_Assignment
{
    partial class Student_Reserved_Page
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Student_Reserved_Page));
            this.btnBookingRoom = new System.Windows.Forms.Button();
            this.btnChange = new System.Windows.Forms.Button();
            this.btnCancel = new System.Windows.Forms.Button();
            this.dgvRoom = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.cboRoomTypes = new System.Windows.Forms.ComboBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.dtpSelectedDate = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.dgvRoom)).BeginInit();
            this.SuspendLayout();
            // 
            // btnBookingRoom
            // 
            this.btnBookingRoom.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnBookingRoom.Image = ((System.Drawing.Image)(resources.GetObject("btnBookingRoom.Image")));
            this.btnBookingRoom.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnBookingRoom.Location = new System.Drawing.Point(694, 189);
            this.btnBookingRoom.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnBookingRoom.Name = "btnBookingRoom";
            this.btnBookingRoom.Size = new System.Drawing.Size(131, 50);
            this.btnBookingRoom.TabIndex = 11;
            this.btnBookingRoom.Text = "Booking Room";
            this.btnBookingRoom.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnBookingRoom.UseVisualStyleBackColor = true;
            this.btnBookingRoom.Click += new System.EventHandler(this.btnAvailable_Click);
            // 
            // btnChange
            // 
            this.btnChange.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChange.Image = ((System.Drawing.Image)(resources.GetObject("btnChange.Image")));
            this.btnChange.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnChange.Location = new System.Drawing.Point(694, 249);
            this.btnChange.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnChange.Name = "btnChange";
            this.btnChange.Size = new System.Drawing.Size(131, 44);
            this.btnChange.TabIndex = 12;
            this.btnChange.Text = "Change Room";
            this.btnChange.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnChange.UseVisualStyleBackColor = true;
            this.btnChange.Click += new System.EventHandler(this.btnChange_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCancel.Image = ((System.Drawing.Image)(resources.GetObject("btnCancel.Image")));
            this.btnCancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancel.Location = new System.Drawing.Point(694, 303);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(131, 47);
            this.btnCancel.TabIndex = 13;
            this.btnCancel.Text = "Cancel Room";
            this.btnCancel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // dgvRoom
            // 
            this.dgvRoom.AllowUserToAddRows = false;
            this.dgvRoom.AllowUserToDeleteRows = false;
            this.dgvRoom.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvRoom.Location = new System.Drawing.Point(40, 141);
            this.dgvRoom.Margin = new System.Windows.Forms.Padding(6, 8, 6, 8);
            this.dgvRoom.Name = "dgvRoom";
            this.dgvRoom.ReadOnly = true;
            this.dgvRoom.RowHeadersWidth = 51;
            this.dgvRoom.RowTemplate.Height = 24;
            this.dgvRoom.Size = new System.Drawing.Size(631, 267);
            this.dgvRoom.TabIndex = 111;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(56, 37);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(94, 20);
            this.label3.TabIndex = 113;
            this.label3.Text = "Room Type:";
            // 
            // cboRoomTypes
            // 
            this.cboRoomTypes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboRoomTypes.FormattingEnabled = true;
            this.cboRoomTypes.Location = new System.Drawing.Point(193, 29);
            this.cboRoomTypes.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.cboRoomTypes.Name = "cboRoomTypes";
            this.cboRoomTypes.Size = new System.Drawing.Size(243, 28);
            this.cboRoomTypes.TabIndex = 114;
            this.cboRoomTypes.SelectedIndexChanged += new System.EventHandler(this.cboRoomTypes_SelectedIndexChanged);
            // 
            // btnSearch
            // 
            this.btnSearch.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSearch.Location = new System.Drawing.Point(470, 75);
            this.btnSearch.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(108, 37);
            this.btnSearch.TabIndex = 123;
            this.btnSearch.Text = "Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // button1
            // 
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(694, 360);
            this.button1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(131, 41);
            this.button1.TabIndex = 124;
            this.button1.Text = "back";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(56, 84);
            this.label2.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(48, 20);
            this.label2.TabIndex = 125;
            this.label2.Text = "Date:";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // dtpSelectedDate
            // 
            this.dtpSelectedDate.CustomFormat = "yyyy/MM/dd ";
            this.dtpSelectedDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpSelectedDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpSelectedDate.Location = new System.Drawing.Point(193, 78);
            this.dtpSelectedDate.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dtpSelectedDate.Name = "dtpSelectedDate";
            this.dtpSelectedDate.Size = new System.Drawing.Size(243, 26);
            this.dtpSelectedDate.TabIndex = 126;
            this.dtpSelectedDate.ValueChanged += new System.EventHandler(this.dtpSelectedDate_ValueChanged);
            // 
            // Student_Reserved_Page
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Menu;
            this.ClientSize = new System.Drawing.Size(873, 425);
            this.Controls.Add(this.dtpSelectedDate);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.cboRoomTypes);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.dgvRoom);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnChange);
            this.Controls.Add(this.btnBookingRoom);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Name = "Student_Reserved_Page";
            this.Text = "Student_Reserved_Page";
            this.Load += new System.EventHandler(this.Student_Reserved_Page_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvRoom)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnBookingRoom;
        private System.Windows.Forms.Button btnChange;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.DataGridView dgvRoom;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cboRoomTypes;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dtpSelectedDate;
    }
}