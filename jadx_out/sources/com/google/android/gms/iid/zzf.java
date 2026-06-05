package com.google.android.gms.iid;

import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzf extends Binder {
    private final zzb zzimm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzf(zzb zzbVar) {
        this.zzimm = zzbVar;
    }

    public final void zza(zzd zzdVar) {
        if (Binder.getCallingUid() != Process.myUid()) {
            throw new SecurityException("Binding only allowed within app");
        }
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "service received new intent via bind strategy");
        }
        if (Log.isLoggable("EnhancedIntentService", 3)) {
            Log.d("EnhancedIntentService", "intent being queued for bg execution");
        }
        this.zzimm.zzimc.execute(new zzg(this, zzdVar));
    }
}
