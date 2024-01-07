namespace sirketCRUD
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
            this.eklebutton = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.idtextBox = new System.Windows.Forms.TextBox();
            this.adtextBox = new System.Windows.Forms.TextBox();
            this.soyadtextBox = new System.Windows.Forms.TextBox();
            this.uruntextBox = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // eklebutton
            // 
            this.eklebutton.Location = new System.Drawing.Point(245, 198);
            this.eklebutton.Name = "eklebutton";
            this.eklebutton.Size = new System.Drawing.Size(75, 23);
            this.eklebutton.TabIndex = 0;
            this.eklebutton.Text = "Ekle";
            this.eklebutton.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(62, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(97, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "Müşteri ID:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(55, 75);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(104, 20);
            this.label2.TabIndex = 2;
            this.label2.Text = "Müşteri Adı:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(27, 125);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(132, 20);
            this.label3.TabIndex = 1;
            this.label3.Text = "Müşteri Soyadı:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.Location = new System.Drawing.Point(57, 172);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(102, 20);
            this.label4.TabIndex = 2;
            this.label4.Text = "Aldığı Ürün:";
            // 
            // idtextBox
            // 
            this.idtextBox.Location = new System.Drawing.Point(165, 28);
            this.idtextBox.Name = "idtextBox";
            this.idtextBox.Size = new System.Drawing.Size(155, 20);
            this.idtextBox.TabIndex = 3;
            // 
            // adtextBox
            // 
            this.adtextBox.Location = new System.Drawing.Point(165, 77);
            this.adtextBox.Name = "adtextBox";
            this.adtextBox.Size = new System.Drawing.Size(155, 20);
            this.adtextBox.TabIndex = 3;
            // 
            // soyadtextBox
            // 
            this.soyadtextBox.Location = new System.Drawing.Point(165, 125);
            this.soyadtextBox.Name = "soyadtextBox";
            this.soyadtextBox.Size = new System.Drawing.Size(155, 20);
            this.soyadtextBox.TabIndex = 3;
            // 
            // uruntextBox
            // 
            this.uruntextBox.Location = new System.Drawing.Point(165, 172);
            this.uruntextBox.Name = "uruntextBox";
            this.uruntextBox.Size = new System.Drawing.Size(155, 20);
            this.uruntextBox.TabIndex = 3;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.adtextBox);
            this.Controls.Add(this.uruntextBox);
            this.Controls.Add(this.soyadtextBox);
            this.Controls.Add(this.idtextBox);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.eklebutton);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button eklebutton;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox idtextBox;
        private System.Windows.Forms.TextBox adtextBox;
        private System.Windows.Forms.TextBox soyadtextBox;
        private System.Windows.Forms.TextBox uruntextBox;
    }
}

