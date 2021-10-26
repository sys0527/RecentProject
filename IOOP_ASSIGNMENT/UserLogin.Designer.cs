
namespace IOOP_Assignment
{
    partial class User_Login
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(User_Login));
            this.lblLibLogin = new System.Windows.Forms.Label();
            this.picUni = new System.Windows.Forms.PictureBox();
            this.btnLogin = new System.Windows.Forms.Button();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.txtUserId = new System.Windows.Forms.TextBox();
            this.lblPassword = new System.Windows.Forms.Label();
            this.lblUserId = new System.Windows.Forms.Label();
            this.linklabelRegister = new System.Windows.Forms.LinkLabel();
            this.chkView = new System.Windows.Forms.CheckBox();
            this.btnExit = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.picUni)).BeginInit();
            this.SuspendLayout();
            // 
            // lblLibLogin
            // 
            this.lblLibLogin.AutoSize = true;
            this.lblLibLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLibLogin.Location = new System.Drawing.Point(353, 198);
            this.lblLibLogin.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblLibLogin.Name = "lblLibLogin";
            this.lblLibLogin.Size = new System.Drawing.Size(78, 29);
            this.lblLibLogin.TabIndex = 20;
            this.lblLibLogin.Text = "Login";
            this.lblLibLogin.Click += new System.EventHandler(this.lblLibLogin_Click);
            // 
            // picUni
            // 
            this.picUni.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("picUni.BackgroundImage")));
            this.picUni.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.picUni.Location = new System.Drawing.Point(300, 25);
            this.picUni.Margin = new System.Windows.Forms.Padding(4);
            this.picUni.Name = "picUni";
            this.picUni.Size = new System.Drawing.Size(181, 158);
            this.picUni.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.picUni.TabIndex = 19;
            this.picUni.TabStop = false;
            // 
            // btnLogin
            // 
            this.btnLogin.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLogin.Image = ((System.Drawing.Image)(resources.GetObject("btnLogin.Image")));
            this.btnLogin.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLogin.Location = new System.Drawing.Point(347, 367);
            this.btnLogin.Margin = new System.Windows.Forms.Padding(4);
            this.btnLogin.Name = "btnLogin";
            this.btnLogin.Size = new System.Drawing.Size(89, 58);
            this.btnLogin.TabIndex = 18;
            this.btnLogin.Text = "&Login";
            this.btnLogin.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnLogin.UseVisualStyleBackColor = true;
            this.btnLogin.Click += new System.EventHandler(this.btnLogin_Click);
            // 
            // txtPassword
            // 
            this.txtPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassword.Location = new System.Drawing.Point(375, 290);
            this.txtPassword.Margin = new System.Windows.Forms.Padding(4);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.Size = new System.Drawing.Size(160, 26);
            this.txtPassword.TabIndex = 17;
            // 
            // txtUserId
            // 
            this.txtUserId.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUserId.Location = new System.Drawing.Point(375, 250);
            this.txtUserId.Margin = new System.Windows.Forms.Padding(4);
            this.txtUserId.Name = "txtUserId";
            this.txtUserId.Size = new System.Drawing.Size(160, 26);
            this.txtUserId.TabIndex = 16;
            // 
            // lblPassword
            // 
            this.lblPassword.AutoSize = true;
            this.lblPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPassword.Location = new System.Drawing.Point(255, 294);
            this.lblPassword.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblPassword.Name = "lblPassword";
            this.lblPassword.Size = new System.Drawing.Size(83, 20);
            this.lblPassword.TabIndex = 15;
            this.lblPassword.Text = "Password";
            // 
            // lblUserId
            // 
            this.lblUserId.AutoSize = true;
            this.lblUserId.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUserId.Location = new System.Drawing.Point(255, 252);
            this.lblUserId.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblUserId.Name = "lblUserId";
            this.lblUserId.Size = new System.Drawing.Size(58, 20);
            this.lblUserId.TabIndex = 14;
            this.lblUserId.Text = "UserId";
            // 
            // linklabelRegister
            // 
            this.linklabelRegister.AutoSize = true;
            this.linklabelRegister.Font = new System.Drawing.Font("Palatino Linotype", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.linklabelRegister.LinkColor = System.Drawing.Color.Red;
            this.linklabelRegister.Location = new System.Drawing.Point(687, 25);
            this.linklabelRegister.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.linklabelRegister.Name = "linklabelRegister";
            this.linklabelRegister.Size = new System.Drawing.Size(73, 23);
            this.linklabelRegister.TabIndex = 21;
            this.linklabelRegister.TabStop = true;
            this.linklabelRegister.Text = "Register";
            this.linklabelRegister.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkLabelRegister_LinkClicked);
            // 
            // chkView
            // 
            this.chkView.AutoSize = true;
            this.chkView.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.chkView.ForeColor = System.Drawing.Color.Black;
            this.chkView.Location = new System.Drawing.Point(557, 293);
            this.chkView.Margin = new System.Windows.Forms.Padding(4);
            this.chkView.Name = "chkView";
            this.chkView.Size = new System.Drawing.Size(146, 24);
            this.chkView.TabIndex = 22;
            this.chkView.Text = "View Password";
            this.chkView.UseVisualStyleBackColor = true;
            this.chkView.CheckedChanged += new System.EventHandler(this.chkView_CheckedChanged);
            // 
            // btnExit
            // 
            this.btnExit.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnExit.Image = ((System.Drawing.Image)(resources.GetObject("btnExit.Image")));
            this.btnExit.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExit.Location = new System.Drawing.Point(37, 25);
            this.btnExit.Margin = new System.Windows.Forms.Padding(4);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(89, 58);
            this.btnExit.TabIndex = 23;
            this.btnExit.Text = "&Exit";
            this.btnExit.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // User_Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.chkView);
            this.Controls.Add(this.linklabelRegister);
            this.Controls.Add(this.lblLibLogin);
            this.Controls.Add(this.picUni);
            this.Controls.Add(this.btnLogin);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.txtUserId);
            this.Controls.Add(this.lblPassword);
            this.Controls.Add(this.lblUserId);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "User_Login";
            this.Text = "User_Login";
            this.Load += new System.EventHandler(this.User_Login_Load);
            ((System.ComponentModel.ISupportInitialize)(this.picUni)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblLibLogin;
        private System.Windows.Forms.PictureBox picUni;
        private System.Windows.Forms.Button btnLogin;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.TextBox txtUserId;
        private System.Windows.Forms.Label lblPassword;
        private System.Windows.Forms.Label lblUserId;
        private System.Windows.Forms.LinkLabel linklabelRegister;
        private System.Windows.Forms.CheckBox chkView;
        private System.Windows.Forms.Button btnExit;
    }
}