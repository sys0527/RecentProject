namespace RestourantTips
{
    partial class frmTutorWages
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
            this.txtWorkload = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lblTotalWage = new System.Windows.Forms.Label();
            this.btnTotalWage = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(28, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(123, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "Workload Hours";
            // 
            // txtWorkload
            // 
            this.txtWorkload.Location = new System.Drawing.Point(200, 54);
            this.txtWorkload.Name = "txtWorkload";
            this.txtWorkload.Size = new System.Drawing.Size(100, 26);
            this.txtWorkload.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(28, 121);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(90, 20);
            this.label2.TabIndex = 2;
            this.label2.Text = "Total Wage";
            // 
            // lblTotalWage
            // 
            this.lblTotalWage.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lblTotalWage.Location = new System.Drawing.Point(200, 115);
            this.lblTotalWage.Name = "lblTotalWage";
            this.lblTotalWage.Size = new System.Drawing.Size(100, 26);
            this.lblTotalWage.TabIndex = 3;
            // 
            // btnTotalWage
            // 
            this.btnTotalWage.Location = new System.Drawing.Point(32, 222);
            this.btnTotalWage.Name = "btnTotalWage";
            this.btnTotalWage.Size = new System.Drawing.Size(119, 50);
            this.btnTotalWage.TabIndex = 4;
            this.btnTotalWage.Text = "calc total wage";
            this.btnTotalWage.UseVisualStyleBackColor = true;
            this.btnTotalWage.Click += new System.EventHandler(this.btnTotalWage_Click);
            // 
            // frmTutorWages
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(469, 325);
            this.Controls.Add(this.btnTotalWage);
            this.Controls.Add(this.lblTotalWage);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtWorkload);
            this.Controls.Add(this.label1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "frmTutorWages";
            this.Text = "TutorWages";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtWorkload;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblTotalWage;
        private System.Windows.Forms.Button btnTotalWage;
    }
}