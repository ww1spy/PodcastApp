package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.common.internal.Hide;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxd implements MediationBannerListener, MediationInterstitialListener, MediationNativeListener {
    private final zzwl zzckb;
    private NativeAdMapper zzckc;
    private com.google.android.gms.ads.mediation.zza zzckd;
    private NativeCustomTemplateAd zzcke;

    public zzxd(zzwl zzwlVar) {
        this.zzckb = zzwlVar;
    }

    private static void zza(MediationNativeAdapter mediationNativeAdapter, @Nullable com.google.android.gms.ads.mediation.zza zzaVar, @Nullable NativeAdMapper nativeAdMapper) {
        if (mediationNativeAdapter instanceof AdMobAdapter) {
            return;
        }
        VideoController videoController = new VideoController();
        videoController.zza(new zzxa());
        if (nativeAdMapper == null || !nativeAdMapper.hasVideoContent()) {
            return;
        }
        nativeAdMapper.zza(videoController);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClicked(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdClicked must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdClicked.");
        try {
            this.zzckb.onAdClicked();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClicked(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdClicked must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdClicked.");
        try {
            this.zzckb.onAdClicked();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClicked(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdClicked must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.zzckc;
        com.google.android.gms.ads.mediation.zza zzaVar = this.zzckd;
        if (this.zzcke == null) {
            if (nativeAdMapper == null && zzaVar == null) {
                zzaky.zzcz("Could not call onAdClicked since mapper is null.");
                return;
            }
            if (zzaVar != null && !zzaVar.getOverrideClickHandling()) {
                zzaky.zzby("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideClickHandling()) {
                zzaky.zzby("Could not call onAdClicked since setOverrideClickHandling is not set to true");
                return;
            }
        }
        zzaky.zzby("Adapter called onAdClicked.");
        try {
            this.zzckb.onAdClicked();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClicked.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdClosed(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdClosed must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdClosed.");
        try {
            this.zzckb.onAdClosed();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdClosed(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdClosed must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdClosed.");
        try {
            this.zzckb.onAdClosed();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdClosed(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdClosed must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdClosed.");
        try {
            this.zzckb.onAdClosed();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdClosed.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdFailedToLoad(MediationBannerAdapter mediationBannerAdapter, int i) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdFailedToLoad must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error. ");
        sb.append(i);
        zzaky.zzby(sb.toString());
        try {
            this.zzckb.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdFailedToLoad(MediationInterstitialAdapter mediationInterstitialAdapter, int i) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdFailedToLoad must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        zzaky.zzby(sb.toString());
        try {
            this.zzckb.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdFailedToLoad(MediationNativeAdapter mediationNativeAdapter, int i) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdFailedToLoad must be called on the main UI thread.");
        StringBuilder sb = new StringBuilder(55);
        sb.append("Adapter called onAdFailedToLoad with error ");
        sb.append(i);
        sb.append(".");
        zzaky.zzby(sb.toString());
        try {
            this.zzckb.onAdFailedToLoad(i);
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdFailedToLoad.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdImpression(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdImpression must be called on the main UI thread.");
        NativeAdMapper nativeAdMapper = this.zzckc;
        com.google.android.gms.ads.mediation.zza zzaVar = this.zzckd;
        if (this.zzcke == null) {
            if (nativeAdMapper == null && zzaVar == null) {
                zzaky.zzcz("Could not call onAdImpression since AdMapper is null. ");
                return;
            }
            if (zzaVar != null && !zzaVar.getOverrideImpressionRecording()) {
                zzaky.zzby("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            } else if (nativeAdMapper != null && !nativeAdMapper.getOverrideImpressionRecording()) {
                zzaky.zzby("Could not call onAdImpression since setOverrideImpressionRecording is not set to true");
                return;
            }
        }
        zzaky.zzby("Adapter called onAdImpression.");
        try {
            this.zzckb.onAdImpression();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdImpression.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLeftApplication(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLeftApplication must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLeftApplication.");
        try {
            this.zzckb.onAdLeftApplication();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLeftApplication(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLeftApplication must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLeftApplication.");
        try {
            this.zzckb.onAdLeftApplication();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLeftApplication(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLeftApplication must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLeftApplication.");
        try {
            this.zzckb.onAdLeftApplication();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLeftApplication.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdLoaded(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLoaded must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLoaded.");
        try {
            this.zzckb.onAdLoaded();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdLoaded(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLoaded must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLoaded.");
        try {
            this.zzckb.onAdLoaded();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdLoaded(MediationNativeAdapter mediationNativeAdapter, NativeAdMapper nativeAdMapper) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLoaded must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLoaded.");
        this.zzckc = nativeAdMapper;
        this.zzckd = null;
        zza(mediationNativeAdapter, this.zzckd, this.zzckc);
        try {
            this.zzckb.onAdLoaded();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void onAdOpened(MediationBannerAdapter mediationBannerAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdOpened must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdOpened.");
        try {
            this.zzckb.onAdOpened();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialListener
    public final void onAdOpened(MediationInterstitialAdapter mediationInterstitialAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdOpened must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdOpened.");
        try {
            this.zzckb.onAdOpened();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onAdOpened(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdOpened must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdOpened.");
        try {
            this.zzckb.onAdOpened();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdOpened.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void onVideoEnd(MediationNativeAdapter mediationNativeAdapter) {
        com.google.android.gms.common.internal.zzbq.zzgn("onVideoEnd must be called on the main UI thread.");
        zzaky.zzby("Adapter called onVideoEnd.");
        try {
            this.zzckb.onVideoEnd();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onVideoEnd.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerListener
    public final void zza(MediationBannerAdapter mediationBannerAdapter, String str, String str2) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAppEvent must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAppEvent.");
        try {
            this.zzckb.onAppEvent(str, str2);
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAppEvent.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLoaded must be called on the main UI thread.");
        String valueOf = String.valueOf(nativeCustomTemplateAd.getCustomTemplateId());
        zzaky.zzby(valueOf.length() != 0 ? "Adapter called onAdLoaded with template id ".concat(valueOf) : new String("Adapter called onAdLoaded with template id "));
        this.zzcke = nativeCustomTemplateAd;
        try {
            this.zzckb.onAdLoaded();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLoaded.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
        if (!(nativeCustomTemplateAd instanceof zzrr)) {
            zzaky.zzcz("Unexpected native custom template ad type.");
            return;
        }
        try {
            this.zzckb.zzb(((zzrr) nativeCustomTemplateAd).zzkx(), str);
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onCustomClick.", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeListener
    public final void zza(MediationNativeAdapter mediationNativeAdapter, com.google.android.gms.ads.mediation.zza zzaVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("onAdLoaded must be called on the main UI thread.");
        zzaky.zzby("Adapter called onAdLoaded.");
        this.zzckd = zzaVar;
        this.zzckc = null;
        zza(mediationNativeAdapter, this.zzckd, this.zzckc);
        try {
            this.zzckb.onAdLoaded();
        } catch (RemoteException e) {
            zzaky.zzc("Could not call onAdLoaded.", e);
        }
    }

    public final NativeAdMapper zzmy() {
        return this.zzckc;
    }

    public final com.google.android.gms.ads.mediation.zza zzmz() {
        return this.zzckd;
    }

    public final NativeCustomTemplateAd zzna() {
        return this.zzcke;
    }
}
