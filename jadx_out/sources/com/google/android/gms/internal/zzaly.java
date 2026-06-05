package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import java.util.concurrent.Executor;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaly {
    public static final Executor zzdjt = new zzalz();
    public static final Executor zzdju = new zzama();
    private static zzalx zzdjv = zza(zzdjt);
    private static zzalx zzdjw = zza(zzdju);

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.zzamb, com.google.android.gms.internal.zzalx] */
    private static zzalx zza(Executor executor) {
        return new zzamb(executor, null);
    }
}
