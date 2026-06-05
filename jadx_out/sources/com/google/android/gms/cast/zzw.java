package com.google.android.gms.cast;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.cast.CastRemoteDisplayLocalService;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbei;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzw implements ServiceConnection {
    private /* synthetic */ String zzetg;
    private /* synthetic */ CastDevice zzevl;
    private /* synthetic */ CastRemoteDisplayLocalService.Options zzevm;
    private /* synthetic */ CastRemoteDisplayLocalService.NotificationSettings zzevn;
    private /* synthetic */ Context zzevo;
    private /* synthetic */ CastRemoteDisplayLocalService.Callbacks zzevp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzw(String str, CastDevice castDevice, CastRemoteDisplayLocalService.Options options, CastRemoteDisplayLocalService.NotificationSettings notificationSettings, Context context, CastRemoteDisplayLocalService.Callbacks callbacks) {
        this.zzetg = str;
        this.zzevl = castDevice;
        this.zzevm = options;
        this.zzevn = notificationSettings;
        this.zzevo = context;
        this.zzevp = callbacks;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzbei zzbeiVar;
        AtomicBoolean atomicBoolean;
        zzbei zzbeiVar2;
        boolean zza;
        CastRemoteDisplayLocalService castRemoteDisplayLocalService = CastRemoteDisplayLocalService.this;
        if (castRemoteDisplayLocalService != null) {
            zza = castRemoteDisplayLocalService.zza(this.zzetg, this.zzevl, this.zzevm, this.zzevn, this.zzevo, this, this.zzevp);
            if (zza) {
                return;
            }
        }
        zzbeiVar = CastRemoteDisplayLocalService.zzeus;
        zzbeiVar.zzc("Connected but unable to get the service instance", new Object[0]);
        this.zzevp.onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_CREATION_FAILED));
        atomicBoolean = CastRemoteDisplayLocalService.zzeuv;
        atomicBoolean.set(false);
        try {
            this.zzevo.unbindService(this);
        } catch (IllegalArgumentException unused) {
            zzbeiVar2 = CastRemoteDisplayLocalService.zzeus;
            zzbeiVar2.zzb("No need to unbind service, already unbound", new Object[0]);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzbei zzbeiVar;
        AtomicBoolean atomicBoolean;
        zzbei zzbeiVar2;
        zzbeiVar = CastRemoteDisplayLocalService.zzeus;
        zzbeiVar.zzb("onServiceDisconnected", new Object[0]);
        this.zzevp.onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_DISCONNECTED, "Service Disconnected"));
        atomicBoolean = CastRemoteDisplayLocalService.zzeuv;
        atomicBoolean.set(false);
        try {
            this.zzevo.unbindService(this);
        } catch (IllegalArgumentException unused) {
            zzbeiVar2 = CastRemoteDisplayLocalService.zzeus;
            zzbeiVar2.zzb("No need to unbind service, already unbound", new Object[0]);
        }
    }
}
