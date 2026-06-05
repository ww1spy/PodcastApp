package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;

/* loaded from: classes.dex */
public final class zzarq implements ServiceConnection {
    final /* synthetic */ zzaro zzdzq;
    private volatile zzasz zzdzr;
    private volatile boolean zzdzs;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzarq(zzaro zzaroVar) {
        this.zzdzq = zzaroVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzarq zzarqVar;
        com.google.android.gms.common.internal.zzbq.zzgn("AnalyticsServiceConnection.onServiceConnected");
        synchronized (this) {
            try {
                if (iBinder == null) {
                    this.zzdzq.zzee("Service connected with null binder");
                    return;
                }
                zzasz zzaszVar = null;
                try {
                    String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                    if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(interfaceDescriptor)) {
                        if (iBinder != null) {
                            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
                            zzaszVar = queryLocalInterface instanceof zzasz ? (zzasz) queryLocalInterface : new zzata(iBinder);
                        }
                        this.zzdzq.zzea("Bound to IAnalyticsService interface");
                    } else {
                        this.zzdzq.zze("Got binder with a wrong descriptor", interfaceDescriptor);
                    }
                } catch (RemoteException unused) {
                    this.zzdzq.zzee("Service connect failed to get IAnalyticsService");
                }
                if (zzaszVar == null) {
                    try {
                        com.google.android.gms.common.stats.zza.zzanm();
                        Context context = this.zzdzq.getContext();
                        zzarqVar = this.zzdzq.zzdzm;
                        context.unbindService(zzarqVar);
                    } catch (IllegalArgumentException unused2) {
                    }
                } else if (this.zzdzs) {
                    this.zzdzr = zzaszVar;
                } else {
                    this.zzdzq.zzed("onServiceConnected received after the timeout limit");
                    this.zzdzq.zzya().zzd(new zzarr(this, zzaszVar));
                }
            } finally {
                notifyAll();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        com.google.android.gms.common.internal.zzbq.zzgn("AnalyticsServiceConnection.onServiceDisconnected");
        this.zzdzq.zzya().zzd(new zzars(this, componentName));
    }

    public final zzasz zzyy() {
        zzarq zzarqVar;
        com.google.android.gms.analytics.zzk.zzwj();
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
        Context context = this.zzdzq.getContext();
        intent.putExtra("app_package_name", context.getPackageName());
        com.google.android.gms.common.stats.zza zzanm = com.google.android.gms.common.stats.zza.zzanm();
        synchronized (this) {
            this.zzdzr = null;
            this.zzdzs = true;
            zzarqVar = this.zzdzq.zzdzm;
            boolean zza = zzanm.zza(context, intent, zzarqVar, NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED);
            this.zzdzq.zza("Bind to service requested", Boolean.valueOf(zza));
            if (!zza) {
                this.zzdzs = false;
                return null;
            }
            try {
                wait(zzast.zzecw.get().longValue());
            } catch (InterruptedException unused) {
                this.zzdzq.zzed("Wait for service connect was interrupted");
            }
            this.zzdzs = false;
            zzasz zzaszVar = this.zzdzr;
            this.zzdzr = null;
            if (zzaszVar == null) {
                this.zzdzq.zzee("Successfully bound to service but never got onServiceConnected callback");
            }
            return zzaszVar;
        }
    }
}
