package com.google.android.gms.ads;

import android.content.Context;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.zzbq;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzmy;

/* loaded from: classes.dex */
public final class InterstitialAd {
    private final zzmy zzaly;

    public InterstitialAd(Context context) {
        this.zzaly = new zzmy(context);
        zzbq.checkNotNull(context, "Context cannot be null");
    }

    public final AdListener getAdListener() {
        return this.zzaly.getAdListener();
    }

    public final String getAdUnitId() {
        return this.zzaly.getAdUnitId();
    }

    public final String getMediationAdapterClassName() {
        return this.zzaly.getMediationAdapterClassName();
    }

    public final boolean isLoaded() {
        return this.zzaly.isLoaded();
    }

    public final boolean isLoading() {
        return this.zzaly.isLoading();
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void loadAd(AdRequest adRequest) {
        this.zzaly.zza(adRequest.zzbe());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setAdListener(AdListener adListener) {
        this.zzaly.setAdListener(adListener);
        if (adListener != 0 && (adListener instanceof zzkf)) {
            this.zzaly.zza((zzkf) adListener);
        } else if (adListener == 0) {
            this.zzaly.zza((zzkf) null);
        }
    }

    public final void setAdUnitId(String str) {
        this.zzaly.setAdUnitId(str);
    }

    public final void setImmersiveMode(boolean z) {
        this.zzaly.setImmersiveMode(z);
    }

    @Hide
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzaly.setRewardedVideoAdListener(rewardedVideoAdListener);
    }

    public final void show() {
        this.zzaly.show();
    }

    @Hide
    public final void zza(boolean z) {
        this.zzaly.zza(true);
    }
}
