package com.example.app1;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import com.example.app1.database.database;

public class ManDangNhap extends AppCompatActivity {

    EditText edtTaiKhoan,edtMatKhau;
    Button btnDangNhap,btnDangKy;
    database databasetruyen;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_man_dang_nhap);
        Anhxa();

        databasetruyen =new database(this);
        btnDangKy.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent=new Intent(ManDangNhap.this,ManDangKy.class);
                startActivity(intent);
            }
        });
        btnDangNhap.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String tentaikhoan=edtTaiKhoan.getText().toString();
                String matkhau=edtMatKhau.getText().toString();
                Cursor cursor=databasetruyen.getData();
                if(edtMatKhau.getText().length() !=0 && edtTaiKhoan.getText().length() !=0){
                        while (cursor.moveToNext()){
                            String datatentaikhoan=cursor.getString(1);
                            String datmatkhau=cursor.getString(2);
                            if(datatentaikhoan.equals(tentaikhoan) && datmatkhau.equals(matkhau)){
                                int phanquyen=cursor.getInt(4);
                                int idd=cursor.getInt(0);
                                String email=cursor.getString(3);
                                String tentk=cursor.getString(1);
                                Intent intent=new Intent(ManDangNhap.this,MainActivity.class);
                                intent.putExtra("idd",idd);
                                intent.putExtra("email",email);
                                intent.putExtra("tentaikhoan",tentaikhoan);
                                startActivity(intent);
                            }
                        }
                    cursor.moveToFirst();
                    cursor.close();
                }
                else{
                    Toast.makeText(ManDangNhap.this, "Vui lòng nhập đầy đủ thông  tin !!!", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
    private void Anhxa() {
        edtMatKhau=findViewById(R.id.matkhau);
        edtTaiKhoan=findViewById(R.id.taikhoan);
        btnDangKy=findViewById(R.id.dangky);
        btnDangNhap=findViewById(R.id.dangnhap);

    }
}