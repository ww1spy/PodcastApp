package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzaan;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzzw<T extends zzaan> implements zzaan<T> {
    private final HashMap<String, List<com.google.android.gms.ads.internal.gmsg.zzt<? super T>>> zzcou = new HashMap<>();

    @Override // com.google.android.gms.internal.zzaan
    public void zza(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super T> zztVar) {
        List<com.google.android.gms.ads.internal.gmsg.zzt<? super T>> list = this.zzcou.get(str);
        if (list == null) {
            list = new CopyOnWriteArrayList<>();
            this.zzcou.put(str, list);
        }
        list.add(zztVar);
    }

    @Override // com.google.android.gms.internal.zzaan
    public void zzb(String str, com.google.android.gms.ads.internal.gmsg.zzt<? super T> zztVar) {
        List<com.google.android.gms.ads.internal.gmsg.zzt<? super T>> list = this.zzcou.get(str);
        if (list == null) {
            return;
        }
        list.remove(zztVar);
    }
}
