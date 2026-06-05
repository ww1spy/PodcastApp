package com.google.android.gms.internal;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzef implements Callable {
    private final zzdm zzagq;
    private final zzba zzakm;

    public zzef(zzdm zzdmVar, zzba zzbaVar) {
        this.zzagq = zzdmVar;
        this.zzakm = zzbaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: zzay, reason: merged with bridge method [inline-methods] */
    public final Void call() throws Exception {
        if (this.zzagq.zzan() != null) {
            this.zzagq.zzan().get();
        }
        zzba zzam = this.zzagq.zzam();
        if (zzam == null) {
            return null;
        }
        try {
            synchronized (this.zzakm) {
                zzfls.zza(this.zzakm, zzfls.zzc(zzam));
            }
            return null;
        } catch (zzflr unused) {
            return null;
        }
    }
}
