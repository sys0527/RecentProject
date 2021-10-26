
namespace IOOP_Assignment
{
    partial class ReportMainPage
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ReportMainPage));
            this.btn_homePage = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.btn_view = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // btn_homePage
            // 
            this.btn_homePage.BackColor = System.Drawing.SystemColors.Window;
            this.btn_homePage.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("btn_homePage.BackgroundImage")));
            this.btn_homePage.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btn_homePage.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_homePage.ForeColor = System.Drawing.SystemColors.HighlightText;
            this.btn_homePage.ImageAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_homePage.Location = new System.Drawing.Point(15, 13);
            this.btn_homePage.Name = "btn_homePage";
            this.btn_homePage.Size = new System.Drawing.Size(83, 73);
            this.btn_homePage.TabIndex = 15;
            this.btn_homePage.Text = "Home";
            this.btn_homePage.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btn_homePage.UseVisualStyleBackColor = false;
            this.btn_homePage.Click += new System.EventHandler(this.btn_homePage_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(319, 130);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(180, 177);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 14;
            this.pictureBox1.TabStop = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(364, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(106, 32);
            this.label1.TabIndex = 13;
            this.label1.Text = "Report";
            // 
            // btn_view
            // 
            this.btn_view.Location = new System.Drawing.Point(347, 349);
            this.btn_view.Name = "btn_view";
            this.btn_view.Size = new System.Drawing.Size(123, 59);
            this.btn_view.TabIndex = 10;
            this.btn_view.Text = "View Report";
            this.btn_view.UseVisualStyleBackColor = true;
            this.btn_view.Click += new System.EventHandler(this.btn_view_Click);
            // 
            // ReportMainPage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Info;
            this.ClientSize = new System.Drawing.Size(800, 481);
            this.Controls.Add(this.btn_homePage);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_view);
            this.Name = "ReportMainPage";
            this.Text = "ReportMainPage";
            this.Load += new System.EventHandler(this.ReportMainPage_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_homePage;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btn_view;
    }
}