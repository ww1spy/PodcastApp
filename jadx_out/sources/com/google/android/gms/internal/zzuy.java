package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzuy {
    private final Object mLock = new Object();
    private zzvf zzcgl;

    public final zzvf zzb(Context context, zzala zzalaVar) {
        zzvf zzvfVar;
        synchronized (this.mLock) {
            if (this.zzcgl == null) {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
                this.zzcgl = new zzvf(context, zzalaVar, (String) zzlc.zzio().zzd(zzoi.zzblc));
            }
            zzvfVar = this.zzcgl;
        }
        return zzvfVar;
    }
}
