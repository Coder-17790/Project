package com.example.app1.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.example.app1.R;
import com.example.app1.object.ChapTruyen;

import java.util.ArrayList;
import java.util.List;

public class ChapTruyenAdapter extends ArrayAdapter<ChapTruyen> {

    private Context ct;
    private ArrayList<ChapTruyen> arrayList;
    public ChapTruyenAdapter(@NonNull Context context, int resource, @NonNull List<ChapTruyen> objects) {
        super(context, resource, objects);
        this.ct = context;
        this.arrayList = new ArrayList<>(objects);
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if(convertView == null){
            LayoutInflater inflater = (LayoutInflater) ct.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = inflater.inflate(R.layout.item_chaptruyen, null);
        }
        if(arrayList.size()>0){
            ChapTruyen chapTruyen = arrayList.get(position);
            TextView tenChap = convertView.findViewById(R.id.txv_tenChap);
            TextView ngay = convertView.findViewById(R.id.txv_ngay);

            tenChap.setText(chapTruyen.getTenChap());
            ngay.setText(chapTruyen.getNgay());
        }
         return convertView;
    }
}
