package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzafs;
import com.google.android.gms.internal.zzagd;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzam implements zzafs {
    private /* synthetic */ zzak zzaql;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzam(zzak zzakVar) {
        this.zzaql = zzakVar;
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoAdClosed() {
        this.zzaql.zzcf();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoAdLeftApplication() {
        this.zzaql.zzbu();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoAdOpened() {
        this.zzaql.zzcg();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoCompleted() {
        this.zzaql.zzdm();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoStarted() {
        this.zzaql.zzdl();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void zzc(zzagd zzagdVar) {
        this.zzaql.zzb(zzagdVar);
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void zzdn() {
        this.zzaql.onAdClicked();
    }
}
