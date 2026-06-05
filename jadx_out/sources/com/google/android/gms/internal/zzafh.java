package com.google.android.gms.internal;

import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzafh extends zzafd {
    private final RewardedVideoAdListener zzgy;

    public zzafh(RewardedVideoAdListener rewardedVideoAdListener) {
        this.zzgy = rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdClosed() {
        if (this.zzgy != null) {
            this.zzgy.onRewardedVideoAdClosed();
        }
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdFailedToLoad(int i) {
        if (this.zzgy != null) {
            this.zzgy.onRewardedVideoAdFailedToLoad(i);
        }
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdLeftApplication() {
        if (this.zzgy != null) {
            this.zzgy.onRewardedVideoAdLeftApplication();
        }
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdLoaded() {
        if (this.zzgy != null) {
            this.zzgy.onRewardedVideoAdLoaded();
        }
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdOpened() {
        if (this.zzgy != null) {
            this.zzgy.onRewardedVideoAdOpened();
        }
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoCompleted() {
        if (this.zzgy != null) {
            this.zzgy.onRewardedVideoCompleted();
        }
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoStarted() {
        if (this.zzgy != null) {
            this.zzgy.onRewardedVideoStarted();
        }
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void zza(zzaeu zzaeuVar) {
        if (this.zzgy != null) {
            this.zzgy.onRewarded(new zzaff(zzaeuVar));
        }
    }
}
