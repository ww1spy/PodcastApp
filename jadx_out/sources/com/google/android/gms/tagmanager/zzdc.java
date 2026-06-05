package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.util.LruCache;

@TargetApi(12)
/* loaded from: classes.dex */
final class zzdc<K, V> implements zzp<K, V> {
    private LruCache<K, V> zzkqs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdc(int i, zzs<K, V> zzsVar) {
        this.zzkqs = new zzdd(this, 1048576, zzsVar);
    }

    @Override // com.google.android.gms.tagmanager.zzp
    public final V get(K k) {
        return this.zzkqs.get(k);
    }

    @Override // com.google.android.gms.tagmanager.zzp
    public final void zzf(K k, V v) {
        this.zzkqs.put(k, v);
    }
}
