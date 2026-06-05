package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcw implements Runnable {
    private /* synthetic */ zzcv zzgbe;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcw(zzcv zzcvVar) {
        this.zzgbe = zzcvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcy zzcyVar;
        zzcyVar = this.zzgbe.zzgbd;
        zzcyVar.zzh(new ConnectionResult(4));
    }
}
