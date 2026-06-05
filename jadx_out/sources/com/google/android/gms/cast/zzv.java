package com.google.android.gms.cast;

/* loaded from: classes.dex */
final class zzv implements Runnable {
    private /* synthetic */ CastRemoteDisplayLocalService zzevk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(CastRemoteDisplayLocalService castRemoteDisplayLocalService) {
        this.zzevk = castRemoteDisplayLocalService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        boolean z2;
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = this.zzevk;
        z = this.zzevk.zzevf;
        StringBuilder sb = new StringBuilder(59);
        sb.append("onCreate after delay. The local service been started: ");
        sb.append(z);
        castRemoteDisplayLocalService.zzeb(sb.toString());
        z2 = this.zzevk.zzevf;
        if (z2) {
            return;
        }
        this.zzevk.zzee("The local service has not been been started, stopping it");
        this.zzevk.stopSelf();
    }
}
