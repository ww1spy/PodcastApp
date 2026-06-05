package com.google.android.gms.ads.internal;

import android.os.Bundle;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzko;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzp {
    private static String bundleToString(@Nullable Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? bundleToString((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    public static Object[] zza(String str, zzkk zzkkVar, String str2, int i, @Nullable zzko zzkoVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        arrayList.add(str2);
        if (hashSet.contains("formatString")) {
            arrayList.add(null);
        }
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzkkVar.zzbgv));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(bundleToString(zzkkVar.extras));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzkkVar.zzbgw));
        }
        if (hashSet.contains("keywords")) {
            if (zzkkVar.zzbgx != null) {
                arrayList.add(zzkkVar.zzbgx.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzkkVar.zzbgy));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzkkVar.zzbgz));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzkkVar.zzbha));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzkkVar.zzbhb);
        }
        if (hashSet.contains("location")) {
            if (zzkkVar.zzbhd != null) {
                arrayList.add(zzkkVar.zzbhd.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzkkVar.zzbhe);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(bundleToString(zzkkVar.zzbhf));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(bundleToString(zzkkVar.zzbhg));
        }
        if (hashSet.contains("categoryExclusions")) {
            if (zzkkVar.zzbhh != null) {
                arrayList.add(zzkkVar.zzbhh.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzkkVar.zzbhi);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzkkVar.zzbhj);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzkkVar.zzbhk));
        }
        return arrayList.toArray();
    }
}
