package com.example.app1;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.bumptech.glide.Glide;
import com.example.app1.adapter.ChapTruyenAdapter;
import com.example.app1.adapter.TruyenAdapter;
import com.example.app1.api.APIGetChapTruyen;
import com.example.app1.api.APIGetTruyen;
import com.example.app1.helper.FavoriteHelper;
import com.example.app1.interfaces.GetChapTruyen;
import com.example.app1.object.ChapTruyen;
import com.example.app1.object.Truyen;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class TruyenActivity extends AppCompatActivity implements GetChapTruyen {

    public static final String TAG = APIGetTruyen.class.getSimpleName();

    ImageView imv_anhTruyen, imv_like;
    TextView txv_tenTruyen;
    ListView lst_chapTruyen;
    Truyen truyen;
    ChapTruyenAdapter chapTruyenAdapter;
    ArrayList<ChapTruyen> listChap;
    SharedPreferences sharedPreferences;
    int likeStatus;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_truyen);
        anhXa();
        init();
        setUp();
        setClick();

        chapTruyenAdapter.notifyDataSetChanged();
        new APIGetChapTruyen(this).execute();
        // Khởi tạo SharedPreferences với tên "LikeStatus"
        sharedPreferences = getSharedPreferences("LikeStatus", MODE_PRIVATE);
        // Lấy giá trị likeStatus từ SharedPreferences, mặc định là ic_dislike
        likeStatus = sharedPreferences.getInt("like", R.drawable.ic_dislike);
        // Thiết lập trạng thái của ImageView imv_like
        imv_like.setImageResource(likeStatus);
    }


    private void anhXa() {
        imv_anhTruyen = findViewById(R.id.img_anhTruyen);
        txv_tenTruyen = findViewById(R.id.txv_tenTuyen);
        lst_chapTruyen = findViewById(R.id.lst_chap);
        imv_like = findViewById(R.id.img_like);

    }

    private  void init(){
        //Lấy dữ liệu ảnh và tên truyện
        Bundle b = getIntent().getBundleExtra("data");
        truyen = (Truyen) b.getSerializable("truyen");

        //Thêm array Chap truyên vào
        listChap = new ArrayList<>();
        for (int i = 0; i < 4; i++) {
            listChap.add(new ChapTruyen("Chap " + i, "14-10-2002"));
        }
        chapTruyenAdapter = new ChapTruyenAdapter(this,0, listChap);
        lst_chapTruyen.setAdapter(chapTruyenAdapter);
    }

    private void setUp() {
        txv_tenTruyen.setText(truyen.getTenTruyen());
        Glide.with(this).load(truyen.getLinkAnh()).into(imv_anhTruyen);
    }

    private void setClick(){
        imv_like.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                // Cập nhật giá trị likeStatus và lưu vào SharedPreferences
                if (likeStatus == R.drawable.ic_dislike) {
                    imv_like.setImageResource(R.drawable.ic_like);
                    likeStatus = R.drawable.ic_like;
                    String tenTruyen = truyen.getTenTruyen();
                    String chap = truyen.getSoChap();
                    String image = truyen.getLinkAnh();
                    Truyen favorite = new Truyen(null, tenTruyen, chap, image);
                    FavoriteHelper.addFavorite(TruyenActivity.this, favorite);
                    Log.d("TruyenActivity", "Đã lưu truyện vào danh sách yêu thích: " + favorite.getTenTruyen());
                } else {
                    imv_like.setImageResource(R.drawable.ic_dislike);
                    likeStatus = R.drawable.ic_dislike;
                    FavoriteHelper.removeFavorite(TruyenActivity.this, truyen.getTenTruyen());
                    Log.d("TruyenActivity", "Đã xoá truyện khỏi danh sách yêu thích: " + truyen.getTenTruyen());
                }
                SharedPreferences.Editor editor = sharedPreferences.edit();
                editor.putInt("like", likeStatus);
                editor.apply();
            }
        });
        lst_chapTruyen.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                Intent intent =new Intent(TruyenActivity.this, DocTruyenActivity.class);
                startActivity(intent);
            }
        });
    }
    @Override
    public void BatDau() {
        Toast.makeText(this,"Loading",Toast.LENGTH_LONG).show();
    }


    @Override
    public void KetThuc(String data) {
        try {
//            listChap.clear();
            JSONArray arr =  new JSONArray(data);
            for(int i =0 ;i < arr.length(); i++)
            {
                JSONObject o = arr.getJSONObject(i);
                listChap.add(new ChapTruyen(o));
            }
            chapTruyenAdapter = new ChapTruyenAdapter(this, 0, listChap);
            chapTruyenAdapter.notifyDataSetChanged();
        }catch (JSONException e){
        }
    }

    @Override
    public void Loi() {
        Toast.makeText(this,"Errod Loading !", Toast.LENGTH_LONG).show();
    }
}