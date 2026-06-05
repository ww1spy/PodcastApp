package com.google.android.gms.ads.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzabj;
import com.google.android.gms.internal.zzaep;
import com.google.android.gms.internal.zzafc;
import com.google.android.gms.internal.zzagd;
import com.google.android.gms.internal.zzagx;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzahf;
import com.google.android.gms.internal.zzahn;
import com.google.android.gms.internal.zzahp;
import com.google.android.gms.internal.zzahu;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzako;
import com.google.android.gms.internal.zzaqa;
import com.google.android.gms.internal.zzfu;
import com.google.android.gms.internal.zziu;
import com.google.android.gms.internal.zziw;
import com.google.android.gms.internal.zzkf;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzkl;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzlf;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzlu;
import com.google.android.gms.internal.zzly;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zzms;
import com.google.android.gms.internal.zznq;
import com.google.android.gms.internal.zzns;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzot;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzyx;
import com.google.android.gms.internal.zzzd;
import com.google.android.gms.internal.zzzn;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.CountDownLatch;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zza extends zzlu implements com.google.android.gms.ads.internal.gmsg.zzb, com.google.android.gms.ads.internal.overlay.zzt, zzabj, zzahn, zzkf, zzzn {
    protected zzov zzanh;
    protected zzot zzani;
    private zzot zzanj;
    protected boolean zzank = false;
    protected final zzbj zzanl = new zzbj(this);
    protected final zzbu zzanm;

    @Nullable
    protected transient zzkk zzann;
    protected final zzfu zzano;
    protected final zzv zzanp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zza(zzbu zzbuVar, @Nullable zzbj zzbjVar, zzv zzvVar) {
        this.zzanm = zzbuVar;
        this.zzanp = zzvVar;
        zzbt.zzel().zzah(this.zzanm.zzaiq);
        zzbt.zzel().zzai(this.zzanm.zzaiq);
        zzahu.zzaf(this.zzanm.zzaiq);
        zzbt.zzfi().initialize(this.zzanm.zzaiq);
        zzbt.zzep().zzd(this.zzanm.zzaiq, this.zzanm.zzatz);
        zzbt.zzer().initialize(this.zzanm.zzaiq);
        this.zzano = zzbt.zzep().zzqa();
        zzbt.zzeo().initialize(this.zzanm.zzaiq);
        zzbt.zzfk().initialize(this.zzanm.zzaiq);
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbsy)).booleanValue()) {
            Timer timer = new Timer();
            timer.schedule(new zzb(this, new CountDownLatch(((Integer) zzlc.zzio().zzd(zzoi.zzbta)).intValue()), timer), 0L, ((Long) zzlc.zzio().zzd(zzoi.zzbsz)).longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean zza(zzkk zzkkVar) {
        Bundle bundle = zzkkVar.zzbhf.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        return bundle == null || !bundle.containsKey("gw");
    }

    private static long zzr(String str) {
        String str2;
        int indexOf = str.indexOf("ufe");
        int indexOf2 = str.indexOf(44, indexOf);
        if (indexOf2 == -1) {
            indexOf2 = str.length();
        }
        try {
            return Long.parseLong(str.substring(indexOf + 4, indexOf2));
        } catch (IndexOutOfBoundsException unused) {
            str2 = "Invalid index for Url fetch time in CSI latency info.";
            zzahw.zzcz(str2);
            return -1L;
        } catch (NumberFormatException unused2) {
            str2 = "Cannot find valid format of Url fetch time in CSI latency info.";
            zzahw.zzcz(str2);
            return -1L;
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public void destroy() {
        com.google.android.gms.common.internal.zzbq.zzgn("destroy must be called on the main UI thread.");
        this.zzanl.cancel();
        this.zzano.zzi(this.zzanm.zzaue);
        zzbu zzbuVar = this.zzanm;
        if (zzbuVar.zzaua != null) {
            zzbuVar.zzaua.zzfs();
        }
        zzbuVar.zzaui = null;
        zzbuVar.zzauj = null;
        zzbuVar.zzauv = null;
        zzbuVar.zzauk = null;
        zzbuVar.zzg(false);
        if (zzbuVar.zzaua != null) {
            zzbuVar.zzaua.removeAllViews();
        }
        zzbuVar.zzfm();
        zzbuVar.zzfn();
        zzbuVar.zzaue = null;
    }

    @Override // com.google.android.gms.internal.zzlt
    public String getAdUnitId() {
        return this.zzanm.zzatx;
    }

    @Override // com.google.android.gms.internal.zzlt
    public zzmm getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean isLoading() {
        return this.zzank;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final boolean isReady() {
        com.google.android.gms.common.internal.zzbq.zzgn("isLoaded must be called on the main UI thread.");
        return this.zzanm.zzaub == null && this.zzanm.zzauc == null && this.zzanm.zzaue != null;
    }

    @Override // com.google.android.gms.internal.zzkf
    public void onAdClicked() {
        if (this.zzanm.zzaue == null) {
            zzahw.zzcz("Ad state was null when trying to ping click URLs.");
            return;
        }
        zzahw.zzby("Pinging click URLs.");
        if (this.zzanm.zzaug != null) {
            this.zzanm.zzaug.zzpl();
        }
        if (this.zzanm.zzaue.zzchw != null) {
            zzbt.zzel();
            zzaij.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, zzc(this.zzanm.zzaue.zzchw));
        }
        if (this.zzanm.zzauh != null) {
            try {
                this.zzanm.zzauh.onAdClicked();
            } catch (RemoteException e) {
                zzahw.zzc("Could not notify onAdClicked event.", e);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzb
    public final void onAppEvent(String str, @Nullable String str2) {
        if (this.zzanm.zzauj != null) {
            try {
                this.zzanm.zzauj.onAppEvent(str, str2);
            } catch (RemoteException e) {
                zzahw.zzc("Could not call the AppEventListener.", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public void pause() {
        com.google.android.gms.common.internal.zzbq.zzgn("pause must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.zzlt
    public void resume() {
        com.google.android.gms.common.internal.zzbq.zzgn("resume must be called on the main UI thread.");
    }

    @Override // com.google.android.gms.internal.zzlt
    public void setImmersiveMode(boolean z) {
        throw new IllegalStateException("onImmersiveModeUpdated is not supported for current ad type");
    }

    @Override // com.google.android.gms.internal.zzlt
    public void setManualImpressionsEnabled(boolean z) {
        zzahw.zzcz("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void setUserId(String str) {
        com.google.android.gms.common.internal.zzbq.zzgn("setUserId must be called on the main UI thread.");
        this.zzanm.zzaux = str;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void stopLoading() {
        com.google.android.gms.common.internal.zzbq.zzgn("stopLoading must be called on the main UI thread.");
        this.zzank = false;
        this.zzanm.zzg(true);
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzafc zzafcVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setRewardedVideoAdListener can only be called from the UI thread.");
        this.zzanm.zzauw = zzafcVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(@Nullable zzagd zzagdVar) {
        if (this.zzanm.zzauw == null) {
            return;
        }
        String str = "";
        int i = 1;
        if (zzagdVar != null) {
            try {
                str = zzagdVar.type;
                i = zzagdVar.zzdax;
            } catch (RemoteException e) {
                zzahw.zzc("Could not call RewardedVideoAdListener.onRewarded().", e);
                return;
            }
        }
        this.zzanm.zzauw.zza(new zzaep(str, i));
    }

    @Override // com.google.android.gms.internal.zzabj
    public final void zza(zzahe zzaheVar) {
        if (zzaheVar.zzdcw.zzcts != -1 && !TextUtils.isEmpty(zzaheVar.zzdcw.zzcub)) {
            long zzr = zzr(zzaheVar.zzdcw.zzcub);
            if (zzr != -1) {
                this.zzanh.zza(this.zzanh.zzd(zzaheVar.zzdcw.zzcts + zzr), "stc");
            }
        }
        this.zzanh.zzao(zzaheVar.zzdcw.zzcub);
        this.zzanh.zza(this.zzani, "arf");
        this.zzanj = this.zzanh.zzjo();
        this.zzanh.zzf("gqi", zzaheVar.zzdcw.zzbdl);
        this.zzanm.zzaub = null;
        this.zzanm.zzauf = zzaheVar;
        zzaheVar.zzdcu.zza(new zzc(this, zzaheVar));
        zzaheVar.zzdcu.zza(zziw.zza.zzb.AD_LOADED);
        zza(zzaheVar, this.zzanh);
    }

    protected abstract void zza(zzahe zzaheVar, zzov zzovVar);

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzko zzkoVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setAdSize must be called on the main UI thread.");
        this.zzanm.zzaud = zzkoVar;
        if (this.zzanm.zzaue != null && this.zzanm.zzaue.zzcnm != null && this.zzanm.zzavb == 0) {
            this.zzanm.zzaue.zzcnm.zza(zzaqa.zzc(zzkoVar));
        }
        if (this.zzanm.zzaua == null) {
            return;
        }
        if (this.zzanm.zzaua.getChildCount() > 1) {
            this.zzanm.zzaua.removeView(this.zzanm.zzaua.getNextView());
        }
        this.zzanm.zzaua.setMinimumWidth(zzkoVar.widthPixels);
        this.zzanm.zzaua.setMinimumHeight(zzkoVar.heightPixels);
        this.zzanm.zzaua.requestLayout();
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzlf zzlfVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setAdListener must be called on the main UI thread.");
        this.zzanm.zzauh = zzlfVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzli zzliVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setAdListener must be called on the main UI thread.");
        this.zzanm.zzaui = zzliVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzly zzlyVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setAppEventListener must be called on the main UI thread.");
        this.zzanm.zzauj = zzlyVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzme zzmeVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setCorrelationIdProvider must be called on the main UI thread");
        this.zzanm.zzauk = zzmeVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(@Nullable zzms zzmsVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setIconAdOptions must be called on the main UI thread.");
        this.zzanm.zzaus = zzmsVar;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(@Nullable zzns zznsVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setVideoOptions must be called on the main UI thread.");
        this.zzanm.zzaur = zznsVar;
    }

    public final void zza(zzot zzotVar) {
        this.zzanh = new zzov(((Boolean) zzlc.zzio().zzd(zzoi.zzbne)).booleanValue(), "load_ad", this.zzanm.zzaud.zzbia);
        this.zzanj = new zzot(-1L, null, null);
        if (zzotVar == null) {
            this.zzani = new zzot(-1L, null, null);
        } else {
            this.zzani = new zzot(zzotVar.getTime(), zzotVar.zzjl(), zzotVar.zzjm());
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public void zza(zzpb zzpbVar) {
        throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
    }

    @Override // com.google.android.gms.internal.zzlt
    public void zza(zzyx zzyxVar) {
        zzahw.zzcz("setInAppPurchaseListener is deprecated and should not be called.");
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zza(zzzd zzzdVar, String str) {
        zzahw.zzcz("setPlayStorePurchaseParams is deprecated and should not be called.");
    }

    @Override // com.google.android.gms.internal.zzahn
    public final void zza(HashSet<zzahf> hashSet) {
        this.zzanm.zza(hashSet);
    }

    boolean zza(zzahd zzahdVar) {
        return false;
    }

    protected abstract boolean zza(@Nullable zzahd zzahdVar, zzahd zzahdVar2);

    protected abstract boolean zza(zzkk zzkkVar, zzov zzovVar);

    @Override // com.google.android.gms.internal.zzzn
    public void zzb(zzahd zzahdVar) {
        zziu zziuVar;
        zziw.zza.zzb zzbVar;
        this.zzanh.zza(this.zzanj, "awr");
        this.zzanm.zzauc = null;
        if (zzahdVar.errorCode != -2 && zzahdVar.errorCode != 3 && this.zzanm.zzfl() != null) {
            zzbt.zzeq().zzb(this.zzanm.zzfl());
        }
        if (zzahdVar.errorCode == -1) {
            this.zzank = false;
            return;
        }
        if (zza(zzahdVar)) {
            zzahw.zzby("Ad refresh scheduled.");
        }
        if (zzahdVar.errorCode != -2) {
            if (zzahdVar.errorCode == 3) {
                zziuVar = zzahdVar.zzdcu;
                zzbVar = zziw.zza.zzb.AD_FAILED_TO_LOAD_NO_FILL;
            } else {
                zziuVar = zzahdVar.zzdcu;
                zzbVar = zziw.zza.zzb.AD_FAILED_TO_LOAD;
            }
            zziuVar.zza(zzbVar);
            zzi(zzahdVar.errorCode);
            return;
        }
        if (this.zzanm.zzauz == null) {
            this.zzanm.zzauz = new zzahp(this.zzanm.zzatx);
        }
        if (this.zzanm.zzaua != null) {
            this.zzanm.zzaua.zzfr().zzcs(zzahdVar.zzcuj);
        }
        this.zzano.zzh(this.zzanm.zzaue);
        if (zza(this.zzanm.zzaue, zzahdVar)) {
            this.zzanm.zzaue = zzahdVar;
            zzbu zzbuVar = this.zzanm;
            if (zzbuVar.zzaug != null) {
                if (zzbuVar.zzaue != null) {
                    zzbuVar.zzaug.zzh(zzbuVar.zzaue.zzdcn);
                    zzbuVar.zzaug.zzi(zzbuVar.zzaue.zzdco);
                    zzbuVar.zzaug.zzy(zzbuVar.zzaue.zzcto);
                }
                zzbuVar.zzaug.zzx(zzbuVar.zzaud.zzbib);
            }
            this.zzanh.zzf("is_mraid", this.zzanm.zzaue.zzfz() ? NotificationPreferences.YES : NotificationPreferences.NO);
            this.zzanh.zzf("is_mediation", this.zzanm.zzaue.zzcto ? NotificationPreferences.YES : NotificationPreferences.NO);
            if (this.zzanm.zzaue.zzcnm != null && this.zzanm.zzaue.zzcnm.zzua() != null) {
                this.zzanh.zzf("is_delay_pl", this.zzanm.zzaue.zzcnm.zzua().zzur() ? NotificationPreferences.YES : NotificationPreferences.NO);
            }
            this.zzanh.zza(this.zzani, "ttc");
            if (zzbt.zzep().zzpv() != null) {
                zzbt.zzep().zzpv().zza(this.zzanh);
            }
            zzcb();
            if (this.zzanm.zzfo()) {
                zzbw();
            }
        }
        if (zzahdVar.zzchz != null) {
            zzbt.zzel().zza(this.zzanm.zzaiq, zzahdVar.zzchz);
        }
    }

    @Override // com.google.android.gms.internal.zzlt
    public boolean zzb(zzkk zzkkVar) {
        String sb;
        com.google.android.gms.common.internal.zzbq.zzgn("loadAd must be called on the main UI thread.");
        zzbt.zzer().zzhi();
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbpi)).booleanValue()) {
            zzkkVar = zzkkVar.zzhz();
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbpj)).booleanValue()) {
                zzkkVar.extras.putBoolean(AdMobAdapter.NEW_BUNDLE, true);
            }
        }
        if (com.google.android.gms.common.util.zzj.zzcw(this.zzanm.zzaiq) && zzkkVar.zzbhd != null) {
            zzkkVar = new zzkl(zzkkVar).zza(null).zzia();
        }
        if (this.zzanm.zzaub != null || this.zzanm.zzauc != null) {
            zzahw.zzcz(this.zzann != null ? "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes." : "Loading already in progress, saving this object for future refreshes.");
            this.zzann = zzkkVar;
            return false;
        }
        zzahw.zzcy("Starting ad request.");
        zza((zzot) null);
        this.zzani = this.zzanh.zzjo();
        if (zzkkVar.zzbgy) {
            sb = "This request is sent from a test device.";
        } else {
            zzlc.zzij();
            String zzaz = zzako.zzaz(this.zzanm.zzaiq);
            StringBuilder sb2 = new StringBuilder(71 + String.valueOf(zzaz).length());
            sb2.append("Use AdRequest.Builder.addTestDevice(\"");
            sb2.append(zzaz);
            sb2.append("\") to get test ads on this device.");
            sb = sb2.toString();
        }
        zzahw.zzcy(sb);
        this.zzanl.zzf(zzkkVar);
        this.zzank = zza(zzkkVar, this.zzanh);
        return this.zzank;
    }

    public final zzv zzbo() {
        return this.zzanp;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final IObjectWrapper zzbp() {
        com.google.android.gms.common.internal.zzbq.zzgn("getAdFrame must be called on the main UI thread.");
        return com.google.android.gms.dynamic.zzn.zzz(this.zzanm.zzaua);
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final zzko zzbq() {
        com.google.android.gms.common.internal.zzbq.zzgn("getAdSize must be called on the main UI thread.");
        if (this.zzanm.zzaud == null) {
            return null;
        }
        return new zznq(this.zzanm.zzaud);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzt
    public final void zzbr() {
        zzbu();
    }

    @Override // com.google.android.gms.internal.zzlt
    public final void zzbs() {
        com.google.android.gms.common.internal.zzbq.zzgn("recordManualImpression must be called on the main UI thread.");
        if (this.zzanm.zzaue == null) {
            zzahw.zzcz("Ad state was null when trying to ping manual tracking URLs.");
            return;
        }
        zzahw.zzby("Pinging manual tracking URLs.");
        if (this.zzanm.zzaue.zzdcs) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (this.zzanm.zzaue.zzctq != null) {
            arrayList.addAll(this.zzanm.zzaue.zzctq);
        }
        if (this.zzanm.zzaue.zzcje != null && this.zzanm.zzaue.zzcje.zzchi != null) {
            arrayList.addAll(this.zzanm.zzaue.zzcje.zzchi);
        }
        if (arrayList.isEmpty()) {
            return;
        }
        zzbt.zzel();
        zzaij.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, arrayList);
        this.zzanm.zzaue.zzdcs = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzbt() {
        zzahw.zzcy("Ad closing.");
        if (this.zzanm.zzaui != null) {
            try {
                this.zzanm.zzaui.onAdClosed();
            } catch (RemoteException e) {
                zzahw.zzc("Could not call AdListener.onAdClosed().", e);
            }
        }
        if (this.zzanm.zzauw != null) {
            try {
                this.zzanm.zzauw.onRewardedVideoAdClosed();
            } catch (RemoteException e2) {
                zzahw.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdClosed().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzbu() {
        zzahw.zzcy("Ad leaving application.");
        if (this.zzanm.zzaui != null) {
            try {
                this.zzanm.zzaui.onAdLeftApplication();
            } catch (RemoteException e) {
                zzahw.zzc("Could not call AdListener.onAdLeftApplication().", e);
            }
        }
        if (this.zzanm.zzauw != null) {
            try {
                this.zzanm.zzauw.onRewardedVideoAdLeftApplication();
            } catch (RemoteException e2) {
                zzahw.zzc("Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzbv() {
        zzahw.zzcy("Ad opening.");
        if (this.zzanm.zzaui != null) {
            try {
                this.zzanm.zzaui.onAdOpened();
            } catch (RemoteException e) {
                zzahw.zzc("Could not call AdListener.onAdOpened().", e);
            }
        }
        if (this.zzanm.zzauw != null) {
            try {
                this.zzanm.zzauw.onRewardedVideoAdOpened();
            } catch (RemoteException e2) {
                zzahw.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdOpened().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzbw() {
        zzc(false);
    }

    public final void zzbx() {
        zzahw.zzcy("Ad impression.");
        if (this.zzanm.zzaui != null) {
            try {
                this.zzanm.zzaui.onAdImpression();
            } catch (RemoteException e) {
                zzahw.zzc("Could not call AdListener.onAdImpression().", e);
            }
        }
    }

    public final void zzby() {
        zzahw.zzcy("Ad clicked.");
        if (this.zzanm.zzaui != null) {
            try {
                this.zzanm.zzaui.onAdClicked();
            } catch (RemoteException e) {
                zzahw.zzc("Could not call AdListener.onAdClicked().", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzbz() {
        if (this.zzanm.zzauw == null) {
            return;
        }
        try {
            this.zzanm.zzauw.onRewardedVideoStarted();
        } catch (RemoteException e) {
            zzahw.zzc("Could not call RewardedVideoAdListener.onVideoStarted().", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final List<String> zzc(List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(zzagx.zzb(it.next(), this.zzanm.zzaiq));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzc(int i, boolean z) {
        StringBuilder sb = new StringBuilder(30);
        sb.append("Failed to load ad: ");
        sb.append(i);
        zzahw.zzcz(sb.toString());
        this.zzank = z;
        if (this.zzanm.zzaui != null) {
            try {
                this.zzanm.zzaui.onAdFailedToLoad(i);
            } catch (RemoteException e) {
                zzahw.zzc("Could not call AdListener.onAdFailedToLoad().", e);
            }
        }
        if (this.zzanm.zzauw != null) {
            try {
                this.zzanm.zzauw.onRewardedVideoAdFailedToLoad(i);
            } catch (RemoteException e2) {
                zzahw.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzc(boolean z) {
        zzahw.zzcy("Ad finished loading.");
        this.zzank = z;
        if (this.zzanm.zzaui != null) {
            try {
                this.zzanm.zzaui.onAdLoaded();
            } catch (RemoteException e) {
                zzahw.zzc("Could not call AdListener.onAdLoaded().", e);
            }
        }
        if (this.zzanm.zzauw != null) {
            try {
                this.zzanm.zzauw.onRewardedVideoAdLoaded();
            } catch (RemoteException e2) {
                zzahw.zzc("Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded().", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzc(zzkk zzkkVar) {
        if (this.zzanm.zzaua == null) {
            return false;
        }
        Object parent = this.zzanm.zzaua.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        return zzbt.zzel().zza(view, view.getContext());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzca() {
        if (this.zzanm.zzauw == null) {
            return;
        }
        try {
            this.zzanm.zzauw.onRewardedVideoCompleted();
        } catch (RemoteException e) {
            zzahw.zzc("Could not call RewardedVideoAdListener.onRewardedVideoCompleted().", e);
        }
    }

    public final void zzcb() {
        zzahd zzahdVar = this.zzanm.zzaue;
        if (zzahdVar == null || TextUtils.isEmpty(zzahdVar.zzcuj) || zzahdVar.zzdct || !zzbt.zzev().zzrr()) {
            return;
        }
        zzahw.zzby("Sending troubleshooting signals to the server.");
        zzbt.zzev().zzb(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, zzahdVar.zzcuj, this.zzanm.zzatx);
        zzahdVar.zzdct = true;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzly zzcc() {
        return this.zzanm.zzauj;
    }

    @Override // com.google.android.gms.internal.zzlt
    public final zzli zzcd() {
        return this.zzanm.zzaui;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzg(View view) {
        zzbv zzbvVar = this.zzanm.zzaua;
        if (zzbvVar != null) {
            zzbvVar.addView(view, zzbt.zzen().zzrj());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzi(int i) {
        zzc(i, false);
    }
}
