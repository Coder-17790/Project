package com.example.app1;

import androidx.appcompat.app.AppCompatActivity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;

import com.example.app1.adapter.FavoriteAdapter;
import com.example.app1.helper.FavoriteHelper;
import com.example.app1.object.Truyen;

import java.util.ArrayList;
import java.util.List;

public class TruyenYeuThichActivity extends AppCompatActivity {

    private GridView gridView;
    ArrayList<Truyen> truyenArrayList;
    private FavoriteAdapter adapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_truyen_yeu_thich);
        anhXa();
        List<Truyen> favorites = FavoriteHelper.getFavorites(this);
        adapter = new FavoriteAdapter(this, favorites);
        gridView.setAdapter(adapter);
        setClick();
    }
    @Override
    protected void onResume() {
        super.onResume();
        List<Truyen> favorites = FavoriteHelper.getFavorites(this);
        adapter.updateFavorites(favorites);
        adapter.notifyDataSetChanged();
        FavoriteHelper.updateFavorites(this);
    }

    private void anhXa(){
        gridView = findViewById(R.id.list_view_favorite);
    }

    private void setClick(){
        gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long l) {
                Truyen truyen = adapter.getItem(position);
                Bundle b = new Bundle();
                b.putSerializable("truyen", truyen);
                Intent i = new Intent(TruyenYeuThichActivity.this, TruyenActivity.class);
                i.putExtra("data", b);
                startActivity(i);
            }
        });

        gridView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() {
            @Override
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long l) {
                // Lấy item được chọn
                Truyen truyen = adapter.getItem(i);

                // Hiển thị hộp thoại xác nhận
                AlertDialog.Builder builder = new AlertDialog.Builder(TruyenYeuThichActivity.this);
                builder.setMessage("Bạn có chắc muốn xoá truyện " + truyen.getTenTruyen() + " khỏi danh sách yêu thích?")
                        .setPositiveButton("Xoá", new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialogInterface, int i) {
                                // Xoá item khỏi danh sách yêu thích và cập nhật lại GridView
                                FavoriteHelper.removeFavoriteAndUpdateGridView(TruyenYeuThichActivity.this, truyen.getTenTruyen(), adapter);
                                adapter.notifyDataSetChanged();
                                finish();
                                startActivity(new Intent(TruyenYeuThichActivity.this, TruyenYeuThichActivity.class));
                            }
                        })
                        .setNegativeButton("Hủy", null)
                        .create()
                        .show();
                return true;
            }
        });
    }
}