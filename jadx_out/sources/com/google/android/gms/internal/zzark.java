package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;

/* loaded from: classes.dex */
public class zzark {
    private static volatile zzark zzdys;
    private final Context mContext;
    private final com.google.android.gms.common.util.zze zzata;
    private final Context zzdyt;
    private final zzasl zzdyu;
    private final zzatd zzdyv;
    private final com.google.android.gms.analytics.zzk zzdyw;
    private final zzaqz zzdyx;
    private final zzasq zzdyy;
    private final zzatu zzdyz;
    private final zzath zzdza;
    private final GoogleAnalytics zzdzb;
    private final zzasc zzdzc;
    private final zzaqy zzdzd;
    private final zzarv zzdze;
    private final zzasp zzdzf;

    private zzark(zzarm zzarmVar) {
        Context applicationContext = zzarmVar.getApplicationContext();
        com.google.android.gms.common.internal.zzbq.checkNotNull(applicationContext, "Application context can't be null");
        Context zzyl = zzarmVar.zzyl();
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzyl);
        this.mContext = applicationContext;
        this.zzdyt = zzyl;
        this.zzata = com.google.android.gms.common.util.zzi.zzanq();
        this.zzdyu = new zzasl(this);
        zzatd zzatdVar = new zzatd(this);
        zzatdVar.initialize();
        this.zzdyv = zzatdVar;
        zzatd zzxy = zzxy();
        String str = zzarj.VERSION;
        StringBuilder sb = new StringBuilder(134 + String.valueOf(str).length());
        sb.append("Google Analytics ");
        sb.append(str);
        sb.append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4");
        zzxy.zzec(sb.toString());
        zzath zzathVar = new zzath(this);
        zzathVar.initialize();
        this.zzdza = zzathVar;
        zzatu zzatuVar = new zzatu(this);
        zzatuVar.initialize();
        this.zzdyz = zzatuVar;
        zzaqz zzaqzVar = new zzaqz(this, zzarmVar);
        zzasc zzascVar = new zzasc(this);
        zzaqy zzaqyVar = new zzaqy(this);
        zzarv zzarvVar = new zzarv(this);
        zzasp zzaspVar = new zzasp(this);
        com.google.android.gms.analytics.zzk zzbk = com.google.android.gms.analytics.zzk.zzbk(applicationContext);
        zzbk.zza(new zzarl(this));
        this.zzdyw = zzbk;
        GoogleAnalytics googleAnalytics = new GoogleAnalytics(this);
        zzascVar.initialize();
        this.zzdzc = zzascVar;
        zzaqyVar.initialize();
        this.zzdzd = zzaqyVar;
        zzarvVar.initialize();
        this.zzdze = zzarvVar;
        zzaspVar.initialize();
        this.zzdzf = zzaspVar;
        zzasq zzasqVar = new zzasq(this);
        zzasqVar.initialize();
        this.zzdyy = zzasqVar;
        zzaqzVar.initialize();
        this.zzdyx = zzaqzVar;
        googleAnalytics.initialize();
        this.zzdzb = googleAnalytics;
        zzaqzVar.start();
    }

    private static void zza(zzari zzariVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzariVar, "Analytics service not created/initialized");
        com.google.android.gms.common.internal.zzbq.checkArgument(zzariVar.isInitialized(), "Analytics service not initialized");
    }

    public static zzark zzbl(Context context) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(context);
        if (zzdys == null) {
            synchronized (zzark.class) {
                if (zzdys == null) {
                    com.google.android.gms.common.util.zze zzanq = com.google.android.gms.common.util.zzi.zzanq();
                    long elapsedRealtime = zzanq.elapsedRealtime();
                    zzark zzarkVar = new zzark(new zzarm(context));
                    zzdys = zzarkVar;
                    GoogleAnalytics.zzvw();
                    long elapsedRealtime2 = zzanq.elapsedRealtime() - elapsedRealtime;
                    long longValue = zzast.zzedb.get().longValue();
                    if (elapsedRealtime2 > longValue) {
                        zzarkVar.zzxy().zzc("Slow initialization (ms)", Long.valueOf(elapsedRealtime2), Long.valueOf(longValue));
                    }
                }
            }
        }
        return zzdys;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final com.google.android.gms.common.util.zze zzxx() {
        return this.zzata;
    }

    public final zzatd zzxy() {
        zza(this.zzdyv);
        return this.zzdyv;
    }

    public final zzasl zzxz() {
        return this.zzdyu;
    }

    public final com.google.android.gms.analytics.zzk zzya() {
        com.google.android.gms.common.internal.zzbq.checkNotNull(this.zzdyw);
        return this.zzdyw;
    }

    public final zzaqz zzyc() {
        zza(this.zzdyx);
        return this.zzdyx;
    }

    public final zzasq zzyd() {
        zza(this.zzdyy);
        return this.zzdyy;
    }

    public final zzatu zzye() {
        zza(this.zzdyz);
        return this.zzdyz;
    }

    public final zzath zzyf() {
        zza(this.zzdza);
        return this.zzdza;
    }

    public final zzarv zzyi() {
        zza(this.zzdze);
        return this.zzdze;
    }

    public final zzasp zzyj() {
        return this.zzdzf;
    }

    public final Context zzyl() {
        return this.zzdyt;
    }

    public final zzatd zzym() {
        return this.zzdyv;
    }

    public final GoogleAnalytics zzyn() {
        com.google.android.gms.common.internal.zzbq.checkNotNull(this.zzdzb);
        com.google.android.gms.common.internal.zzbq.checkArgument(this.zzdzb.isInitialized(), "Analytics instance not initialized");
        return this.zzdzb;
    }

    public final zzath zzyo() {
        if (this.zzdza == null || !this.zzdza.isInitialized()) {
            return null;
        }
        return this.zzdza;
    }

    public final zzaqy zzyp() {
        zza(this.zzdzd);
        return this.zzdzd;
    }

    public final zzasc zzyq() {
        zza(this.zzdzc);
        return this.zzdzc;
    }
}
