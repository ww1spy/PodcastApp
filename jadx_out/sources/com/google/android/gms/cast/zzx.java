package com.google.android.gms.cast;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzx implements Runnable {
    private /* synthetic */ CastRemoteDisplayLocalService zzevk;
    private /* synthetic */ boolean zzevq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(CastRemoteDisplayLocalService castRemoteDisplayLocalService, boolean z) {
        this.zzevk = castRemoteDisplayLocalService;
        this.zzevq = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzevk.zzaw(this.zzevq);
    }
}
