package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzamu implements Runnable {
    private /* synthetic */ zzamp zzdkz;
    private /* synthetic */ int zzdlc;
    private /* synthetic */ int zzdld;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzamu(zzamp zzampVar, int i, int i2) {
        this.zzdkz = zzampVar;
        this.zzdlc = i;
        this.zzdld = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzamy zzamyVar;
        zzamy zzamyVar2;
        zzamyVar = this.zzdkz.zzdky;
        if (zzamyVar != null) {
            zzamyVar2 = this.zzdkz.zzdky;
            zzamyVar2.zzf(this.zzdlc, this.zzdld);
        }
    }
}
