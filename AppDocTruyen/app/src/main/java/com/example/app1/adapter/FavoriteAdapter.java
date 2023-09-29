package com.example.app1.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import com.bumptech.glide.Glide;
import com.example.app1.R;
import com.example.app1.object.Truyen;

import java.util.List;

public class FavoriteAdapter extends ArrayAdapter<Truyen> {
    private Context context;
    private List<Truyen> favorites;
    public FavoriteAdapter(Context context, List<Truyen> favorites) {
        super(context, 0, favorites);
        this.context = context;
        this.favorites = favorites;
    }
    public void updateFavorites(List<Truyen> favorites) {
        this.favorites = favorites;
        notifyDataSetChanged();
    }

    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        if (convertView == null) {
            convertView = LayoutInflater.from(context).inflate(R.layout.item_favorite, parent, false);
        }

        TextView name_text_view = convertView.findViewById(R.id.name_text_view);
        TextView chap_text_view = convertView.findViewById(R.id.chap_text_view);
        ImageView image_view = convertView.findViewById(R.id.image_view);

        Truyen favorite = getItem(position);

        name_text_view.setText(favorite.getTenTruyen());
        chap_text_view.setText(favorite.getSoChap());
        Glide.with(this.context).load(favorite.getLinkAnh()).into(image_view);

        return convertView;
    }
}
