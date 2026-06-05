package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzli;
import com.google.android.gms.internal.zzlm;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzqh;
import com.google.android.gms.internal.zzrs;
import com.google.android.gms.internal.zzrv;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzsb;
import com.google.android.gms.internal.zzse;
import com.google.android.gms.internal.zzsh;
import com.google.android.gms.internal.zzwf;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzag extends zzlm {
    private final Context mContext;
    private final zzv zzanp;
    private final zzwf zzanu;
    private final zzli zzapd;

    @Nullable
    private final zzrs zzape;

    @Nullable
    private final zzsh zzapf;

    @Nullable
    private final zzrv zzapg;

    @Nullable
    private final zzse zzaph;

    @Nullable
    private final zzko zzapi;

    @Nullable
    private final PublisherAdViewOptions zzapj;
    private final SimpleArrayMap<String, zzsb> zzapk;
    private final SimpleArrayMap<String, zzry> zzapl;
    private final zzqh zzapm;
    private final zzme zzapo;
    private final String zzapp;
    private final zzala zzapq;

    @Nullable
    private WeakReference<zzd> zzapr;
    private final Object mLock = new Object();
    private final List<String> zzapn = zzdh();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzag(Context context, String str, zzwf zzwfVar, zzala zzalaVar, zzli zzliVar, zzrs zzrsVar, zzsh zzshVar, zzrv zzrvVar, SimpleArrayMap<String, zzsb> simpleArrayMap, SimpleArrayMap<String, zzry> simpleArrayMap2, zzqh zzqhVar, zzme zzmeVar, zzv zzvVar, zzse zzseVar, zzko zzkoVar, PublisherAdViewOptions publisherAdViewOptions) {
        this.mContext = context;
        this.zzapp = str;
        this.zzanu = zzwfVar;
        this.zzapq = zzalaVar;
        this.zzapd = zzliVar;
        this.zzapg = zzrvVar;
        this.zzape = zzrsVar;
        this.zzapf = zzshVar;
        this.zzapk = simpleArrayMap;
        this.zzapl = simpleArrayMap2;
        this.zzapm = zzqhVar;
        this.zzapo = zzmeVar;
        this.zzanp = zzvVar;
        this.zzaph = zzseVar;
        this.zzapi = zzkoVar;
        this.zzapj = publisherAdViewOptions;
        zzoi.initialize(this.mContext);
    }

    private static void runOnUiThread(Runnable runnable) {
        zzaij.zzdfn.post(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(zzkk zzkkVar, int i) {
        zzbb zzbbVar = new zzbb(this.mContext, this.zzanp, zzko.zzf(this.mContext), this.zzapp, this.zzanu, this.zzapq);
        this.zzapr = new WeakReference<>(zzbbVar);
        zzrs zzrsVar = this.zzape;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        zzbbVar.zzanm.zzaul = zzrsVar;
        zzsh zzshVar = this.zzapf;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnUnifiedNativeAdLoadedListener must be called on the main UI thread.");
        zzbbVar.zzanm.zzaun = zzshVar;
        zzrv zzrvVar = this.zzapg;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnContentAdLoadedListener must be called on the main UI thread.");
        zzbbVar.zzanm.zzaum = zzrvVar;
        SimpleArrayMap<String, zzsb> simpleArrayMap = this.zzapk;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        zzbbVar.zzanm.zzaup = simpleArrayMap;
        zzbbVar.zza(this.zzapd);
        SimpleArrayMap<String, zzry> simpleArrayMap2 = this.zzapl;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnCustomClickListener must be called on the main UI thread.");
        zzbbVar.zzanm.zzauo = simpleArrayMap2;
        zzbbVar.zzd(zzdh());
        zzqh zzqhVar = this.zzapm;
        com.google.android.gms.common.internal.zzbq.zzgn("setNativeAdOptions must be called on the main UI thread.");
        zzbbVar.zzanm.zzauq = zzqhVar;
        zzbbVar.zza(this.zzapo);
        zzbbVar.zzj(i);
        zzbbVar.zzb(zzkkVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzdf() {
        return ((Boolean) zzlc.zzio().zzd(zzoi.zzbpg)).booleanValue() && this.zzaph != null;
    }

    private final boolean zzdg() {
        if (this.zzape == null && this.zzapg == null && this.zzapf == null) {
            return this.zzapk != null && this.zzapk.size() > 0;
        }
        return true;
    }

    private final List<String> zzdh() {
        ArrayList arrayList = new ArrayList();
        if (this.zzapg != null) {
            arrayList.add(NotificationPreferences.YES);
        }
        if (this.zzape != null) {
            arrayList.add("2");
        }
        if (this.zzapf != null) {
            arrayList.add("6");
        }
        if (this.zzapk.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zze(zzkk zzkkVar) {
        zzq zzqVar = new zzq(this.mContext, this.zzanp, this.zzapi, this.zzapp, this.zzanu, this.zzapq);
        this.zzapr = new WeakReference<>(zzqVar);
        zzse zzseVar = this.zzaph;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnPublisherAdViewLoadedListener must be called on the main UI thread.");
        zzqVar.zzanm.zzaut = zzseVar;
        if (this.zzapj != null) {
            if (this.zzapj.zzbk() != null) {
                zzqVar.zza(this.zzapj.zzbk());
            }
            zzqVar.setManualImpressionsEnabled(this.zzapj.getManualImpressionsEnabled());
        }
        zzrs zzrsVar = this.zzape;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
        zzqVar.zzanm.zzaul = zzrsVar;
        zzrv zzrvVar = this.zzapg;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnContentAdLoadedListener must be called on the main UI thread.");
        zzqVar.zzanm.zzaum = zzrvVar;
        SimpleArrayMap<String, zzsb> simpleArrayMap = this.zzapk;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        zzqVar.zzanm.zzaup = simpleArrayMap;
        SimpleArrayMap<String, zzry> simpleArrayMap2 = this.zzapl;
        com.google.android.gms.common.internal.zzbq.zzgn("setOnCustomClickListener must be called on the main UI thread.");
        zzqVar.zzanm.zzauo = simpleArrayMap2;
        zzqh zzqhVar = this.zzapm;
        com.google.android.gms.common.internal.zzbq.zzgn("setNativeAdOptions must be called on the main UI thread.");
        zzqVar.zzanm.zzauq = zzqhVar;
        zzqVar.zzd(zzdh());
        zzqVar.zza(this.zzapd);
        zzqVar.zza(this.zzapo);
        ArrayList arrayList = new ArrayList();
        if (zzdg()) {
            arrayList.add(1);
        }
        if (this.zzaph != null) {
            arrayList.add(2);
        }
        zzqVar.zze(arrayList);
        if (zzdg()) {
            zzkkVar.extras.putBoolean("ina", true);
        }
        if (this.zzaph != null) {
            zzkkVar.extras.putBoolean("iba", true);
        }
        zzqVar.zzb(zzkkVar);
    }

    @Override // com.google.android.gms.internal.zzll
    @Nullable
    public final String getMediationAdapterClassName() {
        synchronized (this.mLock) {
            if (this.zzapr == null) {
                return null;
            }
            zzd zzdVar = this.zzapr.get();
            return zzdVar != null ? zzdVar.getMediationAdapterClassName() : null;
        }
    }

    @Override // com.google.android.gms.internal.zzll
    public final boolean isLoading() {
        synchronized (this.mLock) {
            if (this.zzapr == null) {
                return false;
            }
            zzd zzdVar = this.zzapr.get();
            return zzdVar != null ? zzdVar.isLoading() : false;
        }
    }

    @Override // com.google.android.gms.internal.zzll
    public final void zza(zzkk zzkkVar, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Number of ads has to be more than 0");
        }
        runOnUiThread(new zzai(this, zzkkVar, i));
    }

    @Override // com.google.android.gms.internal.zzll
    @Nullable
    public final String zzco() {
        synchronized (this.mLock) {
            if (this.zzapr == null) {
                return null;
            }
            zzd zzdVar = this.zzapr.get();
            return zzdVar != null ? zzdVar.zzco() : null;
        }
    }

    @Override // com.google.android.gms.internal.zzll
    public final void zzd(zzkk zzkkVar) {
        runOnUiThread(new zzah(this, zzkkVar));
    }
}
