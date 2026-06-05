package com.google.android.gms.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaok implements com.google.android.gms.ads.internal.overlay.zzn {
    private com.google.android.gms.ads.internal.overlay.zzn zzccs;
    private zzaof zzdpv;

    public zzaok(zzaof zzaofVar, com.google.android.gms.ads.internal.overlay.zzn zznVar) {
        this.zzdpv = zzaofVar;
        this.zzccs = zznVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void onPause() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void onResume() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void zzcf() {
        this.zzccs.zzcf();
        this.zzdpv.zztt();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void zzcg() {
        this.zzccs.zzcg();
        this.zzdpv.zznn();
    }
}
