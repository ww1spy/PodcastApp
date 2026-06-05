package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzaax implements zzalf<zzaof> {
    private /* synthetic */ String zzcqs;
    private /* synthetic */ com.google.android.gms.ads.internal.gmsg.zzt zzcqt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaax(zzaar zzaarVar, String str, com.google.android.gms.ads.internal.gmsg.zzt zztVar) {
        this.zzcqs = str;
        this.zzcqt = zztVar;
    }

    @Override // com.google.android.gms.internal.zzalf
    public final /* synthetic */ void onSuccess(zzaof zzaofVar) {
        zzaofVar.zza(this.zzcqs, this.zzcqt);
    }

    @Override // com.google.android.gms.internal.zzalf
    public final void zzb(Throwable th) {
    }
}
