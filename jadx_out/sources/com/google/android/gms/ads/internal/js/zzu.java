package com.google.android.gms.ads.internal.js;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaly;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzu implements Runnable {
    private /* synthetic */ zzae zzcfs;
    private /* synthetic */ zzc zzcft;
    private /* synthetic */ zzn zzcfu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(zzn zznVar, zzae zzaeVar, zzc zzcVar) {
        this.zzcfu = zznVar;
        this.zzcfs = zzaeVar;
        this.zzcft = zzcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        obj = this.zzcfu.mLock;
        synchronized (obj) {
            if (this.zzcfs.getStatus() != -1 && this.zzcfs.getStatus() != 1) {
                this.zzcfs.reject();
                Executor executor = zzaly.zzdjt;
                zzc zzcVar = this.zzcft;
                zzcVar.getClass();
                executor.execute(zzv.zza(zzcVar));
                zzahw.v("Could not receive loaded message in a timely manner. Rejecting.");
            }
        }
    }
}
