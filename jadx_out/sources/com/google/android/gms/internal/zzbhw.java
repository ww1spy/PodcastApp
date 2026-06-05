package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbhw extends zzbgl {
    public static final Parcelable.Creator<zzbhw> CREATOR = new zzbhz();
    final String className;
    private int versionCode;
    private ArrayList<zzbhx> zzgjb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbhw(int i, String str, ArrayList<zzbhx> arrayList) {
        this.versionCode = i;
        this.className = str;
        this.zzgjb = arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbhw(String str, Map<String, zzbhq<?, ?>> map) {
        ArrayList<zzbhx> arrayList;
        this.versionCode = 1;
        this.className = str;
        if (map == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList<>();
            for (String str2 : map.keySet()) {
                arrayList.add(new zzbhx(str2, map.get(str2)));
            }
        }
        this.zzgjb = arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 1, this.versionCode);
        zzbgo.zza(parcel, 2, this.className, false);
        zzbgo.zzc(parcel, 3, this.zzgjb, false);
        zzbgo.zzai(parcel, zze);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final HashMap<String, zzbhq<?, ?>> zzank() {
        HashMap<String, zzbhq<?, ?>> hashMap = new HashMap<>();
        int size = this.zzgjb.size();
        for (int i = 0; i < size; i++) {
            zzbhx zzbhxVar = this.zzgjb.get(i);
            hashMap.put(zzbhxVar.key, zzbhxVar.zzgjc);
        }
        return hashMap;
    }
}
