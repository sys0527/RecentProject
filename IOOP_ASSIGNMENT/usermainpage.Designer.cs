namespace IOOP_Assignment
{
    partial class user_main_page
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(user_main_page));
            this.btnLogout = new System.Windows.Forms.Button();
            this.userPicBox = new System.Windows.Forms.PictureBox();
            this.userImageList = new System.Windows.Forms.ImageList(this.components);
            this.lblTPnumber = new System.Windows.Forms.Label();
            this.btnReserve = new System.Windows.Forms.Button();
            this.btnPending = new System.Windows.Forms.Button();
            this.btnReport = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.userPicBox)).BeginInit();
            this.SuspendLayout();
            // 
            // btnLogout
            // 
            this.btnLogout.Location = new System.Drawing.Point(574, 393);
            this.btnLogout.Name = "btnLogout";
            this.btnLogout.Size = new System.Drawing.Size(95, 67);
            this.btnLogout.TabIndex = 3;
            this.btnLogout.Text = "&Logout";
            this.btnLogout.UseVisualStyleBackColor = true;
            this.btnLogout.Click += new System.EventHandler(this.button3_Click);
            // 
            // userPicBox
            // 
            this.userPicBox.Location = new System.Drawing.Point(243, 66);
            this.userPicBox.Name = "userPicBox";
            this.userPicBox.Size = new System.Drawing.Size(294, 277);
            this.userPicBox.TabIndex = 6;
            this.userPicBox.TabStop = false;
            // 
            // userImageList
            // 
            this.userImageList.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("userImageList.ImageStream")));
            this.userImageList.TransparentColor = System.Drawing.Color.Transparent;
            this.userImageList.Images.SetKeyName(0, "StudentLogin");
            this.userImageList.Images.SetKeyName(1, "LibrarianLogin");
            // 
            // lblTPnumber
            // 
            this.lblTPnumber.Location = new System.Drawing.Point(36, 23);
            this.lblTPnumber.Name = "lblTPnumber";
            this.lblTPnumber.Size = new System.Drawing.Size(272, 25);
            this.lblTPnumber.TabIndex = 7;
            // 
            // btnReserve
            // 
            this.btnReserve.Location = new System.Drawing.Point(41, 393);
            this.btnReserve.Name = "btnReserve";
            this.btnReserve.Size = new System.Drawing.Size(160, 67);
            this.btnReserve.TabIndex = 8;
            this.btnReserve.Text = "&Reserve meeting room";
            this.btnReserve.UseVisualStyleBackColor = true;
            this.btnReserve.Visible = false;
            this.btnReserve.Click += new System.EventHandler(this.btnReserve_Click);
            // 
            // btnPending
            // 
            this.btnPending.Location = new System.Drawing.Point(369, 393);
            this.btnPending.Name = "btnPending";
            this.btnPending.Size = new System.Drawing.Size(163, 67);
            this.btnPending.TabIndex = 10;
            this.btnPending.Text = "Pending Request";
            this.btnPending.UseVisualStyleBackColor = true;
            this.btnPending.Click += new System.EventHandler(this.btnPending_Click);
            // 
            // btnReport
            // 
            this.btnReport.Location = new System.Drawing.Point(243, 393);
            this.btnReport.Name = "btnReport";
            this.btnReport.Size = new System.Drawing.Size(84, 67);
            this.btnReport.TabIndex = 9;
            this.btnReport.Text = "&Report";
            this.btnReport.UseVisualStyleBackColor = true;
            this.btnReport.Click += new System.EventHandler(this.btnReport_Click);
            // 
            // user_main_page
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(732, 534);
            this.Controls.Add(this.btnPending);
            this.Controls.Add(this.btnReport);
            this.Controls.Add(this.btnReserve);
            this.Controls.Add(this.lblTPnumber);
            this.Controls.Add(this.userPicBox);
            this.Controls.Add(this.btnLogout);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "user_main_page";
            this.Text = "User\'s_Main_Page";
            this.Load += new System.EventHandler(this.user_main_page_Load);
            ((System.ComponentModel.ISupportInitialize)(this.userPicBox)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnLogout;
        private System.Windows.Forms.PictureBox userPicBox;
        private System.Windows.Forms.ImageList userImageList;
        private System.Windows.Forms.Label lblTPnumber;
        private System.Windows.Forms.Button btnReserve;
        private System.Windows.Forms.Button btnPending;
        private System.Windows.Forms.Button btnReport;
    }
}