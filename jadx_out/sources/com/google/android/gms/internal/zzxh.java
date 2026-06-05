package com.google.android.gms.internal;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzxh<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends zzwj {
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> zzcki;
    private final NETWORK_EXTRAS zzckj;

    public zzxh(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.zzcki = mediationAdapter;
        this.zzckj = network_extras;
    }

    private final SERVER_PARAMETERS zza(String str, int i, String str2) throws RemoteException {
        HashMap hashMap;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                hashMap = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
            } else {
                hashMap = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.zzcki.getServerParametersType();
            if (serverParametersType == null) {
                return null;
            }
            SERVER_PARAMETERS newInstance = serverParametersType.newInstance();
            newInstance.load(hashMap);
            return newInstance;
        } catch (Throwable th) {
            zzaky.zzc("Could not get MediationServerParameters.", th);
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
            this.zzcki.destroy();
        } catch (Throwable th) {
            zzaky.zzc("Could not destroy adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzmm getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final IObjectWrapper getView() throws RemoteException {
        if (!(this.zzcki instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(this.zzcki.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return com.google.android.gms.dynamic.zzn.zzz(((MediationBannerAdapter) this.zzcki).getBannerView());
        } catch (Throwable th) {
            zzaky.zzc("Could not get banner view from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final boolean isInitialized() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void resume() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void showInterstitial() throws RemoteException {
        if (!(this.zzcki instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(this.zzcki.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzcki).showInterstitial();
        } catch (Throwable th) {
            zzaky.zzc("Could not show interstitial from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void showVideo() {
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzafz zzafzVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, zzafz zzafzVar, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, zzwl zzwlVar) throws RemoteException {
        zza(iObjectWrapper, zzkkVar, str, (String) null, zzwlVar);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, String str2, zzwl zzwlVar) throws RemoteException {
        if (!(this.zzcki instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(this.zzcki.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationInterstitialAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zzcki).requestInterstitialAd(new zzxi(zzwlVar), (Activity) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), zza(str, zzkkVar.zzbgz, str2), zzxu.zza(zzkkVar, zzm(zzkkVar)), this.zzckj);
        } catch (Throwable th) {
            zzaky.zzc("Could not request interstitial ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzkk zzkkVar, String str, String str2, zzwl zzwlVar, zzqh zzqhVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzko zzkoVar, zzkk zzkkVar, String str, zzwl zzwlVar) throws RemoteException {
        zza(iObjectWrapper, zzkoVar, zzkkVar, str, null, zzwlVar);
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(IObjectWrapper iObjectWrapper, zzko zzkoVar, zzkk zzkkVar, String str, String str2, zzwl zzwlVar) throws RemoteException {
        if (!(this.zzcki instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(this.zzcki.getClass().getCanonicalName());
            zzaky.zzcz(valueOf.length() != 0 ? "MediationAdapter is not a MediationBannerAdapter: ".concat(valueOf) : new String("MediationAdapter is not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzaky.zzby("Requesting banner ad from adapter.");
        try {
            ((MediationBannerAdapter) this.zzcki).requestBannerAd(new zzxi(zzwlVar), (Activity) com.google.android.gms.dynamic.zzn.zzy(iObjectWrapper), zza(str, zzkkVar.zzbgz, str2), zzxu.zzb(zzkoVar), zzxu.zza(zzkkVar, zzm(zzkkVar)), this.zzckj);
        } catch (Throwable th) {
            zzaky.zzc("Could not request banner ad from adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zza(zzkk zzkkVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zzc(zzkk zzkkVar, String str) {
    }

    @Override // com.google.android.gms.internal.zzwi
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwr zzmp() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwu zzmq() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle zzmr() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final Bundle zzms() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.zzwi
    public final boolean zzmt() {
        return false;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzro zzmu() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzwi
    public final zzwx zzmv() {
        return null;
    }
}
