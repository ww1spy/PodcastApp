package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzut extends zzlu {
    private final String zzapp;
    private boolean zzaqf;
    private final zztk zzceb;

    @Nullable
    private com.google.android.gms.ads.internal.zzak zzceg;
    private final zzul zzcet;

    public zzut(Context context, String str, zzwf zzwfVar, zzala zzalaVar, com.google.android.gms.ads.internal.zzv zzvVar) {
        this(str, new zztk(context, zzwfVar, zzalaVar, zzvVar));
    }

    private zzut(String str, zztk zztkVar) {
        this.zzapp = str;
        this.zzceb = zztkVar;
        this.zzcet = new zzul();
        com.google.android.gms.ads.internal.zzbt.zzey().zza(zztkVar);
    }

    private final void abort() {
        if (this.zzceg != null) {
            return;
        }
        this.zzceg = this.zzceb.zzav(this.zzapp);
        this.zzcet.zzd(this.zzceg);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void destroy() throws RemoteException {
        if (this.zzceg != null) {
            this.zzceg.destroy();
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final String getAdUnitId() {
        throw new IllegalStateException("getAdUnitId not implemented");
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final String getMediationAdapterClassName() throws RemoteException {
        if (this.zzceg != null) {
            return this.zzceg.getMediationAdapterClassName();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzmm getVideoController() {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean isLoading() throws RemoteException {
        return this.zzceg != null && this.zzceg.isLoading();
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean isReady() throws RemoteException {
        return this.zzceg != null && this.zzceg.isReady();
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void pause() throws RemoteException {
        if (this.zzceg != null) {
            this.zzceg.pause();
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void resume() throws RemoteException {
        if (this.zzceg != null) {
            this.zzceg.resume();
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setImmersiveMode(boolean z) {
        this.zzaqf = z;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setManualImpressionsEnabled(boolean z) throws RemoteException {
        abort();
        if (this.zzceg != null) {
            this.zzceg.setManualImpressionsEnabled(z);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setUserId(String str) {
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void showInterstitial() throws RemoteException {
        if (this.zzceg == null) {
            zzahw.zzcz("Interstitial ad must be loaded before showInterstitial().");
        } else {
            this.zzceg.setImmersiveMode(this.zzaqf);
            this.zzceg.showInterstitial();
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void stopLoading() throws RemoteException {
        if (this.zzceg != null) {
            this.zzceg.stopLoading();
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzafc zzafcVar) {
        this.zzcet.zzcdw = zzafcVar;
        if (this.zzceg != null) {
            this.zzcet.zzd(this.zzceg);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzko zzkoVar) throws RemoteException {
        if (this.zzceg != null) {
            this.zzceg.zza(zzkoVar);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzlf zzlfVar) throws RemoteException {
        this.zzcet.zzcdv = zzlfVar;
        if (this.zzceg != null) {
            this.zzcet.zzd(this.zzceg);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzli zzliVar) throws RemoteException {
        this.zzcet.zzapd = zzliVar;
        if (this.zzceg != null) {
            this.zzcet.zzd(this.zzceg);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzly zzlyVar) throws RemoteException {
        this.zzcet.zzcdt = zzlyVar;
        if (this.zzceg != null) {
            this.zzcet.zzd(this.zzceg);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzme zzmeVar) throws RemoteException {
        abort();
        if (this.zzceg != null) {
            this.zzceg.zza(zzmeVar);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzms zzmsVar) {
        throw new IllegalStateException("Unused method");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzns zznsVar) {
        throw new IllegalStateException("getVideoController not implemented for interstitials");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzpb zzpbVar) throws RemoteException {
        this.zzcet.zzcdu = zzpbVar;
        if (this.zzceg != null) {
            this.zzcet.zzd(this.zzceg);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzyx zzyxVar) throws RemoteException {
        zzahw.zzcz("setInAppPurchaseListener is deprecated and should not be called.");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzzd zzzdVar, String str) throws RemoteException {
        zzahw.zzcz("setPlayStorePurchaseParams is deprecated and should not be called.");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean zzb(zzkk zzkkVar) throws RemoteException {
        if (!zzuo.zzh(zzkkVar).contains("gw")) {
            abort();
        }
        if (zzuo.zzh(zzkkVar).contains("_skipMediation")) {
            abort();
        }
        if (zzkkVar.zzbhc != null) {
            abort();
        }
        if (this.zzceg != null) {
            return this.zzceg.zzb(zzkkVar);
        }
        zzuo zzey = com.google.android.gms.ads.internal.zzbt.zzey();
        if (zzuo.zzh(zzkkVar).contains("_ad")) {
            zzey.zzb(zzkkVar, this.zzapp);
        }
        zzur zza = zzey.zza(zzkkVar, this.zzapp);
        if (zza == null) {
            abort();
            zzus.zzln().zzlr();
            return this.zzceg.zzb(zzkkVar);
        }
        if (zza.zzcek) {
            zzus.zzln().zzlq();
        } else {
            zza.load();
            zzus.zzln().zzlr();
        }
        this.zzceg = zza.zzceg;
        zza.zzcei.zza(this.zzcet);
        this.zzcet.zzd(this.zzceg);
        return zza.zzcel;
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final IObjectWrapper zzbp() throws RemoteException {
        if (this.zzceg != null) {
            return this.zzceg.zzbp();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final zzko zzbq() throws RemoteException {
        if (this.zzceg != null) {
            return this.zzceg.zzbq();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zzbs() throws RemoteException {
        if (this.zzceg != null) {
            this.zzceg.zzbs();
        } else {
            zzahw.zzcz("Interstitial ad must be loaded before pingManualTrackingUrl().");
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzly zzcc() {
        throw new IllegalStateException("getIAppEventListener not implemented");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzli zzcd() {
        throw new IllegalStateException("getIAdListener not implemented");
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final String zzco() throws RemoteException {
        if (this.zzceg != null) {
            return this.zzceg.zzco();
        }
        return null;
    }
}
