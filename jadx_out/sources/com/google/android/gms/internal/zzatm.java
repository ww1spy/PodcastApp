package com.google.android.gms.internal;

import android.app.job.JobParameters;
import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzatm implements zzasr {
    final /* synthetic */ Integer zzeel;
    private /* synthetic */ zzark zzeem;
    final /* synthetic */ zzatd zzeen;
    final /* synthetic */ JobParameters zzeeo;
    final /* synthetic */ zzatl zzeep;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatm(zzatl zzatlVar, Integer num, zzark zzarkVar, zzatd zzatdVar, JobParameters jobParameters) {
        this.zzeep = zzatlVar;
        this.zzeel = num;
        this.zzeem = zzarkVar;
        this.zzeen = zzatdVar;
        this.zzeeo = jobParameters;
    }

    @Override // com.google.android.gms.internal.zzasr
    public final void zze(Throwable th) {
        Handler handler;
        handler = this.zzeep.mHandler;
        handler.post(new zzatn(this));
    }
}
