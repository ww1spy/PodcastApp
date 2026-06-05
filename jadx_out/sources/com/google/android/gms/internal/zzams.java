package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzams implements Runnable {
    private /* synthetic */ zzamp zzdkz;
    private /* synthetic */ String zzdla;
    private /* synthetic */ String zzdlb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzams(zzamp zzampVar, String str, String str2) {
        this.zzdkz = zzampVar;
        this.zzdla = str;
        this.zzdlb = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzamy zzamyVar;
        zzamy zzamyVar2;
        zzamyVar = this.zzdkz.zzdky;
        if (zzamyVar != null) {
            zzamyVar2 = this.zzdkz.zzdky;
            zzamyVar2.zzg(this.zzdla, this.zzdlb);
        }
    }
}
