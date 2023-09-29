namespace QL_NhanSu
{
    partial class Tra_cứu_thông_tin_nhân_sự
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
            this.txt_maNV = new System.Windows.Forms.TextBox();
            this.btn_traCuu = new System.Windows.Forms.Button();
            this.ck_nam = new System.Windows.Forms.CheckBox();
            this.ck_nu = new System.Windows.Forms.CheckBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_tenNV = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.col_maNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_tenNV = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_date = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_diaChi = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_sex = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_trinhDo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.col_phongBan = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.MenuHighlight;
            this.label1.Location = new System.Drawing.Point(465, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(380, 36);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tra cứu thông tin nhân sự";
            // 
            // txt_maNV
            // 
            this.txt_maNV.Location = new System.Drawing.Point(147, 147);
            this.txt_maNV.Name = "txt_maNV";
            this.txt_maNV.Size = new System.Drawing.Size(242, 22);
            this.txt_maNV.TabIndex = 1;
            // 
            // btn_traCuu
            // 
            this.btn_traCuu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_traCuu.Location = new System.Drawing.Point(845, 130);
            this.btn_traCuu.Name = "btn_traCuu";
            this.btn_traCuu.Size = new System.Drawing.Size(133, 41);
            this.btn_traCuu.TabIndex = 2;
            this.btn_traCuu.Text = "Tra cứu";
            this.btn_traCuu.UseVisualStyleBackColor = true;
            // 
            // ck_nam
            // 
            this.ck_nam.AutoSize = true;
            this.ck_nam.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ck_nam.Location = new System.Drawing.Point(999, 133);
            this.ck_nam.Name = "ck_nam";
            this.ck_nam.Size = new System.Drawing.Size(75, 29);
            this.ck_nam.TabIndex = 3;
            this.ck_nam.Text = "Nam";
            this.ck_nam.UseVisualStyleBackColor = true;
            // 
            // ck_nu
            // 
            this.ck_nu.AutoSize = true;
            this.ck_nu.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ck_nu.Location = new System.Drawing.Point(1106, 137);
            this.ck_nu.Name = "ck_nu";
            this.ck_nu.Size = new System.Drawing.Size(59, 29);
            this.ck_nu.TabIndex = 4;
            this.ck_nu.Text = "Nữ";
            this.ck_nu.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.col_maNV,
            this.col_tenNV,
            this.col_date,
            this.col_diaChi,
            this.col_sex,
            this.col_trinhDo,
            this.col_phongBan});
            this.dataGridView1.Location = new System.Drawing.Point(74, 215);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.Size = new System.Drawing.Size(1091, 303);
            this.dataGridView1.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(19, 144);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(130, 25);
            this.label2.TabIndex = 6;
            this.label2.Text = "Mã nhân viên";
            // 
            // txt_tenNV
            // 
            this.txt_tenNV.Location = new System.Drawing.Point(549, 144);
            this.txt_tenNV.Margin = new System.Windows.Forms.Padding(4);
            this.txt_tenNV.Name = "txt_tenNV";
            this.txt_tenNV.Size = new System.Drawing.Size(270, 22);
            this.txt_tenNV.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(405, 143);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(137, 25);
            this.label3.TabIndex = 8;
            this.label3.Text = "Tên nhân viên";
            // 
            // col_maNV
            // 
            this.col_maNV.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.col_maNV.HeaderText = "Mã Nhân Viên";
            this.col_maNV.MinimumWidth = 6;
            this.col_maNV.Name = "col_maNV";
            // 
            // col_tenNV
            // 
            this.col_tenNV.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.col_tenNV.HeaderText = "Tên Nhân Viên";
            this.col_tenNV.MinimumWidth = 6;
            this.col_tenNV.Name = "col_tenNV";
            // 
            // col_date
            // 
            this.col_date.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.col_date.HeaderText = "Ngày Sinh";
            this.col_date.MinimumWidth = 6;
            this.col_date.Name = "col_date";
            // 
            // col_diaChi
            // 
            this.col_diaChi.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.col_diaChi.HeaderText = "Địa Chỉ";
            this.col_diaChi.MinimumWidth = 6;
            this.col_diaChi.Name = "col_diaChi";
            // 
            // col_sex
            // 
            this.col_sex.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.col_sex.HeaderText = "Giới Tính";
            this.col_sex.MinimumWidth = 6;
            this.col_sex.Name = "col_sex";
            // 
            // col_trinhDo
            // 
            this.col_trinhDo.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.col_trinhDo.HeaderText = "Trình Độ";
            this.col_trinhDo.MinimumWidth = 6;
            this.col_trinhDo.Name = "col_trinhDo";
            // 
            // col_phongBan
            // 
            this.col_phongBan.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.col_phongBan.HeaderText = "Phòng Ban";
            this.col_phongBan.MinimumWidth = 6;
            this.col_phongBan.Name = "col_phongBan";
            // 
            // Tra_cứu_thông_tin_nhân_sự
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1452, 721);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txt_tenNV);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.ck_nu);
            this.Controls.Add(this.ck_nam);
            this.Controls.Add(this.btn_traCuu);
            this.Controls.Add(this.txt_maNV);
            this.Controls.Add(this.label1);
            this.Name = "Tra_cứu_thông_tin_nhân_sự";
            this.Text = "Tra_cứu_thông_tin_nhân_sự";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_maNV;
        private System.Windows.Forms.Button btn_traCuu;
        private System.Windows.Forms.CheckBox ck_nam;
        private System.Windows.Forms.CheckBox ck_nu;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_tenNV;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_maNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_tenNV;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_date;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_diaChi;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_sex;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_trinhDo;
        private System.Windows.Forms.DataGridViewTextBoxColumn col_phongBan;
    }
}