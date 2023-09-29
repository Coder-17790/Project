package com.example.app1.object;

import android.util.Log;

import com.example.app1.api.APIGetTruyen;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.Serializable;

public class Truyen implements Serializable {
    public static final String TAG = APIGetTruyen.class.getSimpleName();
    private String id;
    private String tenTruyen;
    private String soChap;
    private String linkAnh;

    public Truyen(String id, String tenTruyen, String soChap, String linkAnh)
    {
        this.id = id;
        this.tenTruyen = tenTruyen;
        this.soChap = soChap;
        this.linkAnh = linkAnh;

    }

    public Truyen(JSONObject o) throws JSONException
    {
	    id = o.getString("id");
        tenTruyen = o.getString("tenTruyen");
        soChap = o.getString("soChap");
        linkAnh = o.getString("linkAnh");
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTenTruyen() {
        return tenTruyen;
    }

    public void setTenTruyen(String tenTruyen) {
        this.tenTruyen = tenTruyen;
    }

    public String getSoChap() {
        return soChap;
    }

    public void setSoChap(String soChap) {
        this.soChap = soChap;
    }

    public String getLinkAnh() {
        return linkAnh;
    }

    public void setLinkAnh(String linkAnh) {
        this.linkAnh = linkAnh;
    }

}
