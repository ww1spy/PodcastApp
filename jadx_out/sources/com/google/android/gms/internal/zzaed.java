package com.google.android.gms.internal;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaed implements Callable<zzaea> {
    private /* synthetic */ Context val$context;
    private /* synthetic */ zzaec zzczb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaed(zzaec zzaecVar, Context context) {
        this.zzczb = zzaecVar;
        this.val$context = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzaea call() throws Exception {
        WeakHashMap weakHashMap;
        zzaea zzom;
        WeakHashMap weakHashMap2;
        weakHashMap = this.zzczb.zzcza;
        zzaee zzaeeVar = (zzaee) weakHashMap.get(this.val$context);
        if (zzaeeVar != null) {
            if (!(zzaeeVar.zzczc + ((Long) zzlc.zzio().zzd(zzoi.zzbqp)).longValue() < com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis())) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbqo)).booleanValue()) {
                    zzom = new zzaeb(this.val$context, zzaeeVar.zzczd).zzom();
                    weakHashMap2 = this.zzczb.zzcza;
                    weakHashMap2.put(this.val$context, new zzaee(this.zzczb, zzom));
                    return zzom;
                }
            }
        }
        zzom = new zzaeb(this.val$context).zzom();
        weakHashMap2 = this.zzczb.zzcza;
        weakHashMap2.put(this.val$context, new zzaee(this.zzczb, zzom));
        return zzom;
    }
}
