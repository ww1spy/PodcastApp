package com.google.android.gms.internal;

import java.io.ByteArrayInputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes.dex */
public final class zzaju<T> implements zzale<zzp, T> {
    private /* synthetic */ zzajx zzdhd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaju(zzajr zzajrVar, zzajx zzajxVar) {
        this.zzdhd = zzajxVar;
    }

    @Override // com.google.android.gms.internal.zzale
    public final /* synthetic */ Object apply(zzp zzpVar) {
        return this.zzdhd.zze(new ByteArrayInputStream(zzpVar.data));
    }
}
