package com.google.android.gms.ads.internal.overlay;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzf implements Runnable {
    private /* synthetic */ zzd zzcne;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(zzd zzdVar) {
        this.zzcne = zzdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzcne.zznl();
    }
}
