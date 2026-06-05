package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzarr implements Runnable {
    private /* synthetic */ zzasz zzdzt;
    private /* synthetic */ zzarq zzdzu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarr(zzarq zzarqVar, zzasz zzaszVar) {
        this.zzdzu = zzarqVar;
        this.zzdzt = zzaszVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzdzu.zzdzq.isConnected()) {
            return;
        }
        this.zzdzu.zzdzq.zzeb("Connected to service after a timeout");
        this.zzdzu.zzdzq.zza(this.zzdzt);
    }
}
