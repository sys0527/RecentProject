
namespace IOOP_Assignment
{
    partial class Pending
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Pending));
            this.btnMain = new System.Windows.Forms.Button();
            this.dgvUserPending = new System.Windows.Forms.DataGridView();
            this.btnReject = new System.Windows.Forms.Button();
            this.btnApprove = new System.Windows.Forms.Button();
            this.txtUserId = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUserPending)).BeginInit();
            this.SuspendLayout();
            // 
            // btnMain
            // 
            this.btnMain.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnMain.Image = ((System.Drawing.Image)(resources.GetObject("btnMain.Image")));
            this.btnMain.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnMain.Location = new System.Drawing.Point(32, 29);
            this.btnMain.Name = "btnMain";
            this.btnMain.Size = new System.Drawing.Size(100, 47);
            this.btnMain.TabIndex = 25;
            this.btnMain.Text = "&Main Page";
            this.btnMain.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnMain.UseVisualStyleBackColor = true;
            this.btnMain.Click += new System.EventHandler(this.btnMain_Click);
            // 
            // dgvUserPending
            // 
            this.dgvUserPending.AllowUserToAddRows = false;
            this.dgvUserPending.AllowUserToDeleteRows = false;
            this.dgvUserPending.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvUserPending.Location = new System.Drawing.Point(51, 109);
            this.dgvUserPending.Name = "dgvUserPending";
            this.dgvUserPending.ReadOnly = true;
            this.dgvUserPending.RowHeadersWidth = 51;
            this.dgvUserPending.RowTemplate.Height = 24;
            this.dgvUserPending.Size = new System.Drawing.Size(706, 199);
            this.dgvUserPending.TabIndex = 30;
            this.dgvUserPending.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvUserPending_CellContentClick);
            // 
            // btnReject
            // 
            this.btnReject.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnReject.Image = ((System.Drawing.Image)(resources.GetObject("btnReject.Image")));
            this.btnReject.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnReject.Location = new System.Drawing.Point(299, 377);
            this.btnReject.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnReject.Name = "btnReject";
            this.btnReject.Size = new System.Drawing.Size(88, 47);
            this.btnReject.TabIndex = 34;
            this.btnReject.Text = "Reject";
            this.btnReject.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnReject.UseVisualStyleBackColor = true;
            this.btnReject.Click += new System.EventHandler(this.btnReject_Click);
            // 
            // btnApprove
            // 
            this.btnApprove.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnApprove.Image = ((System.Drawing.Image)(resources.GetObject("btnApprove.Image")));
            this.btnApprove.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnApprove.Location = new System.Drawing.Point(460, 378);
            this.btnApprove.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnApprove.Name = "btnApprove";
            this.btnApprove.Size = new System.Drawing.Size(99, 47);
            this.btnApprove.TabIndex = 35;
            this.btnApprove.Text = "Approve";
            this.btnApprove.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnApprove.UseVisualStyleBackColor = true;
            this.btnApprove.Click += new System.EventHandler(this.btnApprove_Click);
            // 
            // txtUserId
            // 
            this.txtUserId.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUserId.Location = new System.Drawing.Point(143, 331);
            this.txtUserId.Name = "txtUserId";
            this.txtUserId.Size = new System.Drawing.Size(121, 26);
            this.txtUserId.TabIndex = 37;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(60, 334);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 20);
            this.label1.TabIndex = 36;
            this.label1.Text = "User ID：";
            // 
            // Pending
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 465);
            this.Controls.Add(this.txtUserId);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnApprove);
            this.Controls.Add(this.btnReject);
            this.Controls.Add(this.dgvUserPending);
            this.Controls.Add(this.btnMain);
            this.Name = "Pending";
            this.Text = "Pending";
            this.Load += new System.EventHandler(this.Pending_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvUserPending)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnMain;
        private System.Windows.Forms.DataGridView dgvUserPending;
        private System.Windows.Forms.Button btnReject;
        private System.Windows.Forms.Button btnApprove;
        private System.Windows.Forms.TextBox txtUserId;
        private System.Windows.Forms.Label label1;
    }
}