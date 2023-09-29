using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Globalization;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace QL_NhanSu
{
    public partial class Form_dangnhap : Form
    {
        SqlConnection conn;
        //DataTable KNDL = new DataTable();
        public Form_dangnhap()
        {
            InitializeComponent();
            conn = new SqlConnection("Data Source = LAPTOP-NJ0OCSFE ;Initial Catalog = QL_NHANSU; Integrated Security = True");
        }


        private void button_dangnhap_Click(object sender, EventArgs e)
        {
            if(text_username.Text == ""||text_password.Text == "")
            {
                MessageBox.Show("Xin vui lòng nhập đủ thông tin.");
                return;
            }
            //if(KNDL.getDataTable("select * from [User] where UserName= N'" + text_username.Text + "' and Pass_Word=N'" + text_password.Text + "'").Rows.Count == 1)
            {
                                
            }
        }

        
    }
}
