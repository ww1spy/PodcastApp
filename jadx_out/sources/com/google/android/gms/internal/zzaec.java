package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import java.util.WeakHashMap;
import java.util.concurrent.Future;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaec {
    private WeakHashMap<Context, zzaee> zzcza = new WeakHashMap<>();

    public final Future<zzaea> zzo(Context context) {
        return zzaid.zza(zzaid.zzdfi, new zzaed(this, context));
    }
}
