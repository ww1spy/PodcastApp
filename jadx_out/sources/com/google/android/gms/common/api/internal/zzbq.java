package com.google.android.gms.common.api.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbq implements Runnable {
    private /* synthetic */ zzbo zzgaa;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbq(zzbo zzboVar) {
        this.zzgaa = zzboVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzgaa.zzakg();
    }
}
