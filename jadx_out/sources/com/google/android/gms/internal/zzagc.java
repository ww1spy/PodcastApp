package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzagc implements MediationRewardedVideoAdListener {
    private final zzafz zzdaw;

    public zzagc(zzafz zzafzVar) {
        this.zzdaw = zzafzVar;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClicked(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdClicked must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdClicked.");
        try {
            this.zzdaw.zzr(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdClosed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdClosed must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdClosed.");
        try {
            this.zzdaw.zzq(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdFailedToLoad(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdFailedToLoad must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdFailedToLoad.");
        try {
            this.zzdaw.zzd(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLeftApplication(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLeftApplication must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLeftApplication.");
        try {
            this.zzdaw.zzs(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdLoaded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLoaded must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLoaded.");
        try {
            this.zzdaw.zzn(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onAdOpened(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdOpened must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdOpened.");
        try {
            this.zzdaw.zzo(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationFailed(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, int i) {
        com.google.android.gms.common.internal.zzbq.zzgn("onInitializationFailed must be called on the main UI thread.");
        zzaky.zzby("Adapter called onInitializationFailed.");
        try {
            this.zzdaw.zzc(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter), i);
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onInitializationFailed.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onInitializationSucceeded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onInitializationSucceeded must be called on the main UI thread.");
        zzaky.zzby("Adapter called onInitializationSucceeded.");
        try {
            this.zzdaw.zzm(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onInitializationSucceeded.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onRewarded(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter, RewardItem rewardItem) {
        com.google.android.gms.common.internal.zzbq.zzgn("onRewarded must be called on the main UI thread.");
        zzaky.zzby("Adapter called onRewarded.");
        try {
            if (rewardItem != null) {
                this.zzdaw.zza(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter), new zzagd(rewardItem));
            } else {
                this.zzdaw.zza(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter), new zzagd("", 1));
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onRewarded.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoCompleted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onVideoCompleted must be called on the main UI thread.");
        zzaky.zzby("Adapter called onVideoCompleted.");
        try {
            this.zzdaw.zzt(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onVideoCompleted.", e);
        }
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener
    public final void onVideoStarted(MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onVideoStarted must be called on the main UI thread.");
        zzaky.zzby("Adapter called onVideoStarted.");
        try {
            this.zzdaw.zzp(com.google.android.gms.dynamic.zzn.zzz(mediationRewardedVideoAdAdapter));
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onVideoStarted.", e);
        }
    }
}
