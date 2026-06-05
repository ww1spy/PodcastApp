package com.google.android.gms.internal;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaft extends zzaga {
    private volatile zzafu zzdab;
    private volatile zzafr zzdao;
    private volatile zzafs zzdap;

    public zzaft(zzafs zzafsVar) {
        this.zzdap = zzafsVar;
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zza(IObjectWrapper iObjectWrapper, zzagd zzagdVar) {
        if (this.zzdap != null) {
            this.zzdap.zzc(zzagdVar);
        }
    }

    public final void zza(zzafr zzafrVar) {
        this.zzdao = zzafrVar;
    }

    public final void zza(zzafu zzafuVar) {
        this.zzdab = zzafuVar;
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzc(IObjectWrapper iObjectWrapper, int i) {
        if (this.zzdao != null) {
            this.zzdao.zzaa(i);
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzd(IObjectWrapper iObjectWrapper, int i) {
        if (this.zzdab != null) {
            this.zzdab.zza(com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper).getClass().getName(), i);
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzm(IObjectWrapper iObjectWrapper) {
        if (this.zzdao != null) {
            this.zzdao.zzoz();
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzn(IObjectWrapper iObjectWrapper) {
        if (this.zzdab != null) {
            this.zzdab.zzbr(com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper).getClass().getName());
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzo(IObjectWrapper iObjectWrapper) {
        if (this.zzdap != null) {
            this.zzdap.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzp(IObjectWrapper iObjectWrapper) {
        if (this.zzdap != null) {
            this.zzdap.onRewardedVideoStarted();
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzq(IObjectWrapper iObjectWrapper) {
        if (this.zzdap != null) {
            this.zzdap.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzr(IObjectWrapper iObjectWrapper) {
        if (this.zzdap != null) {
            this.zzdap.zzdn();
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzs(IObjectWrapper iObjectWrapper) {
        if (this.zzdap != null) {
            this.zzdap.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.zzafz
    public final void zzt(IObjectWrapper iObjectWrapper) {
        if (this.zzdap != null) {
            this.zzdap.onRewardedVideoCompleted();
        }
    }
}
