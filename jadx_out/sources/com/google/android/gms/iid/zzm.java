package com.google.android.gms.iid;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

@Hide
/* loaded from: classes.dex */
public final class zzm {
    private final Context zzaiq;
    private final ScheduledExecutorService zzind;
    private zzo zzine;
    private int zzinf;

    public zzm(Context context) {
        this(context, Executors.newSingleThreadScheduledExecutor());
    }

    @VisibleForTesting
    private zzm(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzine = new zzo(this);
        this.zzinf = 1;
        this.zzaiq = context.getApplicationContext();
        this.zzind = scheduledExecutorService;
    }

    public static /* synthetic */ Context zza(zzm zzmVar) {
        return zzmVar.zzaiq;
    }

    private final synchronized <T> Task<T> zza(zzu<T> zzuVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String valueOf = String.valueOf(zzuVar);
            StringBuilder sb = new StringBuilder(9 + String.valueOf(valueOf).length());
            sb.append("Queueing ");
            sb.append(valueOf);
            Log.d("MessengerIpcClient", sb.toString());
        }
        if (!this.zzine.zzb(zzuVar)) {
            this.zzine = new zzo(this);
            this.zzine.zzb(zzuVar);
        }
        return zzuVar.zzgyc.getTask();
    }

    private final synchronized int zzaws() {
        int i;
        i = this.zzinf;
        this.zzinf = i + 1;
        return i;
    }

    public static /* synthetic */ ScheduledExecutorService zzb(zzm zzmVar) {
        return zzmVar.zzind;
    }

    public final Task<Bundle> zzj(int i, Bundle bundle) {
        return zza(new zzw(zzaws(), 1, bundle));
    }
}
