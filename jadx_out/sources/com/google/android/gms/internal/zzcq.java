package com.google.android.gms.internal;

import android.os.ConditionVariable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcq implements Runnable {
    private /* synthetic */ zzcp zzagv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcq(zzcp zzcpVar) {
        this.zzagv = zzcpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        zzdm zzdmVar;
        ConditionVariable conditionVariable2;
        if (this.zzagv.zzagt != null) {
            return;
        }
        conditionVariable = zzcp.zzagr;
        synchronized (conditionVariable) {
            if (this.zzagv.zzagt != null) {
                return;
            }
            boolean booleanValue = ((Boolean) zzlc.zzio().zzd(zzoi.zzbrh)).booleanValue();
            if (booleanValue) {
                try {
                    zzdmVar = this.zzagv.zzagq;
                    zzcp.zzags = new zziz(zzdmVar.zzaiq, "ADSHIELD", null);
                } catch (Throwable unused) {
                    booleanValue = false;
                }
            }
            this.zzagv.zzagt = Boolean.valueOf(booleanValue);
            conditionVariable2 = zzcp.zzagr;
            conditionVariable2.open();
        }
    }
}
