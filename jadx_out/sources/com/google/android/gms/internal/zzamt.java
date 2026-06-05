package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzamt implements Runnable {
    private /* synthetic */ zzamp zzdkz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamt(zzamp zzampVar) {
        this.zzdkz = zzampVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzamy zzamyVar;
        zzamy zzamyVar2;
        zzamyVar = this.zzdkz.zzdky;
        if (zzamyVar != null) {
            zzamyVar2 = this.zzdkz.zzdky;
            zzamyVar2.zzso();
        }
    }
}
