package com.google.android.gms.internal;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class zzoh<T> implements Callable<T> {
    private /* synthetic */ zzny zzbkz;
    private /* synthetic */ zzog zzbla;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzoh(zzog zzogVar, zzny zznyVar) {
        this.zzbla = zzogVar;
        this.zzbkz = zznyVar;
    }

    @Override // java.util.concurrent.Callable
    public final T call() {
        SharedPreferences sharedPreferences;
        zzny zznyVar = this.zzbkz;
        sharedPreferences = this.zzbla.zzbkx;
        return (T) zznyVar.zza(sharedPreferences);
    }
}
