package com.example.app1.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.bumptech.glide.Glide;
import com.example.app1.R;
import com.example.app1.object.Truyen;

import java.util.ArrayList;
import java.util.List;

public class TruyenAdapter extends ArrayAdapter<Truyen> {

    private Context ct;
    private ArrayList<Truyen> arr;

    public TruyenAdapter(Context context, int resource, List<Truyen> objects)
    {
        super(context,resource,objects);
        this.ct = context;
        this.arr = new ArrayList<>(objects);
    }

    public void searchTruyen(String s)
    {
        s = s.toUpperCase();
        int k = 0;
        for (int i = 0; i < arr.size(); i++) {
            Truyen t = arr.get(i);
            String ten = t.getTenTruyen().toUpperCase();
            if(ten.indexOf(s)>=0){
                arr.set(i, arr.get(k));
                arr.set(k,t);
                k++;
            }
        }
        notifyDataSetChanged();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent){
        if(convertView == null)
        {
            LayoutInflater inflater = (LayoutInflater) ct.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = inflater.inflate(R.layout.item_truyen, null);
        }
        if(arr.size() > 0)
        {
            Truyen truyen = this.arr.get(position);
            TextView tenTruyen = convertView.findViewById(R.id.txvTenTruyen);
            TextView tenChap = convertView.findViewById(R.id.txvTenChap);
            ImageView imgTruyen = convertView.findViewById(R.id.imgAnhTruyen);

            tenTruyen.setText(truyen.getTenTruyen());
            tenChap.setText(truyen.getSoChap()+ " Chaper");
            Glide.with(this.ct).load(truyen.getLinkAnh()).into(imgTruyen);
        }
        return convertView;
    }

}
