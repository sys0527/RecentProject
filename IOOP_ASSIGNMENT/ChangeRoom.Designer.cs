
namespace IOOP_Assignment
{
    partial class ChangeRoom
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
            this.label1 = new System.Windows.Forms.Label();
            this.txtUserId = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnSearch = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.dtpDateChange = new System.Windows.Forms.DateTimePicker();
            this.label4 = new System.Windows.Forms.Label();
            this.dgvUserBooked = new System.Windows.Forms.DataGridView();
            this.cbxTime = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnBack = new System.Windows.Forms.Button();
            this.btnComfirm = new System.Windows.Forms.Button();
            this.cboRoomTypes = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtRoomId = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUserBooked)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(37, 77);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "User ID：";
            // 
            // txtUserId
            // 
            this.txtUserId.Location = new System.Drawing.Point(120, 74);
            this.txtUserId.Name = "txtUserId";
            this.txtUserId.Size = new System.Drawing.Size(121, 30);
            this.txtUserId.TabIndex = 1;
            this.txtUserId.TextChanged += new System.EventHandler(this.txtUserId_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(36, 22);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(208, 32);
            this.label2.TabIndex = 2;
            this.label2.Text = "Change Room";
            // 
            // btnSearch
            // 
            this.btnSearch.Location = new System.Drawing.Point(295, 73);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(104, 31);
            this.btnSearch.TabIndex = 3;
            this.btnSearch.Text = "&Search";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(37, 248);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(109, 25);
            this.label3.TabIndex = 5;
            this.label3.Text = "Change to:";
            // 
            // dtpDateChange
            // 
            this.dtpDateChange.CustomFormat = "yyyy/MM/dd ";
            this.dtpDateChange.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpDateChange.Location = new System.Drawing.Point(120, 289);
            this.dtpDateChange.Name = "dtpDateChange";
            this.dtpDateChange.Size = new System.Drawing.Size(200, 30);
            this.dtpDateChange.TabIndex = 6;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(37, 294);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 25);
            this.label4.TabIndex = 7;
            this.label4.Text = "Date:";
            // 
            // dgvUserBooked
            // 
            this.dgvUserBooked.AllowUserToAddRows = false;
            this.dgvUserBooked.AllowUserToDeleteRows = false;
            this.dgvUserBooked.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvUserBooked.Location = new System.Drawing.Point(42, 141);
            this.dgvUserBooked.Name = "dgvUserBooked";
            this.dgvUserBooked.ReadOnly = true;
            this.dgvUserBooked.RowHeadersWidth = 51;
            this.dgvUserBooked.RowTemplate.Height = 24;
            this.dgvUserBooked.Size = new System.Drawing.Size(657, 77);
            this.dgvUserBooked.TabIndex = 8;
            this.dgvUserBooked.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvUserBooked_CellContentClick);
            // 
            // cbxTime
            // 
            this.cbxTime.FormattingEnabled = true;
            this.cbxTime.Location = new System.Drawing.Point(120, 341);
            this.cbxTime.Name = "cbxTime";
            this.cbxTime.Size = new System.Drawing.Size(200, 33);
            this.cbxTime.TabIndex = 109;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(37, 349);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(66, 25);
            this.label5.TabIndex = 108;
            this.label5.Text = "Time：";
            // 
            // btnBack
            // 
            this.btnBack.Location = new System.Drawing.Point(67, 419);
            this.btnBack.Name = "btnBack";
            this.btnBack.Size = new System.Drawing.Size(112, 36);
            this.btnBack.TabIndex = 111;
            this.btnBack.Text = "Back";
            this.btnBack.UseVisualStyleBackColor = true;
            this.btnBack.Click += new System.EventHandler(this.btnBack_Click);
            // 
            // btnComfirm
            // 
            this.btnComfirm.Location = new System.Drawing.Point(517, 419);
            this.btnComfirm.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnComfirm.Name = "btnComfirm";
            this.btnComfirm.Size = new System.Drawing.Size(112, 36);
            this.btnComfirm.TabIndex = 110;
            this.btnComfirm.Text = "Comfirm";
            this.btnComfirm.UseVisualStyleBackColor = true;
            this.btnComfirm.Click += new System.EventHandler(this.btnComfirm_Click);
            // 
            // cboRoomTypes
            // 
            this.cboRoomTypes.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboRoomTypes.FormattingEnabled = true;
            this.cboRoomTypes.Location = new System.Drawing.Point(497, 286);
            this.cboRoomTypes.Name = "cboRoomTypes";
            this.cboRoomTypes.Size = new System.Drawing.Size(132, 33);
            this.cboRoomTypes.TabIndex = 120;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(370, 294);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(119, 25);
            this.label6.TabIndex = 119;
            this.label6.Text = "Room Type:";
            // 
            // txtRoomId
            // 
            this.txtRoomId.Location = new System.Drawing.Point(497, 344);
            this.txtRoomId.Name = "txtRoomId";
            this.txtRoomId.Size = new System.Drawing.Size(132, 30);
            this.txtRoomId.TabIndex = 118;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(370, 349);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(93, 25);
            this.label7.TabIndex = 117;
            this.label7.Text = "Room ID:";
            // 
            // ChangeRoom
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Info;
            this.ClientSize = new System.Drawing.Size(719, 489);
            this.Controls.Add(this.cboRoomTypes);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.txtRoomId);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.btnBack);
            this.Controls.Add(this.btnComfirm);
            this.Controls.Add(this.cbxTime);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dgvUserBooked);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.dtpDateChange);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnSearch);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtUserId);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "ChangeRoom";
            this.Text = "ChangeRoom";
            this.Load += new System.EventHandler(this.ChangeRoom_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvUserBooked)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtUserId;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DateTimePicker dtpDateChange;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridView dgvUserBooked;
        private System.Windows.Forms.ComboBox cbxTime;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnBack;
        private System.Windows.Forms.Button btnComfirm;
        private System.Windows.Forms.ComboBox cboRoomTypes;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtRoomId;
        private System.Windows.Forms.Label label7;
    }
}