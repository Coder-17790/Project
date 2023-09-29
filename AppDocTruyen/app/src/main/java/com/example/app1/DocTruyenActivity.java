package com.example.app1;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;
import com.example.app1.adapter.ChapTruyenAdapter;
import com.example.app1.api.APIGetAnh;
import com.example.app1.api.APIGetTruyen;
import com.example.app1.interfaces.GetAnhTruyen;
import com.example.app1.object.Truyen;

import org.json.JSONArray;
import org.json.JSONException;

import java.util.ArrayList;

public class DocTruyenActivity extends AppCompatActivity implements GetAnhTruyen {
    public static final String TAG = APIGetTruyen.class.getSimpleName();

    ImageView imv_anhTruyen;
    int soTrang, soTrangDangDoc;
    TextView txv_soTrang;
    Truyen truyen;
    ChapTruyenAdapter chapTruyenAdapter;
    ArrayList<String> listAnh;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_doc_truyen);
        anhXa();
        init();
        setUp();
//        new APIGetAnh(this).execute();
    }

    private void anhXa() {
        imv_anhTruyen = findViewById(R.id.img_anhTruyen);
        txv_soTrang = findViewById(R.id.txv_soTrang);

    }

    private  void init(){
//        Lấy dữ liệu ảnh và tên truyện
//        Bundle b = getIntent().getBundleExtra("data");
//        truyen = (Truyen) b.getSerializable("truyen");

        //Thêm array Chap truyên vào
//        listChap = new ArrayList<>();
//        for (int i = 0; i < 20; i++) {
//            listChap.add(new ChapTruyen("Chap " + i, "14-10-2002"));
//        }
//        chapTruyenAdapter = new ChapTruyenAdapter(this,0, listChap);
//        lst_chapTruyen.setAdapter(chapTruyenAdapter);

        listAnh = new ArrayList<String>();
        listAnh.add("https://st.nettruyento.com/data/comics/213/dia-nguc-cuc-lac.jpg");
        listAnh.add("https://st.nettruyento.com/data/comics/59/greatest-outcast.jpg");
        listAnh.add("https://st.nettruyento.com/data/comics/172/anh-hau-lao-ba-khong-duoc-chay-7264.jpg");
        listAnh.add("https://st.nettruyento.com/data/comics/119/vi-phu-cua-ta-la-long-ngao-thien.jpg");
        listAnh.add("https://st.nettruyento.com/data/comics/25/doi-phuong-phai-to-tinh-truoc-7476.jpg");
        listAnh.add("https://st.nettruyento.com/data/comics/235/thanh-guom-diet-quy.jpg");
        listAnh.add("https://st.nettruyento.com/data/comics/65/lu-bo-truyen-ky.jpg");
        soTrang = listAnh.size();
        Log.e(TAG,String.valueOf(soTrang));
        soTrangDangDoc = 1;
    }

    private void setUp() {
        docTheoTrang(0);
    }

    private void docTheoTrang (int i)
    {
        soTrangDangDoc = soTrangDangDoc + i ;
        if(soTrangDangDoc == 0)
        {
            soTrangDangDoc = 1;
        }
        if(soTrangDangDoc > soTrang)
        {
            soTrangDangDoc = soTrang;
        }
        txv_soTrang.setText(soTrangDangDoc+" / "+soTrang);
        Glide.with(this).load(listAnh.get(soTrangDangDoc-1)).into(imv_anhTruyen);
    }

    @Override
    public void BatDau() {
        Toast.makeText(this,"Loading",Toast.LENGTH_LONG).show();
    }


    @Override
    public void KetThuc(String data) {
        listAnh = new ArrayList<String>();
        try {
            JSONArray arr = new JSONArray(data);
            for(int i =0 ;i < arr.length(); i++)
            {
                listAnh.add(arr.getString(i));
            }
            soTrangDangDoc = 1;
            soTrang = listAnh.size();
            docTheoTrang(0);
        }catch (JSONException e){
        }
    }

    @Override
    public void Loi() {
        Toast.makeText(this,"Errod Loading !", Toast.LENGTH_LONG).show();
    }

    public void right(View view) {
        docTheoTrang(1);
    }

    public void left(View view) {
        docTheoTrang(-1);
    }
}