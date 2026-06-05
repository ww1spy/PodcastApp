package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.zzcyw;

/* loaded from: classes.dex */
final class zzcx implements Runnable {
    private /* synthetic */ zzcyw zzfyb;
    private /* synthetic */ zzcv zzgbe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcx(zzcv zzcvVar, zzcyw zzcywVar) {
        this.zzgbe = zzcvVar;
        this.zzfyb = zzcywVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgbe.zzc(this.zzfyb);
    }
}
