package com.google.android.gms.common.api.internal;

import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Hide
/* loaded from: classes.dex */
public final class zzj {
    private int zzfum;
    private final ArrayMap<zzh<?>, String> zzfuk = new ArrayMap<>();
    private final TaskCompletionSource<Map<zzh<?>, String>> zzful = new TaskCompletionSource<>();
    private boolean zzfun = false;
    private final ArrayMap<zzh<?>, ConnectionResult> zzfse = new ArrayMap<>();

    public zzj(Iterable<? extends GoogleApi<?>> iterable) {
        Iterator<? extends GoogleApi<?>> it = iterable.iterator();
        while (it.hasNext()) {
            this.zzfse.put(it.next().zzahv(), null);
        }
        this.zzfum = this.zzfse.keySet().size();
    }

    public final Task<Map<zzh<?>, String>> getTask() {
        return this.zzful.getTask();
    }

    public final void zza(zzh<?> zzhVar, ConnectionResult connectionResult, @Nullable String str) {
        this.zzfse.put(zzhVar, connectionResult);
        this.zzfuk.put(zzhVar, str);
        this.zzfum--;
        if (!connectionResult.isSuccess()) {
            this.zzfun = true;
        }
        if (this.zzfum == 0) {
            if (!this.zzfun) {
                this.zzful.setResult(this.zzfuk);
            } else {
                this.zzful.setException(new AvailabilityException(this.zzfse));
            }
        }
    }

    public final Set<zzh<?>> zzaii() {
        return this.zzfse.keySet();
    }
}
