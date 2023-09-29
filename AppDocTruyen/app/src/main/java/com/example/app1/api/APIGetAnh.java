package com.example.app1.api;

import android.os.AsyncTask;
import android.util.Log;

import com.example.app1.interfaces.GetAnhTruyen;
import com.example.app1.interfaces.GetTruyen;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;

import java.io.IOException;

public class APIGetAnh extends AsyncTask<Void,Void,Void> {

    public static final String TAG = APIGetAnh.class.getSimpleName();

    String data;
    GetAnhTruyen getAnhTruyen;

    public APIGetAnh(GetAnhTruyen getAnhTruyen)
    {
        this.getAnhTruyen = getAnhTruyen;
        this.getAnhTruyen.BatDau();
    }

    @Override
    protected Void doInBackground(Void... voids) {
        Log.e(TAG,"Vo r");
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder()
                .url("https://truyentranhonl.000webhostapp.com/getTruyen.php")
                .build();
        data = null;
        try {
            Response response = client.newCall(request).execute();
            ResponseBody body = response.body();
            data = body.string();
            Log.e(TAG,"Khong dc");
        }
        catch (IOException e){
            Log.e(TAG,"Loi r nhaaa");
            data = null;
        }
        return null;
    }

    @Override
    protected void onPostExecute(Void unused) {
        if(data == null){
            this.getAnhTruyen.Loi();
        }else{
            Log.e(TAG,"Lay gan dc r nhaaaa");
            this.getAnhTruyen.KetThuc(data);
        }
    }
}
