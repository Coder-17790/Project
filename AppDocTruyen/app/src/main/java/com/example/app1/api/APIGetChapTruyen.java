package com.example.app1.api;

import android.os.AsyncTask;
import android.util.Log;

import com.example.app1.interfaces.GetChapTruyen;
import com.example.app1.interfaces.GetTruyen;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;

import java.io.IOException;

public class APIGetChapTruyen extends AsyncTask<Void,Void,Void> {

    public static final String TAG = APIGetChapTruyen.class.getSimpleName();

    String data;
    GetChapTruyen getChapTruyen;

    public APIGetChapTruyen(GetChapTruyen getTruyen)
    {
        this.getChapTruyen = getTruyen;
        this.getChapTruyen.BatDau();
    }

    @Override
    protected Void doInBackground(Void... voids) {
        Log.e(TAG,"Vo r");
        OkHttpClient client = new OkHttpClient();
        Request request = new Request.Builder()
                .url("https://truyentranhonl.000webhostapp.com/getChapTruyen.php")
                .build();
        data = null;
        try {
            Response response = client.newCall(request).execute();
            ResponseBody body = response.body();
            data = body.string();
            Log.e(TAG,"Khong loi");

        }
        catch (IOException e){
            Log.e(TAG,"Loi r");
            data = null;
        }
        return null;
    }

    @Override
    protected void onPostExecute(Void unused) {
        if(data == null){
            this.getChapTruyen.Loi();
        }else{
            Log.e(TAG,"Lay gan dc r");
            this.getChapTruyen.KetThuc(data);
        }
    }
}
