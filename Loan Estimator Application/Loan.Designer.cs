namespace Loan_Estimator_Application
{
    partial class frmMain
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMain));
            this.IbILoan = new System.Windows.Forms.Label();
            this.IbIRate = new System.Windows.Forms.Label();
            this.txtLoan = new System.Windows.Forms.TextBox();
            this.cboRate = new System.Windows.Forms.ComboBox();
            this.grpTerm = new System.Windows.Forms.GroupBox();
            this.radLength15 = new System.Windows.Forms.RadioButton();
            this.radLength10 = new System.Windows.Forms.RadioButton();
            this.radLength5 = new System.Windows.Forms.RadioButton();
            this.btnDone = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.grpTerm.SuspendLayout();
            this.SuspendLayout();
            // 
            // IbILoan
            // 
            this.IbILoan.AutoSize = true;
            this.IbILoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IbILoan.Location = new System.Drawing.Point(47, 34);
            this.IbILoan.Name = "IbILoan";
            this.IbILoan.Size = new System.Drawing.Size(129, 25);
            this.IbILoan.TabIndex = 0;
            this.IbILoan.Text = "Loan Amount";
            // 
            // IbIRate
            // 
            this.IbIRate.AutoSize = true;
            this.IbIRate.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.IbIRate.Location = new System.Drawing.Point(47, 106);
            this.IbIRate.Name = "IbIRate";
            this.IbIRate.Size = new System.Drawing.Size(121, 25);
            this.IbIRate.TabIndex = 1;
            this.IbIRate.Text = "Interest Rate";
            // 
            // txtLoan
            // 
            this.txtLoan.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtLoan.Location = new System.Drawing.Point(196, 29);
            this.txtLoan.Name = "txtLoan";
            this.txtLoan.Size = new System.Drawing.Size(221, 30);
            this.txtLoan.TabIndex = 2;
            this.txtLoan.Text = "pls enter here";
            this.txtLoan.MouseClick += new System.Windows.Forms.MouseEventHandler(this.txtLoan_MouseClick);
            this.txtLoan.TextChanged += new System.EventHandler(this.txtLoan_TextChanged);
            // 
            // cboRate
            // 
            this.cboRate.BackColor = System.Drawing.SystemColors.Control;
            this.cboRate.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboRate.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cboRate.FormattingEnabled = true;
            this.cboRate.Items.AddRange(new object[] {
            "4.5 ",
            "6.25 ",
            "7.0 ",
            "8.325 ",
            "9.0 ",
            "10.0 "});
            this.cboRate.Location = new System.Drawing.Point(196, 98);
            this.cboRate.Name = "cboRate";
            this.cboRate.Size = new System.Drawing.Size(121, 33);
            this.cboRate.TabIndex = 3;
            // 
            // grpTerm
            // 
            this.grpTerm.Controls.Add(this.radLength15);
            this.grpTerm.Controls.Add(this.radLength10);
            this.grpTerm.Controls.Add(this.radLength5);
            this.grpTerm.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.grpTerm.Location = new System.Drawing.Point(52, 171);
            this.grpTerm.Name = "grpTerm";
            this.grpTerm.Size = new System.Drawing.Size(189, 169);
            this.grpTerm.TabIndex = 4;
            this.grpTerm.TabStop = false;
            this.grpTerm.Text = "Loan Term";
            // 
            // radLength15
            // 
            this.radLength15.AutoSize = true;
            this.radLength15.Location = new System.Drawing.Point(25, 104);
            this.radLength15.Name = "radLength15";
            this.radLength15.Size = new System.Drawing.Size(111, 29);
            this.radLength15.TabIndex = 2;
            this.radLength15.TabStop = true;
            this.radLength15.Text = "15 Years";
            this.radLength15.UseVisualStyleBackColor = true;
            // 
            // radLength10
            // 
            this.radLength10.AutoSize = true;
            this.radLength10.Location = new System.Drawing.Point(25, 69);
            this.radLength10.Name = "radLength10";
            this.radLength10.Size = new System.Drawing.Size(111, 29);
            this.radLength10.TabIndex = 1;
            this.radLength10.TabStop = true;
            this.radLength10.Text = "10 Years";
            this.radLength10.UseVisualStyleBackColor = true;
            // 
            // radLength5
            // 
            this.radLength5.AutoSize = true;
            this.radLength5.Location = new System.Drawing.Point(25, 39);
            this.radLength5.Name = "radLength5";
            this.radLength5.Size = new System.Drawing.Size(100, 29);
            this.radLength5.TabIndex = 0;
            this.radLength5.TabStop = true;
            this.radLength5.Text = "5 Years";
            this.radLength5.UseVisualStyleBackColor = true;
            // 
            // btnDone
            // 
            this.btnDone.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btnDone.BackgroundImage")));
            this.btnDone.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnDone.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnDone.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDone.Location = new System.Drawing.Point(52, 346);
            this.btnDone.Name = "btnDone";
            this.btnDone.Size = new System.Drawing.Size(81, 68);
            this.btnDone.TabIndex = 5;
            this.btnDone.Text = "&Done";
            this.btnDone.UseVisualStyleBackColor = true;
            this.btnDone.Click += new System.EventHandler(this.button1_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(242, 372);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(93, 42);
            this.button1.TabIndex = 6;
            this.button1.Text = "&Refresh";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnDone);
            this.Controls.Add(this.grpTerm);
            this.Controls.Add(this.cboRate);
            this.Controls.Add(this.txtLoan);
            this.Controls.Add(this.IbIRate);
            this.Controls.Add(this.IbILoan);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmMain";
            this.Text = "Loan Payment Estimate";
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.grpTerm.ResumeLayout(false);
            this.grpTerm.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label IbILoan;
        private System.Windows.Forms.Label IbIRate;
        private System.Windows.Forms.TextBox txtLoan;
        private System.Windows.Forms.ComboBox cboRate;
        private System.Windows.Forms.GroupBox grpTerm;
        private System.Windows.Forms.RadioButton radLength15;
        private System.Windows.Forms.RadioButton radLength10;
        private System.Windows.Forms.RadioButton radLength5;
        private System.Windows.Forms.Button btnDone;
        private System.Windows.Forms.Button button1;
    }
}

