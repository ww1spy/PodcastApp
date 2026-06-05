package com.google.android.gms.internal;

/* loaded from: classes.dex */
final class zzadd implements zzami<com.google.android.gms.ads.internal.js.zzaj> {
    private /* synthetic */ zzadc zzcvh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadd(zzadc zzadcVar) {
        this.zzcvh = zzadcVar;
    }

    @Override // com.google.android.gms.internal.zzami
    public final /* synthetic */ void zze(com.google.android.gms.ads.internal.js.zzaj zzajVar) {
        com.google.android.gms.ads.internal.gmsg.zzy zzyVar;
        try {
            zzajVar.zzb("AFMA_getAdapterLessMediationAd", this.zzcvh.zzcvf);
        } catch (Exception e) {
            zzahw.zzb("Error requesting an ad url", e);
            zzyVar = zzada.zzcvb;
            zzyVar.zzat(this.zzcvh.zzcvg);
        }
    }
}
