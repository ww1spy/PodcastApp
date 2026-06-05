package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzcu;
import com.google.android.gms.internal.zzcv;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbq implements Callable<zzcv> {
    private /* synthetic */ zzbn zzasj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbq(zzbn zzbnVar) {
        this.zzasj = zzbnVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzcv call() throws Exception {
        zzala zzalaVar;
        Context context;
        zzalaVar = this.zzasj.zzapq;
        String str = zzalaVar.zzcu;
        context = this.zzasj.mContext;
        return new zzcv(zzcu.zza(str, context, false));
    }
}
