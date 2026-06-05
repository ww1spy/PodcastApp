package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdv implements Runnable {
    private /* synthetic */ zzdu zzakf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdv(zzdu zzduVar) {
        this.zzakf = zzduVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzakf.zzav();
    }
}
