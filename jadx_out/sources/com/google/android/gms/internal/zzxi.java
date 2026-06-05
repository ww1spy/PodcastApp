package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxi<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzwl zzckb;

    public zzxi(zzwl zzwlVar) {
        this.zzckb = zzwlVar;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaky.zzby("Adapter called onClick.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onClick must be called on the main UI thread.");
            zzako.zzaju.post(new zzxj(this));
        } else {
            try {
                this.zzckb.onAdClicked();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdClicked.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaky.zzby("Adapter called onDismissScreen.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onDismissScreen must be called on the main UI thread.");
            zzako.zzaju.post(new zzxm(this));
        } else {
            try {
                this.zzckb.onAdClosed();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdClosed.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzaky.zzby("Adapter called onDismissScreen.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onDismissScreen must be called on the main UI thread.");
            zzako.zzaju.post(new zzxr(this));
        } else {
            try {
                this.zzckb.onAdClosed();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdClosed.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(47 + String.valueOf(valueOf).length());
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(valueOf);
        zzaky.zzby(sb.toString());
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onFailedToReceiveAd must be called on the main UI thread.");
            zzako.zzaju.post(new zzxn(this, errorCode));
        } else {
            try {
                this.zzckb.onAdFailedToLoad(zzxu.zza(errorCode));
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdFailedToLoad.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String valueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(47 + String.valueOf(valueOf).length());
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        zzaky.zzby(sb.toString());
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onFailedToReceiveAd must be called on the main UI thread.");
            zzako.zzaju.post(new zzxs(this, errorCode));
        } else {
            try {
                this.zzckb.onAdFailedToLoad(zzxu.zza(errorCode));
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdFailedToLoad.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaky.zzby("Adapter called onLeaveApplication.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onLeaveApplication must be called on the main UI thread.");
            zzako.zzaju.post(new zzxo(this));
        } else {
            try {
                this.zzckb.onAdLeftApplication();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdLeftApplication.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzaky.zzby("Adapter called onLeaveApplication.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onLeaveApplication must be called on the main UI thread.");
            zzako.zzaju.post(new zzxt(this));
        } else {
            try {
                this.zzckb.onAdLeftApplication();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdLeftApplication.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaky.zzby("Adapter called onPresentScreen.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onPresentScreen must be called on the main UI thread.");
            zzako.zzaju.post(new zzxp(this));
        } else {
            try {
                this.zzckb.onAdOpened();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdOpened.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzaky.zzby("Adapter called onPresentScreen.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onPresentScreen must be called on the main UI thread.");
            zzako.zzaju.post(new zzxk(this));
        } else {
            try {
                this.zzckb.onAdOpened();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdOpened.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaky.zzby("Adapter called onReceivedAd.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onReceivedAd must be called on the main UI thread.");
            zzako.zzaju.post(new zzxq(this));
        } else {
            try {
                this.zzckb.onAdLoaded();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdLoaded.", e);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzaky.zzby("Adapter called onReceivedAd.");
        zzlc.zzij();
        if (!zzako.zzsa()) {
            zzaky.zzcz("onReceivedAd must be called on the main UI thread.");
            zzako.zzaju.post(new zzxl(this));
        } else {
            try {
                this.zzckb.onAdLoaded();
            } catch (RemoteException e) {
                zzaky.zzc("Could not call onAdLoaded.", e);
            }
        }
    }
}
