package com.example.app1;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.app1.database.database;
import com.example.app1.object.TaiKhoan;

public class ManDangKy extends AppCompatActivity {

    EditText edtDKTaiKhoan,edtMatKhau,edtEmail;
    Button btnDKDangKy,btnDKDangNhap;
    database databasedoctruyen;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_man_dang_ky);
        databasedoctruyen=new database(this);
        AnhXa();
        btnDKDangKy.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String taikhoan=edtDKTaiKhoan.getText().toString();
                String matkhau=edtMatKhau.getText().toString();
                String email=edtEmail.getText().toString();
                TaiKhoan taiKhoan1=CreateTaiKhoan();
                if(taikhoan.length() != 0 && matkhau.length() != 0 && email.length() != 0){
                    databasedoctruyen.Addtk(taiKhoan1);
                    Toast.makeText(ManDangKy.this,"Đăng ký thành công",Toast.LENGTH_LONG).show();
                }
                else{
                    Toast.makeText(ManDangKy.this, "Vui lòng nhập đầy đủ thông tin !!!", Toast.LENGTH_SHORT).show();
                }
            }
        });
        btnDKDangNhap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
            }
        });
    }
    private TaiKhoan CreateTaiKhoan(){
        String taikhoan=edtDKTaiKhoan.getText().toString();
        String matkhau=edtMatKhau.getText().toString();
        String email=edtEmail.getText().toString();
        int phanquyen=1;
        TaiKhoan tk=new TaiKhoan(taikhoan,matkhau,email,phanquyen);
        return tk;
    }
    private void AnhXa() {
        edtEmail = findViewById(R.id.dkemail);
        edtMatKhau = findViewById(R.id.dkmatkhau);
        edtDKTaiKhoan = findViewById(R.id.dktaikhoan);
        btnDKDangKy = findViewById(R.id.dkdangky);
        btnDKDangNhap = findViewById(R.id.dkdangnhap);

    }
}