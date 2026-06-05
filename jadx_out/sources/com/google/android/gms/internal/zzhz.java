package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.PriorityQueue;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzhz {
    private static long zza(long j, int i) {
        if (i == 0) {
            return 1L;
        }
        if (i == 1) {
            return j;
        }
        return (i % 2 == 0 ? zza((j * j) % 1073807359, i / 2) : j * (zza((j * j) % 1073807359, i / 2) % 1073807359)) % 1073807359;
    }

    private static String zza(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            zzahw.e("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i >= i4) {
                sb.append(strArr[i4]);
                return sb.toString();
            }
            sb.append(strArr[i]);
            sb.append(' ');
            i++;
        }
    }

    private static void zza(int i, long j, String str, int i2, PriorityQueue<zzia> priorityQueue) {
        zzia zziaVar = new zzia(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().zzbal <= zziaVar.zzbal && priorityQueue.peek().value <= zziaVar.value)) && !priorityQueue.contains(zziaVar)) {
            priorityQueue.add(zziaVar);
            if (priorityQueue.size() > i) {
                priorityQueue.poll();
            }
        }
    }

    public static void zza(String[] strArr, int i, int i2, PriorityQueue<zzia> priorityQueue) {
        if (strArr.length < i2) {
            zza(i, zzb(strArr, 0, strArr.length), zza(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        long zzb = zzb(strArr, 0, i2);
        zza(i, zzb, zza(strArr, 0, i2), i2, priorityQueue);
        long zza = zza(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            zzb = ((((((zzb + 1073807359) - ((((zzhw.zzaa(strArr[i3 - 1]) + 2147483647L) % 1073807359) * zza) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((zzhw.zzaa(strArr[(i3 + i2) - 1]) + 2147483647L) % 1073807359)) % 1073807359;
            zza(i, zzb, zza(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }

    private static long zzb(String[] strArr, int i, int i2) {
        long zzaa = (zzhw.zzaa(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            zzaa = (((zzaa * 16785407) % 1073807359) + ((zzhw.zzaa(strArr[i3]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return zzaa;
    }
}
