package com.google.android.gms.tagmanager;

import android.util.LruCache;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
public final class zzdd<K, V> extends LruCache<K, V> {
    private /* synthetic */ zzs zzkqt;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdd(zzdc zzdcVar, int i, zzs zzsVar) {
        super(i);
        this.zzkqt = zzsVar;
    }

    @Override // android.util.LruCache
    protected final int sizeOf(K k, V v) {
        return this.zzkqt.sizeOf(k, v);
    }
}
