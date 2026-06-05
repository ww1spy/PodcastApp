package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxc extends zzwj {
    private final MediationAdapter zzcjz;
    private zzxd zzcka;

    public zzxc(MediationAdapter mediationAdapter) {
        this.zzcjz = mediationAdapter;
    }

    private final Bundle zza(String str, zzkk zzkkVar, String str2) throws RemoteException {
        Bundle bundle;
        String valueOf = String.valueOf(str);
        zzaky.zzcz(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle2 = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                bundle = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            } else {
                bundle = bundle2;
            }
            if (this.zzcjz instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzkkVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzkkVar.zzbgz);
                }
            }
            return bundle;
        } catch (Throwable th) {
            zzaky.zzc("Could not get Server Parameters Bundle.", th);
            throw new RemoteException();
        }
    }

    private static boolean zzm(zzkk zzkkVar) {
        if (zzkkVar.zzbgy) {
            return true;
        }
        zzlc.zzij();
        return zzako.zzrz();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void destroy() throws RemoteException {
        try {
            this.zzcjz.onDestroy();
        } catch (Throwable th) {
            zzaky.zzc("Could not destroy adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle getInterstitialAdapterInfo() {
        if (this.zzcjz instanceof zzaqk) {
            return ((zzaqk) this.zzcjz).getInterstitialAdapterInfo();
        }
        String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
        zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a v2 MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a v2 MediationInterstitialAdapter: "));
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzmm getVideoController() {
        if (!(this.zzcjz instanceof com.google.android.gms.ads.mediation.zzb)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zzb) this.zzcjz).getVideoController();
        } catch (Throwable th) {
            zzaky.zzc("Could not get video controller.", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final IObjectWrapper getView() throws RemoteException {
        if (!(this.zzcjz instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return com.google.android.gms.dynamic.zzn.zzz(((MediationBannerAdapter) this.zzcjz).getBannerView());
        } catch (Throwable th) {
            zzaky.zzc("Could not get banner view from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final boolean isInitialized() throws RemoteException {
        if (!(this.zzcjz instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Check if adapter is initialized.");
        try {
            return ((MediationRewardedVideoAdAdapter) this.zzcjz).isInitialized();
        } catch (Throwable th) {
            zzaky.zzc("Could not check if adapter is initialized.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void pause() throws RemoteException {
        try {
            this.zzcjz.onPause();
        } catch (Throwable th) {
            zzaky.zzc("Could not pause adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void resume() throws RemoteException {
        try {
            this.zzcjz.onResume();
        } catch (Throwable th) {
            zzaky.zzc("Could not resume adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void setImmersiveMode(boolean z) throws RemoteException {
        if (!(this.zzcjz instanceof OnImmersiveModeUpdatedListener)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcy(valueOf.length() != 0 ? "MediationAdapter is not an OnImmersiveModeUpdatedListener: ".concat(valueOf) : new String("MediationAdapter is not an OnImmersiveModeUpdatedListener: "));
        } else {
            try {
                ((OnImmersiveModeUpdatedListener) this.zzcjz).onImmersiveModeUpdated(z);
            } catch (Throwable th) {
                zzaky.zzc("Could not set immersive mode.", th);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void showInterstitial() throws RemoteException {
        if (!(this.zzcjz instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzcjz).showInterstitial();
        } catch (Throwable th) {
            zzaky.zzc("Could not show interstitial from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void showVideo() throws RemoteException {
        if (!(this.zzcjz instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Show rewarded video ad from adapter.");
        try {
            ((MediationRewardedVideoAdAdapter) this.zzcjz).showVideo();
        } catch (Throwable th) {
            zzaky.zzc("Could not show rewarded video ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzafz zzafzVar, List<String> list) throws RemoteException {
        if (!(this.zzcjz instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not an InitializableMediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not an InitializableMediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.zzcjz;
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zza(it.next(), (zzkk) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), new zzagc(zzafzVar), arrayList);
        } catch (Throwable th) {
            zzaky.zzc("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, zzafz zzafzVar, String str2) throws RemoteException {
        zzxb zzxbVar;
        Bundle bundle;
        if (!(this.zzcjz instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Initialize rewarded video adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzcjz;
            Bundle zza = zza(str2, zzkkVar, (String) null);
            if (zzkkVar != null) {
                zzxb zzxbVar2 = new zzxb(zzkkVar.zzbgv == -1 ? null : new Date(zzkkVar.zzbgv), zzkkVar.zzbgw, zzkkVar.zzbgx != null ? new HashSet(zzkkVar.zzbgx) : null, zzkkVar.zzbhd, zzm(zzkkVar), zzkkVar.zzbgz, zzkkVar.zzbhk);
                bundle = zzkkVar.zzbhf != null ? zzkkVar.zzbhf.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                zzxbVar = zzxbVar2;
            } else {
                zzxbVar = null;
                bundle = null;
            }
            mediationRewardedVideoAdAdapter.initialize((Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), zzxbVar, str, new zzagc(zzafzVar), zza, bundle);
        } catch (Throwable th) {
            zzaky.zzc("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, zzwl zzwlVar) throws RemoteException {
        zza(iObjectWrapper, zzkkVar, str, (String) null, zzwlVar);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, String str2, zzwl zzwlVar) throws RemoteException {
        if (!(this.zzcjz instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Requesting interstitial ad from adapter.");
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzcjz;
            mediationInterstitialAdapter.requestInterstitialAd((Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), new zzxd(zzwlVar), zza(str, zzkkVar, str2), new zzxb(zzkkVar.zzbgv == -1 ? null : new Date(zzkkVar.zzbgv), zzkkVar.zzbgw, zzkkVar.zzbgx != null ? new HashSet(zzkkVar.zzbgx) : null, zzkkVar.zzbhd, zzm(zzkkVar), zzkkVar.zzbgz, zzkkVar.zzbhk), zzkkVar.zzbhf != null ? zzkkVar.zzbhf.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzaky.zzc("Could not request interstitial ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, String str2, zzwl zzwlVar, zzqh zzqhVar, List<String> list) throws RemoteException {
        if (!(this.zzcjz instanceof MediationNativeAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationNativeAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationNativeAdapter: "));
            throw new RemoteException();
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) this.zzcjz;
            zzxg zzxgVar = new zzxg(zzkkVar.zzbgv == -1 ? null : new Date(zzkkVar.zzbgv), zzkkVar.zzbgw, zzkkVar.zzbgx != null ? new HashSet(zzkkVar.zzbgx) : null, zzkkVar.zzbhd, zzm(zzkkVar), zzkkVar.zzbgz, zzqhVar, list, zzkkVar.zzbhk);
            Bundle bundle = zzkkVar.zzbhf != null ? zzkkVar.zzbhf.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.zzcka = new zzxd(zzwlVar);
            mediationNativeAdapter.requestNativeAd((Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), this.zzcka, zza(str, zzkkVar, str2), zzxgVar, bundle);
        } catch (Throwable th) {
            zzaky.zzc("Could not request native ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzko zzkoVar, zzkk zzkkVar, String str, zzwl zzwlVar) throws RemoteException {
        zza(iObjectWrapper, zzkoVar, zzkkVar, str, null, zzwlVar);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzko zzkoVar, zzkk zzkkVar, String str, String str2, zzwl zzwlVar) throws RemoteException {
        if (!(this.zzcjz instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzcjz;
            mediationBannerAdapter.requestBannerAd((Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), new zzxd(zzwlVar), zza(str, zzkkVar, str2), com.google.android.gms.ads.zzb.zza(zzkoVar.width, zzkoVar.height, zzkoVar.zzbia), new zzxb(zzkkVar.zzbgv == -1 ? null : new Date(zzkkVar.zzbgv), zzkkVar.zzbgw, zzkkVar.zzbgx != null ? new HashSet(zzkkVar.zzbgx) : null, zzkkVar.zzbhd, zzm(zzkkVar), zzkkVar.zzbgz, zzkkVar.zzbhk), zzkkVar.zzbhf != null ? zzkkVar.zzbhf.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzaky.zzc("Could not request banner ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(zzkk zzkkVar, String str, String str2) throws RemoteException {
        if (!(this.zzcjz instanceof MediationRewardedVideoAdAdapter)) {
            String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationRewardedVideoAdAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationRewardedVideoAdAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Requesting rewarded video ad from adapter.");
        try {
            MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzcjz;
            mediationRewardedVideoAdAdapter.loadAd(new zzxb(zzkkVar.zzbgv == -1 ? null : new Date(zzkkVar.zzbgv), zzkkVar.zzbgw, zzkkVar.zzbgx != null ? new HashSet(zzkkVar.zzbgx) : null, zzkkVar.zzbhd, zzm(zzkkVar), zzkkVar.zzbgz, zzkkVar.zzbhk), zza(str, zzkkVar, str2), zzkkVar.zzbhf != null ? zzkkVar.zzbhf.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzaky.zzc("Could not load rewarded video ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zzc(zzkk zzkkVar, String str) throws RemoteException {
        zza(zzkkVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        try {
            ((OnContextChangedListener) this.zzcjz).onContextChanged((Context) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper));
        } catch (Throwable th) {
            zzaky.zza("Could not inform adapter of changed context", th);
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwr zzmp() {
        NativeAdMapper zzmy = this.zzcka.zzmy();
        if (zzmy instanceof NativeAppInstallAdMapper) {
            return new zzxe((NativeAppInstallAdMapper) zzmy);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwu zzmq() {
        NativeAdMapper zzmy = this.zzcka.zzmy();
        if (zzmy instanceof NativeContentAdMapper) {
            return new zzxf((NativeContentAdMapper) zzmy);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle zzmr() {
        if (this.zzcjz instanceof zzaqj) {
            return ((zzaqj) this.zzcjz).zzmr();
        }
        String valueOf = String.valueOf(this.zzcjz.getClass().getCanonicalName());
        zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a v2 MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a v2 MediationBannerAdapter: "));
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle zzms() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final boolean zzmt() {
        return this.zzcjz instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzro zzmu() {
        NativeCustomTemplateAd zzna = this.zzcka.zzna();
        if (zzna instanceof zzrr) {
            return ((zzrr) zzna).zzkx();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwx zzmv() {
        com.google.android.gms.ads.mediation.zza zzmz = this.zzcka.zzmz();
        if (zzmz != null) {
            return new zzxw(zzmz);
        }
        return null;
    }
}
