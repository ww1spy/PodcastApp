package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@Hide
/* loaded from: classes.dex */
public final class zzaqz extends zzari {
    private final zzarw zzdyh;

    public zzaqz(zzark zzarkVar, zzarm zzarmVar) {
        super(zzarkVar);
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzarmVar);
        this.zzdyh = new zzarw(zzarkVar, zzarmVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void onServiceConnected() {
        com.google.android.gms.analytics.zzk.zzwj();
        this.zzdyh.onServiceConnected();
    }

    public final void setLocalDispatchPeriod(int i) {
        zzyk();
        zzb("setLocalDispatchPeriod (sec)", Integer.valueOf(i));
        zzya().zzd(new zzara(this, i));
    }

    public final void start() {
        this.zzdyh.start();
    }

    public final long zza(zzarn zzarnVar) {
        zzyk();
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzarnVar);
        com.google.android.gms.analytics.zzk.zzwj();
        long zza = this.zzdyh.zza(zzarnVar, true);
        if (zza == 0) {
            this.zzdyh.zzb(zzarnVar);
        }
        return zza;
    }

    public final void zza(zzasr zzasrVar) {
        zzyk();
        zzya().zzd(new zzarf(this, zzasrVar));
    }

    public final void zza(zzasy zzasyVar) {
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzasyVar);
        zzyk();
        zzb("Hit delivery requested", zzasyVar);
        zzya().zzd(new zzard(this, zzasyVar));
    }

    public final void zza(String str, Runnable runnable) {
        com.google.android.gms.common.internal.zzbq.zzh(str, "campaign param can't be empty");
        zzya().zzd(new zzarc(this, str, runnable));
    }

    @Override // com.google.android.gms.internal.zzari
    protected final void zzwk() {
        this.zzdyh.initialize();
    }

    public final void zzxr() {
        zzyk();
        zzya().zzd(new zzare(this));
    }

    public final void zzxs() {
        zzyk();
        Context context = getContext();
        if (!zzatk.zzbj(context) || !zzatl.zzbn(context)) {
            zza((zzasr) null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
        context.startService(intent);
    }

    public final boolean zzxt() {
        zzyk();
        try {
            zzya().zza(new zzarg(this)).get(4L, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e) {
            zzd("syncDispatchLocalHits interrupted", e);
            return false;
        } catch (ExecutionException e2) {
            zze("syncDispatchLocalHits failed", e2);
            return false;
        } catch (TimeoutException e3) {
            zzd("syncDispatchLocalHits timed out", e3);
            return false;
        }
    }

    public final void zzxu() {
        zzyk();
        com.google.android.gms.analytics.zzk.zzwj();
        zzarw zzarwVar = this.zzdyh;
        com.google.android.gms.analytics.zzk.zzwj();
        zzarwVar.zzyk();
        zzarwVar.zzea("Service disconnected");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzxv() {
        com.google.android.gms.analytics.zzk.zzwj();
        this.zzdyh.zzxv();
    }
}
