package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zztk {
    private final Context mContext;
    private final com.google.android.gms.ads.internal.zzv zzanp;
    private final zzwf zzanu;
    private final zzala zzapq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztk(Context context, zzwf zzwfVar, zzala zzalaVar, com.google.android.gms.ads.internal.zzv zzvVar) {
        this.mContext = context;
        this.zzanu = zzwfVar;
        this.zzapq = zzalaVar;
        this.zzanp = zzvVar;
    }

    public final Context getApplicationContext() {
        return this.mContext.getApplicationContext();
    }

    public final com.google.android.gms.ads.internal.zzak zzav(String str) {
        return new com.google.android.gms.ads.internal.zzak(this.mContext, new zzko(), str, this.zzanu, this.zzapq, this.zzanp);
    }

    public final com.google.android.gms.ads.internal.zzak zzaw(String str) {
        return new com.google.android.gms.ads.internal.zzak(this.mContext.getApplicationContext(), new zzko(), str, this.zzanu, this.zzapq, this.zzanp);
    }

    public final zztk zzlf() {
        return new zztk(this.mContext.getApplicationContext(), this.zzanu, this.zzapq, this.zzanp);
    }
}
