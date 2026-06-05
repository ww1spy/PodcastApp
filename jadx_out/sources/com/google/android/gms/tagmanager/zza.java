package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Process;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zza {
    private static Object zzkmq = new Object();
    private static zza zzkmr;
    private volatile boolean mClosed;
    private final Context mContext;
    private final com.google.android.gms.common.util.zze zzata;
    private final Thread zzdeq;
    private volatile AdvertisingIdClient.Info zzdyc;
    private volatile long zzkmk;
    private volatile long zzkml;
    private volatile long zzkmm;
    private volatile long zzkmn;
    private final Object zzkmo;
    private zzd zzkmp;

    private zza(Context context) {
        this(context, null, com.google.android.gms.common.util.zzi.zzanq());
    }

    private zza(Context context, zzd zzdVar, com.google.android.gms.common.util.zze zzeVar) {
        this.zzkmk = 900000L;
        this.zzkml = 30000L;
        this.mClosed = false;
        this.zzkmo = new Object();
        this.zzkmp = new zzb(this);
        this.zzata = zzeVar;
        this.mContext = context != null ? context.getApplicationContext() : context;
        this.zzkmm = this.zzata.currentTimeMillis();
        this.zzdeq = new Thread(new zzc(this));
    }

    private final void zzbfc() {
        synchronized (this) {
            try {
                if (!this.mClosed) {
                    zzbfd();
                    wait(500L);
                }
            } catch (InterruptedException unused) {
            }
        }
    }

    private final void zzbfd() {
        if (this.zzata.currentTimeMillis() - this.zzkmm > this.zzkml) {
            synchronized (this.zzkmo) {
                this.zzkmo.notify();
            }
            this.zzkmm = this.zzata.currentTimeMillis();
        }
    }

    private final void zzbfe() {
        if (this.zzata.currentTimeMillis() - this.zzkmn > 3600000) {
            this.zzdyc = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzbff() {
        Process.setThreadPriority(10);
        while (!this.mClosed) {
            AdvertisingIdClient.Info zzbfg = this.zzkmp.zzbfg();
            if (zzbfg != null) {
                this.zzdyc = zzbfg;
                this.zzkmn = this.zzata.currentTimeMillis();
                zzdj.zzcy("Obtained fresh AdvertisingId info from GmsCore.");
            }
            synchronized (this) {
                notifyAll();
            }
            try {
                synchronized (this.zzkmo) {
                    this.zzkmo.wait(this.zzkmk);
                }
            } catch (InterruptedException unused) {
                zzdj.zzcy("sleep interrupted in AdvertiserDataPoller thread; continuing");
            }
        }
    }

    public static zza zzeg(Context context) {
        if (zzkmr == null) {
            synchronized (zzkmq) {
                if (zzkmr == null) {
                    zza zzaVar = new zza(context);
                    zzkmr = zzaVar;
                    zzaVar.zzdeq.start();
                }
            }
        }
        return zzkmr;
    }

    public final void close() {
        this.mClosed = true;
        this.zzdeq.interrupt();
    }

    public final boolean isLimitAdTrackingEnabled() {
        if (this.zzdyc == null) {
            zzbfc();
        } else {
            zzbfd();
        }
        zzbfe();
        if (this.zzdyc == null) {
            return true;
        }
        return this.zzdyc.isLimitAdTrackingEnabled();
    }

    public final String zzbfb() {
        if (this.zzdyc == null) {
            zzbfc();
        } else {
            zzbfd();
        }
        zzbfe();
        if (this.zzdyc == null) {
            return null;
        }
        return this.zzdyc.getId();
    }
}
