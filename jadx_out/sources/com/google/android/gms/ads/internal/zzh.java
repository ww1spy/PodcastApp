package com.google.android.gms.ads.internal;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzh implements Callable<String> {
    private /* synthetic */ zzd zzanx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzh(zzd zzdVar) {
        this.zzanx = zzdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        return this.zzanx.zzanm.zzaty.zzae().zza(this.zzanx.zzanm.zzaiq);
    }
}
