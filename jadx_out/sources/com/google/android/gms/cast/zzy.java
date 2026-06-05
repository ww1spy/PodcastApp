package com.google.android.gms.cast;

import com.google.android.gms.cast.CastRemoteDisplayLocalService;

/* loaded from: classes.dex */
final class zzy implements Runnable {
    private /* synthetic */ CastRemoteDisplayLocalService zzevk;
    private /* synthetic */ CastRemoteDisplayLocalService.NotificationSettings zzevn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzy(CastRemoteDisplayLocalService castRemoteDisplayLocalService, CastRemoteDisplayLocalService.NotificationSettings notificationSettings) {
        this.zzevk = castRemoteDisplayLocalService;
        this.zzevn = notificationSettings;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzevk.zza(this.zzevn);
    }
}
