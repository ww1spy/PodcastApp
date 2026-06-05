package com.google.android.gms.common.data;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import mobi.beyondpod.ui.views.myepisodesview.HomeScreenContentBuilder;

/* loaded from: classes.dex */
public final class DataBufferUtils {
    private DataBufferUtils() {
    }

    public static <T, E extends Freezable<T>> ArrayList<T> freezeAndClose(DataBuffer<E> dataBuffer) {
        HomeScreenContentBuilder.HomeScreenSections homeScreenSections = (ArrayList<T>) new ArrayList(dataBuffer.getCount());
        try {
            Iterator<E> it = dataBuffer.iterator();
            while (it.hasNext()) {
                homeScreenSections.add(it.next().freeze());
            }
            return homeScreenSections;
        } finally {
            dataBuffer.close();
        }
    }

    public static boolean hasData(DataBuffer<?> dataBuffer) {
        return dataBuffer != null && dataBuffer.getCount() > 0;
    }

    public static boolean hasNextPage(DataBuffer<?> dataBuffer) {
        Bundle zzahs = dataBuffer.zzahs();
        return (zzahs == null || zzahs.getString("next_page_token") == null) ? false : true;
    }

    public static boolean hasPrevPage(DataBuffer<?> dataBuffer) {
        Bundle zzahs = dataBuffer.zzahs();
        return (zzahs == null || zzahs.getString("prev_page_token") == null) ? false : true;
    }
}
