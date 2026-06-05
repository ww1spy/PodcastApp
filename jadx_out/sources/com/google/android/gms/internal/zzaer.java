package com.google.android.gms.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.common.internal.Hide;
import java.util.Arrays;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzaer extends com.google.android.gms.ads.internal.zzd implements zzafs {
    private static zzaer zzczu;
    private boolean zzaqf;
    private zzagt zzaqg;
    private boolean zzczv;
    private final zzaeo zzczw;

    public zzaer(Context context, com.google.android.gms.ads.internal.zzv zzvVar, zzko zzkoVar, zzwf zzwfVar, zzala zzalaVar) {
        super(context, zzkoVar, null, zzwfVar, zzalaVar, zzvVar);
        zzczu = this;
        this.zzaqg = new zzagt(context, null);
        this.zzczw = new zzaeo(this.zzanm, this.zzanu, this, this);
    }

    private static zzahe zzc(zzahe zzaheVar) {
        zzahw.v("Creating mediation ad response for non-mediated rewarded ad.");
        try {
            JSONObject zzb = zzads.zzb(zzaheVar.zzdcw);
            zzb.remove("impression_urls");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, zzaheVar.zzcvm.zzatx);
            return new zzahe(zzaheVar.zzcvm, zzaheVar.zzdcw, new zzvq(Arrays.asList(new zzvp(zzb.toString(), null, Arrays.asList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), jSONObject.toString(), null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList(), null, -1L)), ((Long) zzlc.zzio().zzd(zzoi.zzbrg)).longValue(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), false, "", -1L, 0, 1, null, 0, -1, -1L, false), zzaheVar.zzaud, zzaheVar.errorCode, zzaheVar.zzdcn, zzaheVar.zzdco, zzaheVar.zzdch, zzaheVar.zzdcu, null);
        } catch (JSONException e) {
            zzahw.zzb("Unable to generate ad state for non-mediated rewarded video.", e);
            return new zzahe(zzaheVar.zzcvm, zzaheVar.zzdcw, null, zzaheVar.zzaud, 0, zzaheVar.zzdcn, zzaheVar.zzdco, zzaheVar.zzdch, zzaheVar.zzdcu, null);
        }
    }

    public static zzaer zzou() {
        return zzczu;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void destroy() {
        this.zzczw.destroy();
    }

    public final boolean isLoaded() {
        com.google.android.gms.common.internal.zzbq.zzgn("isLoaded must be called on the main UI thread.");
        return this.zzanm.zzaub == null && this.zzanm.zzauc == null && this.zzanm.zzaue != null;
    }

    public final void onContextChanged(Context context) {
        this.zzczw.onContextChanged(context);
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoAdClosed() {
        if (com.google.android.gms.ads.internal.zzbt.zzfh().zzu(this.zzanm.zzaiq)) {
            this.zzaqg.zzw(false);
        }
        zzbt();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoAdLeftApplication() {
        zzbu();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoAdOpened() {
        if (com.google.android.gms.ads.internal.zzbt.zzfh().zzu(this.zzanm.zzaiq)) {
            this.zzaqg.zzw(true);
        }
        zza(this.zzanm.zzaue, false);
        zzbv();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoCompleted() {
        this.zzczw.zzot();
        zzca();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void onRewardedVideoStarted() {
        this.zzczw.zzos();
        zzbz();
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void pause() {
        this.zzczw.pause();
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void resume() {
        this.zzczw.resume();
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void setImmersiveMode(boolean z) {
        com.google.android.gms.common.internal.zzbq.zzgn("setImmersiveMode must be called on the main UI thread.");
        this.zzaqf = z;
    }

    public final void zza(zzafi zzafiVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("loadAd must be called on the main UI thread.");
        if (TextUtils.isEmpty(zzafiVar.zzatx)) {
            zzahw.zzcz("Invalid ad unit id. Aborting.");
            zzaij.zzdfn.post(new zzaes(this));
            return;
        }
        this.zzczv = false;
        this.zzanm.zzatx = zzafiVar.zzatx;
        this.zzaqg.setAdUnitId(zzafiVar.zzatx);
        super.zzb(zzafiVar.zzcrv);
    }

    @Override // com.google.android.gms.ads.internal.zza
    public final void zza(zzahe zzaheVar, zzov zzovVar) {
        if (zzaheVar.errorCode != -2) {
            zzaij.zzdfn.post(new zzaet(this, zzaheVar));
            return;
        }
        this.zzanm.zzauf = zzaheVar;
        if (zzaheVar.zzdcj == null) {
            this.zzanm.zzauf = zzc(zzaheVar);
        }
        this.zzczw.zzor();
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    public final boolean zza(zzahd zzahdVar, zzahd zzahdVar2) {
        return zzaeo.zza(zzahdVar, zzahdVar2);
    }

    @Override // com.google.android.gms.ads.internal.zzd
    protected final boolean zza(zzkk zzkkVar, zzahd zzahdVar, boolean z) {
        return false;
    }

    @Nullable
    public final zzafy zzbq(String str) {
        return this.zzczw.zzbq(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public final void zzbt() {
        this.zzanm.zzaue = null;
        super.zzbt();
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void zzc(@Nullable zzagd zzagdVar) {
        zzagd zzd = this.zzczw.zzd(zzagdVar);
        if (com.google.android.gms.ads.internal.zzbt.zzfh().zzu(this.zzanm.zzaiq) && zzd != null) {
            com.google.android.gms.ads.internal.zzbt.zzfh().zza(this.zzanm.zzaiq, com.google.android.gms.ads.internal.zzbt.zzfh().zzz(this.zzanm.zzaiq), this.zzanm.zzatx, zzd.type, zzd.zzdax);
        }
        zza(zzd);
    }

    @Override // com.google.android.gms.internal.zzafs
    public final void zzdn() {
        onAdClicked();
    }

    public final void zzov() {
        com.google.android.gms.common.internal.zzbq.zzgn("showAd must be called on the main UI thread.");
        if (isLoaded()) {
            this.zzczw.zzv(this.zzaqf);
        } else {
            zzahw.zzcz("The reward video has not loaded.");
        }
    }
}
