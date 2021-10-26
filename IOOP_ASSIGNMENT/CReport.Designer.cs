
namespace IOOP_Assignment
{
    partial class CReport
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
            this.rbtnViewDaily = new System.Windows.Forms.RadioButton();
            this.rbtnViewMonthly = new System.Windows.Forms.RadioButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnView = new System.Windows.Forms.Button();
            this.cboSelectMonth = new System.Windows.Forms.ComboBox();
            this.lblSM = new System.Windows.Forms.Label();
            this.crystalReportViewer1 = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.Report1 = new IOOP_Assignment.Report();
            this.btn_back = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // rbtnViewDaily
            // 
            this.rbtnViewDaily.AutoSize = true;
            this.rbtnViewDaily.Location = new System.Drawing.Point(242, 19);
            this.rbtnViewDaily.Name = "rbtnViewDaily";
            this.rbtnViewDaily.Size = new System.Drawing.Size(140, 21);
            this.rbtnViewDaily.TabIndex = 1;
            this.rbtnViewDaily.TabStop = true;
            this.rbtnViewDaily.Text = "View Daily Report";
            this.rbtnViewDaily.UseVisualStyleBackColor = true;
            this.rbtnViewDaily.CheckedChanged += new System.EventHandler(this.rbtnViewDaily_CheckedChanged);
            // 
            // rbtnViewMonthly
            // 
            this.rbtnViewMonthly.AutoSize = true;
            this.rbtnViewMonthly.Location = new System.Drawing.Point(242, 46);
            this.rbtnViewMonthly.Name = "rbtnViewMonthly";
            this.rbtnViewMonthly.Size = new System.Drawing.Size(158, 21);
            this.rbtnViewMonthly.TabIndex = 2;
            this.rbtnViewMonthly.TabStop = true;
            this.rbtnViewMonthly.Text = "View Monthly Report";
            this.rbtnViewMonthly.UseVisualStyleBackColor = true;
            this.rbtnViewMonthly.CheckedChanged += new System.EventHandler(this.rbtnViewMonthly_CheckedChanged);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnView);
            this.panel1.Controls.Add(this.cboSelectMonth);
            this.panel1.Controls.Add(this.lblSM);
            this.panel1.Enabled = false;
            this.panel1.Location = new System.Drawing.Point(440, 11);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(348, 60);
            this.panel1.TabIndex = 3;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel);
            // 
            // btnView
            // 
            this.btnView.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnView.Location = new System.Drawing.Point(254, 8);
            this.btnView.Name = "btnView";
            this.btnView.Size = new System.Drawing.Size(81, 47);
            this.btnView.TabIndex = 2;
            this.btnView.Text = "View";
            this.btnView.UseVisualStyleBackColor = true;
            this.btnView.Click += new System.EventHandler(this.btnView_Click);
            // 
            // cboSelectMonth
            // 
            this.cboSelectMonth.FormattingEnabled = true;
            this.cboSelectMonth.Location = new System.Drawing.Point(127, 21);
            this.cboSelectMonth.Name = "cboSelectMonth";
            this.cboSelectMonth.Size = new System.Drawing.Size(121, 24);
            this.cboSelectMonth.TabIndex = 1;
            this.cboSelectMonth.SelectedIndexChanged += new System.EventHandler(this.cboSelectMonth_SelectedIndexChanged);
            // 
            // lblSM
            // 
            this.lblSM.AutoSize = true;
            this.lblSM.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSM.Location = new System.Drawing.Point(14, 25);
            this.lblSM.Name = "lblSM";
            this.lblSM.Size = new System.Drawing.Size(107, 20);
            this.lblSM.TabIndex = 0;
            this.lblSM.Text = "Select Month";
            this.lblSM.Click += new System.EventHandler(this.lbl_SelectMonth);
            // 
            // crystalReportViewer1
            // 
            this.crystalReportViewer1.ActiveViewIndex = 0;
            this.crystalReportViewer1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crystalReportViewer1.Cursor = System.Windows.Forms.Cursors.Default;
            this.crystalReportViewer1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.crystalReportViewer1.Location = new System.Drawing.Point(0, 101);
            this.crystalReportViewer1.Name = "crystalReportViewer1";
            this.crystalReportViewer1.ReportSource = this.Report1;
            this.crystalReportViewer1.Size = new System.Drawing.Size(934, 484);
            this.crystalReportViewer1.TabIndex = 0;
            this.crystalReportViewer1.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // btn_back
            // 
            this.btn_back.Location = new System.Drawing.Point(25, 32);
            this.btn_back.Name = "btn_back";
            this.btn_back.Size = new System.Drawing.Size(75, 23);
            this.btn_back.TabIndex = 4;
            this.btn_back.Text = "Back";
            this.btn_back.UseVisualStyleBackColor = true;
            this.btn_back.Click += new System.EventHandler(this.btn_back_Click);
            // 
            // CReport
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(934, 585);
            this.Controls.Add(this.btn_back);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.rbtnViewMonthly);
            this.Controls.Add(this.crystalReportViewer1);
            this.Controls.Add(this.rbtnViewDaily);
            this.Name = "CReport";
            this.Text = "CReport";
            this.Load += new System.EventHandler(this.CReport_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crystalReportViewer1;
        private System.Windows.Forms.RadioButton rbtnViewDaily;
        private System.Windows.Forms.RadioButton rbtnViewMonthly;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblSM;
        private System.Windows.Forms.Button btnView;
        private System.Windows.Forms.ComboBox cboSelectMonth;
        private Report Report1;
        private System.Windows.Forms.Button btn_back;
    }
}