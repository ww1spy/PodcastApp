package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.support.v4.util.SimpleArrayMap;
import android.util.Log;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzaan;
import com.google.android.gms.internal.zzaar;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaid;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzaky;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzalt;
import com.google.android.gms.internal.zzamd;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzaop;
import com.google.android.gms.internal.zzfx;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zzmp;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzpo;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzpu;
import com.google.android.gms.internal.zzpv;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzpx;
import com.google.android.gms.internal.zzpz;
import com.google.android.gms.internal.zzro;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzsb;
import com.google.android.gms.internal.zzvq;
import com.google.android.gms.internal.zzwf;
import com.google.android.gms.internal.zzwi;
import com.google.android.gms.internal.zzwr;
import com.google.android.gms.internal.zzwu;
import com.google.android.gms.internal.zzyx;
import com.google.android.gms.internal.zzzm;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzbb extends zzd implements zzpw {
    private final Object mLock;
    private boolean zzany;
    private boolean zzari;
    private zzamd<zzpx> zzarj;
    private zzaof zzark;
    private int zzarl;
    private zzaan zzarm;
    private final String zzarn;

    public zzbb(Context context, zzv zzvVar, zzko zzkoVar, String str, zzwf zzwfVar, zzala zzalaVar) {
        this(context, zzvVar, zzkoVar, str, zzwfVar, zzalaVar, false);
    }

    public zzbb(Context context, zzv zzvVar, zzko zzkoVar, String str, zzwf zzwfVar, zzala zzalaVar, boolean z) {
        super(context, zzkoVar, str, zzwfVar, zzalaVar, zzvVar);
        this.mLock = new Object();
        this.zzarj = new zzamd<>();
        this.zzarl = 1;
        this.zzarn = UUID.randomUUID().toString();
        this.zzari = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzpr zza(zzpx zzpxVar) {
        zzpr zzprVar;
        IObjectWrapper zzkd;
        Object obj = null;
        if (zzpxVar instanceof zzpm) {
            zzpm zzpmVar = (zzpm) zzpxVar;
            zzprVar = new zzpr(zzpmVar.getHeadline(), zzpmVar.getImages(), zzpmVar.getBody(), zzpmVar.zzkj(), zzpmVar.getCallToAction(), zzpmVar.getAdvertiser(), -1.0d, null, null, zzpmVar.zzkf(), zzpmVar.getVideoController(), zzpmVar.zzkg(), zzpmVar.zzkh(), zzpmVar.getMediationAdapterClassName());
            if (zzpmVar.zzkd() != null) {
                zzkd = zzpmVar.zzkd();
                obj = com.google.android.gms.dynamic.zzn.zzy(zzkd);
            }
        } else if (zzpxVar instanceof zzpk) {
            zzpk zzpkVar = (zzpk) zzpxVar;
            zzprVar = new zzpr(zzpkVar.getHeadline(), zzpkVar.getImages(), zzpkVar.getBody(), zzpkVar.zzkc(), zzpkVar.getCallToAction(), null, zzpkVar.getStarRating(), zzpkVar.getStore(), zzpkVar.getPrice(), zzpkVar.zzkf(), zzpkVar.getVideoController(), zzpkVar.zzkg(), zzpkVar.zzkh(), zzpkVar.getMediationAdapterClassName());
            if (zzpkVar.zzkd() != null) {
                zzkd = zzpkVar.zzkd();
                obj = com.google.android.gms.dynamic.zzn.zzy(zzkd);
            }
        } else {
            zzprVar = null;
        }
        if (obj instanceof zzpz) {
            zzprVar.zzb((zzpz) obj);
        }
        return zzprVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zza(zzbu zzbuVar, zzbu zzbuVar2) {
        if (zzbuVar2.zzaul == null) {
            zzbuVar2.zzaul = zzbuVar.zzaul;
        }
        if (zzbuVar2.zzaum == null) {
            zzbuVar2.zzaum = zzbuVar.zzaum;
        }
        if (zzbuVar2.zzauo == null) {
            zzbuVar2.zzauo = zzbuVar.zzauo;
        }
        if (zzbuVar2.zzaup == null) {
            zzbuVar2.zzaup = zzbuVar.zzaup;
        }
        if (zzbuVar2.zzaur == null) {
            zzbuVar2.zzaur = zzbuVar.zzaur;
        }
        if (zzbuVar2.zzauq == null) {
            zzbuVar2.zzauq = zzbuVar.zzauq;
        }
        if (zzbuVar2.zzauy == null) {
            zzbuVar2.zzauy = zzbuVar.zzauy;
        }
        if (zzbuVar2.zzaug == null) {
            zzbuVar2.zzaug = zzbuVar.zzaug;
        }
        if (zzbuVar2.zzauz == null) {
            zzbuVar2.zzauz = zzbuVar.zzauz;
        }
        if (zzbuVar2.zzauh == null) {
            zzbuVar2.zzauh = zzbuVar.zzauh;
        }
        if (zzbuVar2.zzaui == null) {
            zzbuVar2.zzaui = zzbuVar.zzaui;
        }
        if (zzbuVar2.zzaud == null) {
            zzbuVar2.zzaud = zzbuVar.zzaud;
        }
        if (zzbuVar2.zzaue == null) {
            zzbuVar2.zzaue = zzbuVar.zzaue;
        }
        if (zzbuVar2.zzauf == null) {
            zzbuVar2.zzauf = zzbuVar.zzauf;
        }
    }

    private final void zza(zzpk zzpkVar) {
        zzaij.zzdfn.post(new zzbf(this, zzpkVar));
    }

    private final void zza(zzpm zzpmVar) {
        zzaij.zzdfn.post(new zzbg(this, zzpmVar));
    }

    private final void zza(zzpr zzprVar) {
        try {
            if (this.zzanm.zzaun != null) {
                this.zzanm.zzaun.zza(zzprVar);
            }
        } catch (RemoteException e) {
            zzahw.zzc("Could not call onUnifiedNativeAdLoadedListener.onUnifiedNativeAdLoaded().", e);
        }
    }

    @Nullable
    private final zzvq zzcx() {
        if (this.zzanm.zzaue == null || !this.zzanm.zzaue.zzcto) {
            return null;
        }
        return this.zzanm.zzaue.zzdcj;
    }

    private final void zzdy() {
        zzaan zzds = zzds();
        if (zzds != null) {
            zzds.zzmd();
        }
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final String getAdUnitId() {
        return this.zzanm.zzatx;
    }

    public final String getUuid() {
        return this.zzarn;
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void pause() {
        throw new IllegalStateException("Native Ad DOES NOT support pause().");
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void resume() {
        throw new IllegalStateException("Native Ad DOES NOT support resume().");
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzlt
    public final void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.zza
    public final void zza(zzahe zzaheVar, zzov zzovVar) {
        if (zzaheVar.zzaud != null) {
            this.zzanm.zzaud = zzaheVar.zzaud;
        }
        if (zzaheVar.errorCode != -2) {
            zzaij.zzdfn.post(new zzbc(this, zzaheVar));
            return;
        }
        int i = zzaheVar.zzcvm.zzctg;
        if (i == 1) {
            this.zzanm.zzavb = 0;
            zzbu zzbuVar = this.zzanm;
            zzbt.zzek();
            zzbuVar.zzauc = zzzm.zza(this.zzanm.zzaiq, this, zzaheVar, this.zzanm.zzaty, null, this.zzanu, this, zzovVar);
            String valueOf = String.valueOf(this.zzanm.zzauc.getClass().getName());
            zzahw.zzby(valueOf.length() != 0 ? "AdRenderer: ".concat(valueOf) : new String("AdRenderer: "));
            return;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            JSONArray jSONArray2 = new JSONObject(zzaheVar.zzdcw.body).getJSONArray("slots");
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                JSONArray jSONArray3 = jSONArray2.getJSONObject(i2).getJSONArray("ads");
                for (int i3 = 0; i3 < jSONArray3.length(); i3++) {
                    jSONArray.put(jSONArray3.get(i3));
                }
            }
            zzdy();
            ExecutorService newFixedThreadPool = Executors.newFixedThreadPool(i);
            ArrayList arrayList = new ArrayList();
            for (int i4 = 0; i4 < i; i4++) {
                arrayList.add(zzaid.zza(newFixedThreadPool, new zzbd(this, i4, jSONArray, i, zzaheVar)));
            }
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                try {
                    zzaij.zzdfn.post(new zzbe(this, (zzpx) ((zzalt) arrayList.get(i5)).get(((Long) zzlc.zzio().zzd(zzoi.zzbrg)).longValue(), TimeUnit.MILLISECONDS), i5, arrayList));
                } catch (InterruptedException e) {
                    zzahw.zzc("Exception occurred while getting an ad response", e);
                    Thread.currentThread().interrupt();
                } catch (CancellationException | ExecutionException | TimeoutException e2) {
                    zzahw.zzc("Exception occurred while getting an ad response", e2);
                }
            }
        } catch (JSONException e3) {
            zzahw.zzc("Malformed native ad response", e3);
            zzi(0);
        }
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void zza(zzpb zzpbVar) {
        throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.internal.zzpw
    public final void zza(zzpt zzptVar) {
        if (this.zzark != null) {
            this.zzark.zzb(zzptVar);
        }
    }

    @Override // com.google.android.gms.internal.zzpw
    public final void zza(zzpv zzpvVar) {
        if (this.zzanm.zzaue.zzdch != null) {
            zzbt.zzep().zzqa().zza(this.zzanm.zzaud, this.zzanm.zzaue, new zzfx(zzpvVar), (zzaof) null);
        }
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void zza(zzyx zzyxVar) {
        throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    protected final boolean zza(zzahd zzahdVar, zzahd zzahdVar2) {
        zzd(null);
        if (!this.zzanm.zzfo()) {
            throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
        }
        if (zzahdVar2.zzcto) {
            zzdy();
            try {
                zzwr zzmp = zzahdVar2.zzcjf != null ? zzahdVar2.zzcjf.zzmp() : null;
                zzwu zzmq = zzahdVar2.zzcjf != null ? zzahdVar2.zzcjf.zzmq() : null;
                zzro zzmu = zzahdVar2.zzcjf != null ? zzahdVar2.zzcjf.zzmu() : null;
                String zzc = zzc(zzahdVar2);
                if (zzmp != null && this.zzanm.zzaul != null) {
                    zzpk zzpkVar = new zzpk(zzmp.getHeadline(), zzmp.getImages(), zzmp.getBody(), zzmp.zzkc() != null ? zzmp.zzkc() : null, zzmp.getCallToAction(), zzmp.getStarRating(), zzmp.getStore(), zzmp.getPrice(), null, zzmp.getExtras(), zzmp.getVideoController(), zzmp.zzmx() != null ? (View) com.google.android.gms.dynamic.zzn.zzy(zzmp.zzmx()) : null, zzmp.zzkh(), zzc);
                    zzpkVar.zzb(new zzpu(this.zzanm.zzaiq, this, this.zzanm.zzaty, zzmp, zzpkVar));
                    zza(zzpkVar);
                } else if (zzmq != null && this.zzanm.zzaum != null) {
                    zzpm zzpmVar = new zzpm(zzmq.getHeadline(), zzmq.getImages(), zzmq.getBody(), zzmq.zzkj() != null ? zzmq.zzkj() : null, zzmq.getCallToAction(), zzmq.getAdvertiser(), null, zzmq.getExtras(), zzmq.getVideoController(), zzmq.zzmx() != null ? (View) com.google.android.gms.dynamic.zzn.zzy(zzmq.zzmx()) : null, zzmq.zzkh(), zzc);
                    zzpmVar.zzb(new zzpu(this.zzanm.zzaiq, this, this.zzanm.zzaty, zzmq, zzpmVar));
                    zza(zzpmVar);
                } else {
                    if (zzmu == null || this.zzanm.zzaup == null || this.zzanm.zzaup.get(zzmu.getCustomTemplateId()) == null) {
                        zzahw.zzcz("No matching mapper/listener for retrieved native ad template.");
                        zzi(0);
                        return false;
                    }
                    zzaij.zzdfn.post(new zzbi(this, zzmu));
                }
            } catch (RemoteException e) {
                zzahw.zzc("Failed to get native ad mapper", e);
            }
        } else {
            zzpx zzpxVar = zzahdVar2.zzdcp;
            if (this.zzari) {
                this.zzarj.set(zzpxVar);
            } else {
                boolean z = zzpxVar instanceof zzpm;
                if (!z || this.zzanm.zzaun == null) {
                    if (!z || this.zzanm.zzaum == null) {
                        boolean z2 = zzpxVar instanceof zzpk;
                        if (!z2 || this.zzanm.zzaun == null) {
                            if (!z2 || this.zzanm.zzaul == null) {
                                if ((zzpxVar instanceof zzpo) && this.zzanm.zzaup != null) {
                                    zzpo zzpoVar = (zzpo) zzpxVar;
                                    if (this.zzanm.zzaup.get(zzpoVar.getCustomTemplateId()) != null) {
                                        zzaij.zzdfn.post(new zzbh(this, zzpoVar.getCustomTemplateId(), zzahdVar2));
                                    }
                                }
                                zzahw.zzcz("No matching listener for retrieved native ad template.");
                                zzi(0);
                                return false;
                            }
                            zza((zzpk) zzahdVar2.zzdcp);
                        }
                    } else {
                        zza((zzpm) zzahdVar2.zzdcp);
                    }
                }
                zza(zza(zzahdVar2.zzdcp));
            }
        }
        return super.zza(zzahdVar, zzahdVar2);
    }

    @Override // com.google.android.gms.ads.internal.zzd
    protected final boolean zza(zzkk zzkkVar, zzahd zzahdVar, boolean z) {
        return this.zzanl.zzea();
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    public final boolean zza(zzkk zzkkVar, zzov zzovVar) {
        try {
            zzdr();
            return super.zza(zzkkVar, zzovVar, this.zzarl);
        } catch (Exception e) {
            if (!zzaky.zzae(4)) {
                return false;
            }
            Log.i(AdRequest.LOGTAG, "Error initializing webview.", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public final void zzbw() {
        zzc(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public final void zzc(int i, boolean z) {
        zzdy();
        super.zzc(i, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public final void zzc(boolean z) {
        super.zzc(z);
        if (this.zzany) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbst)).booleanValue()) {
                zzdu();
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzvr
    public final void zzch() {
        zzmp zzis;
        zzahd zzahdVar = this.zzanm.zzaue;
        if (zzahdVar.zzcjf == null) {
            super.zzch();
            return;
        }
        try {
            zzwi zzwiVar = zzahdVar.zzcjf;
            zzmm zzmmVar = null;
            zzwr zzmp = zzwiVar.zzmp();
            if (zzmp != null) {
                zzmmVar = zzmp.getVideoController();
            } else {
                zzwu zzmq = zzwiVar.zzmq();
                if (zzmq != null) {
                    zzmmVar = zzmq.getVideoController();
                } else {
                    zzro zzmu = zzwiVar.zzmu();
                    if (zzmu != null) {
                        zzmmVar = zzmu.getVideoController();
                    }
                }
            }
            if (zzmmVar == null || (zzis = zzmmVar.zzis()) == null) {
                return;
            }
            zzis.onVideoEnd();
        } catch (RemoteException e) {
            zzahw.zzc("Unable to call onVideoEnd()", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzvr
    public final void zzci() {
        if (this.zzanm.zzaue == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzanm.zzaue.zzcjg)) {
            super.zzci();
        } else {
            zzby();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzvr
    public final void zzcn() {
        if (this.zzanm.zzaue == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzanm.zzaue.zzcjg)) {
            super.zzcn();
        } else {
            zzbx();
        }
    }

    @Override // com.google.android.gms.internal.zzpw
    public final void zzcu() {
        if (this.zzark != null) {
            this.zzark.destroy();
            this.zzark = null;
        }
    }

    @Override // com.google.android.gms.internal.zzpw
    public final boolean zzcv() {
        if (zzcx() != null) {
            return zzcx().zzcii;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.zzpw
    public final boolean zzcw() {
        if (zzcx() != null) {
            return zzcx().zzcij;
        }
        return false;
    }

    public final void zzd(@Nullable List<String> list) {
        com.google.android.gms.common.internal.zzbq.zzgn("setNativeTemplates must be called on the main UI thread.");
        this.zzanm.zzauy = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzdr() throws zzaop {
        synchronized (this.mLock) {
            zzahw.v("Initializing webview native ads utills");
            this.zzarm = new zzaar(this.zzanm.zzaiq, this, this.zzarn, this.zzanm.zzaty, this.zzanm.zzatz);
        }
    }

    @Nullable
    public final zzaan zzds() {
        zzaan zzaanVar;
        synchronized (this.mLock) {
            zzaanVar = this.zzarm;
        }
        return zzaanVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Future<zzpx> zzdt() {
        return this.zzarj;
    }

    public final void zzdu() {
        if (this.zzanm.zzaue == null || this.zzark == null) {
            this.zzany = true;
            zzahw.zzcz("Request to enable ActiveView before adState is available.");
        } else {
            zzbt.zzep().zzqa().zza(this.zzanm.zzaud, this.zzanm.zzaue, this.zzark.getView(), this.zzark);
            this.zzany = false;
        }
    }

    public final void zzdv() {
        this.zzany = false;
        if (this.zzanm.zzaue == null || this.zzark == null) {
            zzahw.zzcz("Request to enable ActiveView before adState is available.");
        } else {
            zzbt.zzep().zzqa().zzh(this.zzanm.zzaue);
        }
    }

    public final SimpleArrayMap<String, zzsb> zzdw() {
        com.google.android.gms.common.internal.zzbq.zzgn("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
        return this.zzanm.zzaup;
    }

    public final void zzdx() {
        if (this.zzark == null || this.zzark.zzth() == null || this.zzanm.zzauq == null || this.zzanm.zzauq.zzbzn == null) {
            return;
        }
        this.zzark.zzth().zzb(this.zzanm.zzauq.zzbzn);
    }

    public final void zze(zzaof zzaofVar) {
        this.zzark = zzaofVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public final void zzi(int i) {
        zzc(i, false);
    }

    public final void zzj(int i) {
        com.google.android.gms.common.internal.zzbq.zzgn("setMaxNumberOfAds must be called on the main UI thread.");
        this.zzarl = i;
    }

    @Override // com.google.android.gms.internal.zzpw
    @Nullable
    public final zzry zzs(String str) {
        com.google.android.gms.common.internal.zzbq.zzgn("getOnCustomClickListener must be called on the main UI thread.");
        if (this.zzanm.zzauo == null) {
            return null;
        }
        return this.zzanm.zzauo.get(str);
    }
}
