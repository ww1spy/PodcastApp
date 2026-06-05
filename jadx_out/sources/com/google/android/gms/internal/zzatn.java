package com.google.android.gms.internal;

import android.os.Build;

/* loaded from: classes.dex */
final class zzatn implements Runnable {
    private /* synthetic */ zzatm zzeeq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatn(zzatm zzatmVar) {
        this.zzeeq = zzatmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        Object obj2;
        if (this.zzeeq.zzeel != null) {
            obj2 = this.zzeeq.zzeep.zzeej;
            if (((zzato) obj2).callServiceStopSelfResult(this.zzeeq.zzeel.intValue())) {
                this.zzeeq.zzeen.zzea("Local AnalyticsService processed last dispatch request");
                return;
            }
            return;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.zzeeq.zzeen.zzea("AnalyticsJobService processed last dispatch request");
            obj = this.zzeeq.zzeep.zzeej;
            ((zzato) obj).zza(this.zzeeq.zzeeo, false);
        }
    }
}
