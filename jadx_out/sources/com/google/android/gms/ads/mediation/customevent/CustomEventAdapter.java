package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzaky;

@Hide
@KeepForSdkWithMembers
@KeepName
/* loaded from: classes.dex */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    private CustomEventBanner zzdtn;
    private CustomEventInterstitial zzdto;
    private CustomEventNative zzdtp;
    private View zzhm;

    /* loaded from: classes.dex */
    static final class zza implements CustomEventBannerListener {
        private final CustomEventAdapter zzdtq;
        private final MediationBannerListener zzhe;

        public zza(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.zzdtq = customEventAdapter;
            this.zzhe = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzaky.zzby("Custom event adapter called onAdClicked.");
            this.zzhe.onAdClicked(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzaky.zzby("Custom event adapter called onAdClosed.");
            this.zzhe.onAdClosed(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzaky.zzby("Custom event adapter called onAdFailedToLoad.");
            this.zzhe.onAdFailedToLoad(this.zzdtq, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzaky.zzby("Custom event adapter called onAdLeftApplication.");
            this.zzhe.onAdLeftApplication(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
        public final void onAdLoaded(View view) {
            zzaky.zzby("Custom event adapter called onAdLoaded.");
            this.zzdtq.zza(view);
            this.zzhe.onAdLoaded(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzaky.zzby("Custom event adapter called onAdOpened.");
            this.zzhe.onAdOpened(this.zzdtq);
        }
    }

    /* loaded from: classes.dex */
    class zzb implements CustomEventInterstitialListener {
        private final CustomEventAdapter zzdtq;
        private final MediationInterstitialListener zzhf;

        public zzb(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.zzdtq = customEventAdapter;
            this.zzhf = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzaky.zzby("Custom event adapter called onAdClicked.");
            this.zzhf.onAdClicked(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzaky.zzby("Custom event adapter called onAdClosed.");
            this.zzhf.onAdClosed(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzaky.zzby("Custom event adapter called onFailedToReceiveAd.");
            this.zzhf.onAdFailedToLoad(this.zzdtq, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzaky.zzby("Custom event adapter called onAdLeftApplication.");
            this.zzhf.onAdLeftApplication(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onAdLoaded() {
            zzaky.zzby("Custom event adapter called onReceivedAd.");
            this.zzhf.onAdLoaded(CustomEventAdapter.this);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzaky.zzby("Custom event adapter called onAdOpened.");
            this.zzhf.onAdOpened(this.zzdtq);
        }
    }

    /* loaded from: classes.dex */
    static class zzc implements CustomEventNativeListener {
        private final CustomEventAdapter zzdtq;
        private final MediationNativeListener zzhg;

        public zzc(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.zzdtq = customEventAdapter;
            this.zzhg = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzaky.zzby("Custom event adapter called onAdClicked.");
            this.zzhg.onAdClicked(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzaky.zzby("Custom event adapter called onAdClosed.");
            this.zzhg.onAdClosed(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzaky.zzby("Custom event adapter called onAdFailedToLoad.");
            this.zzhg.onAdFailedToLoad(this.zzdtq, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdImpression() {
            zzaky.zzby("Custom event adapter called onAdImpression.");
            this.zzhg.onAdImpression(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzaky.zzby("Custom event adapter called onAdLeftApplication.");
            this.zzhg.onAdLeftApplication(this.zzdtq);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            zzaky.zzby("Custom event adapter called onAdLoaded.");
            this.zzhg.onAdLoaded(this.zzdtq, nativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzaky.zzby("Custom event adapter called onAdOpened.");
            this.zzhg.onAdOpened(this.zzdtq);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(View view) {
        this.zzhm = view;
    }

    private static <T> T zzi(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(46 + String.valueOf(str).length() + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            zzaky.zzcz(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.zzhm;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        if (this.zzdtn != null) {
            this.zzdtn.onDestroy();
        }
        if (this.zzdto != null) {
            this.zzdto.onDestroy();
        }
        if (this.zzdtp != null) {
            this.zzdtp.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        if (this.zzdtn != null) {
            this.zzdtn.onPause();
        }
        if (this.zzdto != null) {
            this.zzdto.onPause();
        }
        if (this.zzdtp != null) {
            this.zzdtp.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        if (this.zzdtn != null) {
            this.zzdtn.onResume();
        }
        if (this.zzdto != null) {
            this.zzdto.onResume();
        }
        if (this.zzdtp != null) {
            this.zzdtp.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzdtn = (CustomEventBanner) zzi(bundle.getString("class_name"));
        if (this.zzdtn == null) {
            mediationBannerListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzdtn.requestBannerAd(context, new zza(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzdto = (CustomEventInterstitial) zzi(bundle.getString("class_name"));
        if (this.zzdto == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzdto.requestInterstitialAd(context, new zzb(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        this.zzdtp = (CustomEventNative) zzi(bundle.getString("class_name"));
        if (this.zzdtp == null) {
            mediationNativeListener.onAdFailedToLoad(this, 0);
        } else {
            this.zzdtp.requestNativeAd(context, new zzc(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.zzdto.showInterstitial();
    }
}
