package com.example.app1.helper;

import android.content.Context;
import android.content.SharedPreferences;

import com.example.app1.adapter.FavoriteAdapter;
import com.example.app1.object.Truyen;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class FavoriteHelper {
    private static final String PREF_NAME = "favorite_prefs";
    private static final String PREF_KEY_FAVORITES = "favorites";

    public static void addFavorite(Context context, Truyen favorite) {
        List<Truyen> favorites = getFavorites(context);
        favorites.add(favorite);

        SharedPreferences.Editor editor = getEditor(context);
        Set<String> stringSet = new HashSet<>();
        for (Truyen f : favorites) {
            stringSet.add(f.getTenTruyen() + "|" + f.getSoChap() + "|" + f.getLinkAnh());
        }
        editor.putStringSet(PREF_KEY_FAVORITES, stringSet);
        editor.apply();
    }
    public static List<Truyen> getFavorites(Context context) {
        List<Truyen> favorites = new ArrayList<>();
        SharedPreferences prefs = getSharedPreferences(context);
        Set<String> stringSet = prefs.getStringSet(PREF_KEY_FAVORITES, null);
        if (stringSet != null) {
            for (String s : stringSet) {
                String[] parts = s.split("\\|");
                if (parts.length == 3) {
                    String tenTruyen = parts[0];
                    String chap = parts[1];
                    String linkAnh = parts[2];
                    Truyen f = new Truyen(null, tenTruyen, chap, linkAnh);
                    favorites.add(f);
                }
            }
        }
        return favorites;
    }

    public static void removeFavorite(Context context, String tenTruyen) {
        List<Truyen> favorites = getFavorites(context);
        Iterator<Truyen> iterator = favorites.iterator();
        while (iterator.hasNext()) {
            Truyen f = iterator.next();
            if (f.getTenTruyen().equals(tenTruyen)) {
                iterator.remove();
                SharedPreferences.Editor editor = getEditor(context);
                Set<String> stringSet = new HashSet<>();
                for (Truyen fav : favorites) {
                    stringSet.add(fav.getTenTruyen() + "|" + fav.getSoChap() + "|" + fav.getLinkAnh());
                }
                editor.putStringSet(PREF_KEY_FAVORITES, stringSet);
                editor.apply();
                return;
            }
        }
    }

    public static void removeFavoriteAndUpdateGridView(Context context, String tenTruyen, FavoriteAdapter adapter) {
        List<Truyen> favorites = getFavorites(context);
        Iterator<Truyen> iterator = favorites.iterator();
        while (iterator.hasNext()) {
            Truyen f = iterator.next();
            if (f.getTenTruyen().equals(tenTruyen)) {
                iterator.remove();
                SharedPreferences.Editor editor = getEditor(context);
                Set<String> stringSet = new HashSet<>();
                for (Truyen fav : favorites) {
                    stringSet.add(fav.getTenTruyen() + "|" + fav.getSoChap() + "|" + fav.getLinkAnh());
                }
                editor.putStringSet(PREF_KEY_FAVORITES, stringSet);
                editor.apply();
                adapter.updateFavorites(favorites);
                return;
            }
        }
    }

    public static void updateFavorites(Context context) {
        SharedPreferences.Editor editor = getEditor(context);
        editor.apply();
    }
    private static SharedPreferences getSharedPreferences(Context context) {
        return context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
    }

    private static SharedPreferences.Editor getEditor(Context context) {
        return getSharedPreferences(context).edit();
    }
}
