package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzanh implements Runnable {
    private /* synthetic */ zzamy zzdme;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanh(zzang zzangVar, zzamy zzamyVar) {
        this.zzdme = zzamyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdme.zzst();
    }
}
