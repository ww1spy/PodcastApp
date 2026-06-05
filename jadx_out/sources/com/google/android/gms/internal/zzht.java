package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.PriorityQueue;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzht {
    private final int zzbae;
    private final zzhs zzbag = new zzhx();
    private final int zzbad = 6;
    private final int zzbaf = 0;

    public zzht(int i) {
        this.zzbae = i;
    }

    private final String zzz(String str) {
        String[] split = str.split("\n");
        if (split.length == 0) {
            return "";
        }
        zzhv zzhvVar = new zzhv();
        PriorityQueue priorityQueue = new PriorityQueue(this.zzbae, new zzhu(this));
        for (String str2 : split) {
            String[] zzb = zzhw.zzb(str2, false);
            if (zzb.length != 0) {
                zzhz.zza(zzb, this.zzbae, this.zzbad, priorityQueue);
            }
        }
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            try {
                zzhvVar.write(this.zzbag.zzy(((zzia) it.next()).zzbak));
            } catch (IOException e) {
                zzahw.zzb("Error while writing hash to byteStream", e);
            }
        }
        return zzhvVar.toString();
    }

    public final String zza(ArrayList<String> arrayList) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> arrayList2 = arrayList;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            String str = arrayList2.get(i);
            i++;
            sb.append(str.toLowerCase(Locale.US));
            sb.append('\n');
        }
        return zzz(sb.toString());
    }
}
