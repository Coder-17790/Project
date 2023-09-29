package com.example.app1;

import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.viewpager.widget.ViewPager;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.SearchView;
import android.widget.TextView;
import android.widget.Toast;

import com.example.app1.adapter.TruyenAdapter;
import com.example.app1.api.APIGetTruyen;
import com.example.app1.interfaces.GetTruyen;
import com.example.app1.object.Truyen;
import com.google.android.material.navigation.NavigationView;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.Collections;

public class MainActivity extends AppCompatActivity implements GetTruyen {
    public static final String TAG = APIGetTruyen.class.getSimpleName();
    GridView gvsDSTruyen;
    TruyenAdapter adapter;
    ArrayList<Truyen> truyenArrayList;
    EditText edtSearch;
    TextView tenTaiKhoan;
    private DrawerLayout drawerLayout;
    private NavigationView navigationView;
    private ViewPager viewPager;
    private ActionBarDrawerToggle toggle;

     @Override
    protected void onCreate(Bundle savedInstancesSate)
    {
        super.onCreate(savedInstancesSate);
        setContentView(R.layout.activity_main);
        init();
        anhXa();
        setUp();
        setClick();
        new APIGetTruyen(this).execute();

        toggle = new ActionBarDrawerToggle(this, drawerLayout, R.string.nav_open, R.string.nav_close);
        drawerLayout.addDrawerListener(toggle);
        toggle.syncState();
        // to make the Navigation drawer icon always appear on the action bar
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }

    private void init(){
         truyenArrayList = new ArrayList<>();

         adapter = new TruyenAdapter(this, 0, truyenArrayList);


    }

    private void anhXa(){
        gvsDSTruyen = findViewById(R.id.gdvDSTruyenn);
        edtSearch = findViewById(R.id.edtSearch);
        drawerLayout = findViewById(R.id.drawer_layout);
        navigationView = findViewById(R.id.nav_view);
    }

    private void setUp(){
         gvsDSTruyen.setAdapter(adapter);
//        Intent in = getIntent();
//        String t = in.getStringExtra("tentaikhoan");
//        tenTaiKhoan.setText(t);
    }

    private void setClick(){
         edtSearch.addTextChangedListener(new TextWatcher() {
             @Override
             public void beforeTextChanged(CharSequence s, int start, int count, int after) {

             }

             @Override
             public void onTextChanged(CharSequence s, int start, int before, int count) {

             }

             @Override
             public void afterTextChanged(Editable s) {
                 String str = edtSearch.getText().toString();
                 adapter.searchTruyen(str);
             }
         });
         gvsDSTruyen.setOnItemClickListener(new AdapterView.OnItemClickListener() {
             @Override
             public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                 Truyen truyen = truyenArrayList.get(position);
                 Bundle b = new Bundle();
                 b.putSerializable("truyen", truyen);
                 Intent i = new Intent(MainActivity.this, TruyenActivity.class);
                 i.putExtra("data", b);
                 startActivity(i);
             }
         });
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() {
            @Override
            public boolean onNavigationItemSelected(MenuItem item) {
                int id = item.getItemId();
                switch (id) {
                    case R.id.favorite_item:
                        startActivity(new Intent(MainActivity.this, TruyenYeuThichActivity.class));
                        break;
                    // Add more cases as needed
                }
                // Close the navigation drawer when an item is selected
                drawerLayout.closeDrawer(GravityCompat.START);
                return true;
            }
        });
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        switch (id) {
            // Add your options menu items here
        }

        // If the drawer toggle was selected, toggle the drawer
        if (toggle.onOptionsItemSelected(item)) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }


    @Override
    public void BatDau() {
        Toast.makeText(this,"Loading",Toast.LENGTH_LONG).show();
    }

    @Override
    public void KetThuc(String data) {
         try {
             truyenArrayList.clear();
             JSONArray arr =  new JSONArray(data);
             for(int i =0 ;i < arr.length(); i++)
             {
                 JSONObject o = arr.getJSONObject(i);
                 truyenArrayList.add(new Truyen(o));
                 Log.e(TAG,"Chán1");
             }
             Log.e(TAG,"Chán2");
             adapter = new TruyenAdapter(this, 0, truyenArrayList);
             gvsDSTruyen.setAdapter(adapter);
         }catch (JSONException e){
             e.printStackTrace();
             Log.e(TAG,"Chán");
         }
    }

    @Override
    public void Loi() {
         Toast.makeText(this,"Errod Loading !", Toast.LENGTH_LONG).show();
    }

    public void update(View view) {
         new APIGetTruyen(this).execute();
    }
}