namespace RestourantTips
{
    partial class frmDashboard
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
            this.btnRestaurant = new System.Windows.Forms.Button();
            this.btnTutor = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnRestaurant
            // 
            this.btnRestaurant.Location = new System.Drawing.Point(23, 49);
            this.btnRestaurant.Name = "btnRestaurant";
            this.btnRestaurant.Size = new System.Drawing.Size(101, 85);
            this.btnRestaurant.TabIndex = 0;
            this.btnRestaurant.Text = "Restaurant Tip";
            this.btnRestaurant.UseVisualStyleBackColor = true;
            this.btnRestaurant.Click += new System.EventHandler(this.btnRestaurant_Click);
            // 
            // btnTutor
            // 
            this.btnTutor.Location = new System.Drawing.Point(178, 49);
            this.btnTutor.Name = "btnTutor";
            this.btnTutor.Size = new System.Drawing.Size(107, 85);
            this.btnTutor.TabIndex = 1;
            this.btnTutor.Text = "Tutor Wages";
            this.btnTutor.UseVisualStyleBackColor = true;
            this.btnTutor.Click += new System.EventHandler(this.btnTutor_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(408, 49);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(117, 85);
            this.btnExit.TabIndex = 2;
            this.btnExit.Text = "Exit";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // frmDashboard
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(554, 173);
            this.Controls.Add(this.btnExit);
            this.Controls.Add(this.btnTutor);
            this.Controls.Add(this.btnRestaurant);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "frmDashboard";
            this.Text = "Dashboard";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnRestaurant;
        private System.Windows.Forms.Button btnTutor;
        private System.Windows.Forms.Button btnExit;
    }
}