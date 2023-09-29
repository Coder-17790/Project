package com.example.app1.object;

import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

public class ChapTruyen {
    protected String tenChap;
    protected String ngay;

    public ChapTruyen(String tenChap, String ngay) {
        this.tenChap = tenChap;
        this.ngay = ngay;
    }


    public ChapTruyen(JSONObject o) throws JSONException
    {
        tenChap = o.getString("tenChap");
        ngay = o.getString("ngay");

    }

    public String getTenChap() {
        return tenChap;
    }

    public void setTenChap(String tenChap) {
        this.tenChap = tenChap;
    }

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }
}
