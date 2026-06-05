package com.google.android.gms.common.data;

import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.ui.views.myepisodesview.HomeScreenContentBuilder;

/* loaded from: classes.dex */
public final class FreezableUtils {
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(ArrayList<E> arrayList) {
        HomeScreenContentBuilder.HomeScreenSections homeScreenSections = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            homeScreenSections.add(arrayList.get(i).freeze());
        }
        return homeScreenSections;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freeze(E[] eArr) {
        HomeScreenContentBuilder.HomeScreenSections homeScreenSections = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e : eArr) {
            homeScreenSections.add(e.freeze());
        }
        return homeScreenSections;
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(Iterable<E> iterable) {
        HomeScreenContentBuilder.HomeScreenSections homeScreenSections = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            homeScreenSections.add(it.next().freeze());
        }
        return homeScreenSections;
    }
}
