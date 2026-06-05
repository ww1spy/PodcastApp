package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzvf {
    private static zzajm<com.google.android.gms.ads.internal.js.zzc> zzcgp = new zzvg();
    private static zzajm<com.google.android.gms.ads.internal.js.zzc> zzcgq = new zzvh();
    private final com.google.android.gms.ads.internal.js.zzn zzcgr;

    public zzvf(Context context, zzala zzalaVar, String str) {
        this.zzcgr = new com.google.android.gms.ads.internal.js.zzn(context, zzalaVar, str, zzcgp, zzcgq);
    }

    public final <I, O> zzux<I, O> zza(String str, zzva<I> zzvaVar, zzuz<O> zzuzVar) {
        return new zzvi(this.zzcgr, str, zzvaVar, zzuzVar);
    }
}
