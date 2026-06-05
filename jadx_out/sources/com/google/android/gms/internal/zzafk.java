package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzafk implements RewardedVideoAd {
    private final Context mContext;
    private final Object mLock = new Object();
    private String zzaux;
    private final zzaex zzczz;
    private RewardedVideoAdListener zzgy;

    public zzafk(Context context, zzaex zzaexVar) {
        this.zzczz = zzaexVar;
        this.mContext = context;
    }

    private final void zza(String str, zzmu zzmuVar) {
        synchronized (this.mLock) {
            if (this.zzczz == null) {
                return;
            }
            try {
                this.zzczz.zza(new zzafi(zzkn.zza(this.mContext, zzmuVar), str));
            } catch (RemoteException e) {
                zzaky.zzc("Could not forward loadAd to RewardedVideoAd", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy() {
        destroy(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy(Context context) {
        synchronized (this.mLock) {
            if (this.zzczz == null) {
                return;
            }
            try {
                this.zzczz.zzd(com.google.android.gms.dynamic.zzn.zzz(context));
            } catch (RemoteException e) {
                zzaky.zzc("Could not forward destroy to RewardedVideoAd", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getMediationAdapterClassName() {
        try {
            if (this.zzczz != null) {
                return this.zzczz.getMediationAdapterClassName();
            }
            return null;
        } catch (RemoteException e) {
            zzaky.zzc("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.mLock) {
            rewardedVideoAdListener = this.zzgy;
        }
        return rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getUserId() {
        String str;
        synchronized (this.mLock) {
            str = this.zzaux;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final boolean isLoaded() {
        synchronized (this.mLock) {
            if (this.zzczz == null) {
                return false;
            }
            try {
                return this.zzczz.isLoaded();
            } catch (RemoteException e) {
                zzaky.zzc("Could not forward isLoaded to RewardedVideoAd", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, AdRequest adRequest) {
        zza(str, adRequest.zzbe());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        zza(str, publisherAdRequest.zzbe());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause() {
        pause(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause(Context context) {
        synchronized (this.mLock) {
            if (this.zzczz == null) {
                return;
            }
            try {
                this.zzczz.zzb(com.google.android.gms.dynamic.zzn.zzz(context));
            } catch (RemoteException e) {
                zzaky.zzc("Could not forward pause to RewardedVideoAd", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume() {
        resume(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume(Context context) {
        synchronized (this.mLock) {
            if (this.zzczz == null) {
                return;
            }
            try {
                this.zzczz.zzc(com.google.android.gms.dynamic.zzn.zzz(context));
            } catch (RemoteException e) {
                zzaky.zzc("Could not forward resume to RewardedVideoAd", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setImmersiveMode(boolean z) {
        synchronized (this.mLock) {
            if (this.zzczz != null) {
                try {
                    this.zzczz.setImmersiveMode(z);
                } catch (RemoteException e) {
                    zzaky.zzc("Could not forward setImmersiveMode to RewardedVideoAd", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.mLock) {
            this.zzgy = rewardedVideoAdListener;
            if (this.zzczz != null) {
                try {
                    this.zzczz.zza(new zzafh(rewardedVideoAdListener));
                } catch (RemoteException e) {
                    zzaky.zzc("Could not forward setRewardedVideoAdListener to RewardedVideoAd", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setUserId(String str) {
        synchronized (this.mLock) {
            this.zzaux = str;
            if (this.zzczz != null) {
                try {
                    this.zzczz.setUserId(str);
                } catch (RemoteException e) {
                    zzaky.zzc("Could not forward setUserId to RewardedVideoAd", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void show() {
        synchronized (this.mLock) {
            if (this.zzczz == null) {
                return;
            }
            try {
                this.zzczz.show();
            } catch (RemoteException e) {
                zzaky.zzc("Could not forward show to RewardedVideoAd", e);
            }
        }
    }
}
