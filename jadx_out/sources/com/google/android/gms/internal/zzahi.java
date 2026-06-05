package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.atomic.AtomicInteger;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzahi implements zzaic {
    private Context mContext;
    private zzfu zzano;
    private zzala zzapq;
    private String zzddt;
    private final Object mLock = new Object();
    private final zzaho zzddo = new zzaho();
    private final zzahy zzddp = new zzahy();
    private boolean zzarf = false;
    private zzol zzddq = null;
    private zzhm zzddr = null;
    private zzhh zzaze = null;
    private Boolean zzdds = null;
    private final AtomicInteger zzddu = new AtomicInteger(0);
    private final zzahk zzddv = new zzahk();

    private final zzhm zza(Context context, boolean z, boolean z2) {
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbnh)).booleanValue()) {
            return null;
        }
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbnp)).booleanValue()) {
            if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbnn)).booleanValue()) {
                return null;
            }
        }
        if (z && z2) {
            return null;
        }
        synchronized (this.mLock) {
            if (Looper.getMainLooper() != null && context != null) {
                if (this.zzaze == null) {
                    this.zzaze = new zzhh();
                }
                if (this.zzddr == null) {
                    this.zzddr = new zzhm(this.zzaze, zzabb.zzc(context, this.zzapq));
                }
                this.zzddr.zzgx();
                zzahw.zzcy("start fetching content...");
                return this.zzddr;
            }
            return null;
        }
    }

    public final Resources getResources() {
        if (this.zzapq.zzdjb) {
            return this.mContext.getResources();
        }
        try {
            DynamiteModule zza = DynamiteModule.zza(this.mContext, DynamiteModule.zzhdi, ModuleDescriptor.MODULE_ID);
            if (zza != null) {
                return zza.zzarl().getResources();
            }
            return null;
        } catch (DynamiteModule.zzc e) {
            zzahw.zzc("Cannot load resource from dynamite apk or local jar", e);
            return null;
        }
    }

    public final void zza(Boolean bool) {
        synchronized (this.mLock) {
            this.zzdds = bool;
        }
    }

    public final void zza(Throwable th, String str) {
        zzabb.zzc(this.mContext, this.zzapq).zza(th, str);
    }

    public final zzhm zzad(Context context) {
        return zza(context, this.zzddp.zzqp(), this.zzddp.zzqr());
    }

    @Override // com.google.android.gms.internal.zzaic
    public final void zzb(Bundle bundle) {
        if (bundle.containsKey("content_url_opted_out") && bundle.containsKey("content_vertical_opted_out")) {
            zza(this.mContext, bundle.getBoolean("content_url_opted_out"), bundle.getBoolean("content_vertical_opted_out"));
        }
    }

    @TargetApi(23)
    public final void zzd(Context context, zzala zzalaVar) {
        synchronized (this.mLock) {
            if (!this.zzarf) {
                this.mContext = context.getApplicationContext();
                this.zzapq = zzalaVar;
                com.google.android.gms.ads.internal.zzbt.zzeo().zza(com.google.android.gms.ads.internal.zzbt.zzeq());
                this.zzddp.initialize(this.mContext);
                this.zzddp.zza(this);
                zzabb.zzc(this.mContext, this.zzapq);
                this.zzddt = com.google.android.gms.ads.internal.zzbt.zzel().zzl(context, zzalaVar.zzcu);
                this.zzano = new zzfu(context.getApplicationContext(), this.zzapq);
                zzok zzokVar = new zzok(this.mContext, this.zzapq.zzcu);
                try {
                    com.google.android.gms.ads.internal.zzbt.zzeu();
                    this.zzddq = zzon.zza(zzokVar);
                } catch (IllegalArgumentException e) {
                    zzahw.zzc("Cannot initialize CSI reporter.", e);
                }
                this.zzarf = true;
            }
        }
    }

    public final zzaho zzpu() {
        return this.zzddo;
    }

    public final zzol zzpv() {
        zzol zzolVar;
        synchronized (this.mLock) {
            zzolVar = this.zzddq;
        }
        return zzolVar;
    }

    public final Boolean zzpw() {
        Boolean bool;
        synchronized (this.mLock) {
            bool = this.zzdds;
        }
        return bool;
    }

    public final boolean zzpx() {
        return this.zzddv.zzpx();
    }

    public final boolean zzpy() {
        return this.zzddv.zzpy();
    }

    public final void zzpz() {
        this.zzddv.zzpz();
    }

    public final zzfu zzqa() {
        return this.zzano;
    }

    public final void zzqb() {
        this.zzddu.incrementAndGet();
    }

    public final void zzqc() {
        this.zzddu.decrementAndGet();
    }

    public final int zzqd() {
        return this.zzddu.get();
    }

    public final zzahy zzqe() {
        zzahy zzahyVar;
        synchronized (this.mLock) {
            zzahyVar = this.zzddp;
        }
        return zzahyVar;
    }

    public final void zzz(boolean z) {
        this.zzddv.zzz(z);
    }
}
