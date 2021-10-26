namespace while_loop_lab
{
    partial class Form1
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
            this.lstOutput = new System.Windows.Forms.ListBox();
            this.btn_calculate = new System.Windows.Forms.Button();
            this.btn_for_calc = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lstOutput
            // 
            this.lstOutput.FormattingEnabled = true;
            this.lstOutput.ItemHeight = 29;
            this.lstOutput.Location = new System.Drawing.Point(23, 59);
            this.lstOutput.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.lstOutput.Name = "lstOutput";
            this.lstOutput.Size = new System.Drawing.Size(290, 236);
            this.lstOutput.TabIndex = 0;
            // 
            // btn_calculate
            // 
            this.btn_calculate.Location = new System.Drawing.Point(23, 298);
            this.btn_calculate.Name = "btn_calculate";
            this.btn_calculate.Size = new System.Drawing.Size(135, 51);
            this.btn_calculate.TabIndex = 1;
            this.btn_calculate.Text = "culculate";
            this.btn_calculate.UseVisualStyleBackColor = true;
            this.btn_calculate.Click += new System.EventHandler(this.btn_calculate_Click);
            // 
            // btn_for_calc
            // 
            this.btn_for_calc.Location = new System.Drawing.Point(188, 303);
            this.btn_for_calc.Name = "btn_for_calc";
            this.btn_for_calc.Size = new System.Drawing.Size(125, 45);
            this.btn_for_calc.TabIndex = 2;
            this.btn_for_calc.Text = "calculate";
            this.btn_for_calc.UseVisualStyleBackColor = true;
            this.btn_for_calc.Click += new System.EventHandler(this.btn_for_calc_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(14F, 29F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(352, 391);
            this.Controls.Add(this.btn_for_calc);
            this.Controls.Add(this.btn_calculate);
            this.Controls.Add(this.lstOutput);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lstOutput;
        private System.Windows.Forms.Button btn_calculate;
        private System.Windows.Forms.Button btn_for_calc;
    }
}

