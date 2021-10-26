
namespace IOOP_Assignment
{
    partial class BookRoom
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
            this.cbxTime = new System.Windows.Forms.ComboBox();
            this.dtpSelectedDate = new System.Windows.Forms.DateTimePicker();
            this.label5 = new System.Windows.Forms.Label();
            this.txtRoomId = new System.Windows.Forms.TextBox();
            this.txtStudentName = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnComfirm = new System.Windows.Forms.Button();
            this.btnBack = new System.Windows.Forms.Button();
            this.cboRoomTypes = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // cbxTime
            // 
            this.cbxTime.FormattingEnabled = true;
            this.cbxTime.Location = new System.Drawing.Point(157, 227);
            this.cbxTime.Name = "cbxTime";
            this.cbxTime.Size = new System.Drawing.Size(132, 33);
            this.cbxTime.TabIndex = 107;
            this.cbxTime.SelectedIndexChanged += new System.EventHandler(this.cbxTime_SelectedIndexChanged);
            // 
            // dtpSelectedDate
            // 
            this.dtpSelectedDate.CustomFormat = "yyyy/MM/dd ";
            this.dtpSelectedDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtpSelectedDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpSelectedDate.Location = new System.Drawing.Point(157, 189);
            this.dtpSelectedDate.Name = "dtpSelectedDate";
            this.dtpSelectedDate.Size = new System.Drawing.Size(219, 27);
            this.dtpSelectedDate.TabIndex = 105;
            this.dtpSelectedDate.ValueChanged += new System.EventHandler(this.dtpSelectedDate_ValueChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(30, 231);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(56, 25);
            this.label5.TabIndex = 100;
            this.label5.Text = "Time";
            // 
            // txtRoomId
            // 
            this.txtRoomId.Location = new System.Drawing.Point(157, 145);
            this.txtRoomId.Name = "txtRoomId";
            this.txtRoomId.Size = new System.Drawing.Size(132, 30);
            this.txtRoomId.TabIndex = 103;
            // 
            // txtStudentName
            // 
            this.txtStudentName.Location = new System.Drawing.Point(157, 62);
            this.txtStudentName.Name = "txtStudentName";
            this.txtStudentName.Size = new System.Drawing.Size(132, 30);
            this.txtStudentName.TabIndex = 104;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(30, 151);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(93, 25);
            this.label7.TabIndex = 101;
            this.label7.Text = "Room ID:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(30, 65);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(112, 25);
            this.label8.TabIndex = 102;
            this.label8.Text = "TP Number";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(30, 189);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(59, 25);
            this.label2.TabIndex = 96;
            this.label2.Text = "Date:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(29, 22);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(280, 32);
            this.label4.TabIndex = 99;
            this.label4.Text = "Booking New Room";
            // 
            // btnComfirm
            // 
            this.btnComfirm.Location = new System.Drawing.Point(222, 291);
            this.btnComfirm.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnComfirm.Name = "btnComfirm";
            this.btnComfirm.Size = new System.Drawing.Size(112, 36);
            this.btnComfirm.TabIndex = 94;
            this.btnComfirm.Text = "Comfirm";
            this.btnComfirm.UseVisualStyleBackColor = true;
            this.btnComfirm.Click += new System.EventHandler(this.btnComfirm_Click_1);
            // 
            // btnBack
            // 
            this.btnBack.Location = new System.Drawing.Point(34, 291);
            this.btnBack.Name = "btnBack";
            this.btnBack.Size = new System.Drawing.Size(112, 36);
            this.btnBack.TabIndex = 109;
            this.btnBack.Text = "Back";
            this.btnBack.UseVisualStyleBackColor = true;
            this.btnBack.Click += new System.EventHandler(this.btnBack_Click);
            // 
            // cboRoomTypes
            // 
            this.cboRoomTypes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboRoomTypes.FormattingEnabled = true;
            this.cboRoomTypes.Location = new System.Drawing.Point(157, 101);
            this.cboRoomTypes.Name = "cboRoomTypes";
            this.cboRoomTypes.Size = new System.Drawing.Size(132, 33);
            this.cboRoomTypes.TabIndex = 116;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(30, 104);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(119, 25);
            this.label3.TabIndex = 115;
            this.label3.Text = "Room Type:";
            // 
            // BookRoom
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Info;
            this.ClientSize = new System.Drawing.Size(440, 375);
            this.Controls.Add(this.cboRoomTypes);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnBack);
            this.Controls.Add(this.cbxTime);
            this.Controls.Add(this.dtpSelectedDate);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtRoomId);
            this.Controls.Add(this.txtStudentName);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnComfirm);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "BookRoom";
            this.Text = "BookRoom";
            this.Load += new System.EventHandler(this.BookRoom_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cbxTime;
        private System.Windows.Forms.DateTimePicker dtpSelectedDate;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtRoomId;
        private System.Windows.Forms.TextBox txtStudentName;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnComfirm;
        private System.Windows.Forms.Button btnBack;
        private System.Windows.Forms.ComboBox cboRoomTypes;
        private System.Windows.Forms.Label label3;
    }
}