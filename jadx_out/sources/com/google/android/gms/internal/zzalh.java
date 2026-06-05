package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzalh implements zzalf {
    private /* synthetic */ String zzdjd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalh(String str) {
        this.zzdjd = str;
    }

    @Override // com.google.android.gms.internal.zzalf
    public final void onSuccess(Object obj) {
    }

    @Override // com.google.android.gms.internal.zzalf
    public final void zzb(Throwable th) {
        com.google.android.gms.ads.internal.zzbt.zzep().zza(th, this.zzdjd);
    }
}
