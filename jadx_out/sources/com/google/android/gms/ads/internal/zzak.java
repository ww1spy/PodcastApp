package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.Window;
import com.google.ads.mediation.AbstractAdViewAdapter;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzacj;
import com.google.android.gms.internal.zzads;
import com.google.android.gms.internal.zzaeo;
import com.google.android.gms.internal.zzagd;
import com.google.android.gms.internal.zzagq;
import com.google.android.gms.internal.zzagt;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzaip;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzaop;
import com.google.android.gms.internal.zzapu;
import com.google.android.gms.internal.zzapx;
import com.google.android.gms.internal.zzaqa;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzvp;
import com.google.android.gms.internal.zzvq;
import com.google.android.gms.internal.zzwf;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzak extends zzi implements com.google.android.gms.ads.internal.gmsg.zzag, com.google.android.gms.ads.internal.gmsg.zzx {
    private transient boolean zzaqb;
    private int zzaqc;
    private boolean zzaqd;
    private float zzaqe;
    private boolean zzaqf;
    private zzagt zzaqg;
    private String zzaqh;
    private final String zzaqi;
    private final zzaeo zzaqj;

    public zzak(Context context, zzko zzkoVar, String str, zzwf zzwfVar, zzala zzalaVar, zzv zzvVar) {
        super(context, zzkoVar, str, zzwfVar, zzalaVar, zzvVar);
        this.zzaqc = -1;
        boolean z = false;
        this.zzaqb = false;
        if (zzkoVar != null && "reward_mb".equals(zzkoVar.zzbia)) {
            z = true;
        }
        this.zzaqi = z ? "/Rewarded" : "/Interstitial";
        this.zzaqj = z ? new zzaeo(this.zzanm, this.zzanu, new zzam(this), this) : null;
    }

    private final void zza(Bundle bundle) {
        zzbt.zzel().zzb(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, "gmob-apps", bundle, false);
    }

    private static zzahe zzb(zzahe zzaheVar) {
        try {
            String jSONObject = zzads.zzb(zzaheVar.zzdcw).toString();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, zzaheVar.zzcvm.zzatx);
            zzvp zzvpVar = new zzvp(jSONObject, null, Collections.singletonList("com.google.ads.mediation.admob.AdMobAdapter"), null, null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), jSONObject2.toString(), null, Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, null, null, null, Collections.emptyList(), null, -1L);
            zzacj zzacjVar = zzaheVar.zzdcw;
            zzvq zzvqVar = new zzvq(Collections.singletonList(zzvpVar), ((Long) zzlc.zzio().zzd(zzoi.zzbrg)).longValue(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), zzacjVar.zzchz, zzacjVar.zzcia, "", -1L, 0, 1, null, 0, -1, -1L, false);
            return new zzahe(zzaheVar.zzcvm, new zzacj(zzaheVar.zzcvm, zzacjVar.zzcno, zzacjVar.body, Collections.emptyList(), Collections.emptyList(), zzacjVar.zzctn, true, zzacjVar.zzctp, Collections.emptyList(), zzacjVar.zzcic, zzacjVar.orientation, zzacjVar.zzctr, zzacjVar.zzcts, zzacjVar.zzctt, zzacjVar.zzctu, zzacjVar.zzctv, null, zzacjVar.zzctx, zzacjVar.zzbid, zzacjVar.zzcsd, zzacjVar.zzcty, zzacjVar.zzctz, zzacjVar.zzbdl, zzacjVar.zzbie, zzacjVar.zzbif, null, Collections.emptyList(), Collections.emptyList(), zzacjVar.zzcuf, zzacjVar.zzcug, zzacjVar.zzcsr, zzacjVar.zzcss, zzacjVar.zzchz, zzacjVar.zzcia, zzacjVar.zzcuh, null, zzacjVar.zzcuj, zzacjVar.zzcuk, zzacjVar.zzctd, zzacjVar.zzaqw, 0), zzvqVar, zzaheVar.zzaud, zzaheVar.errorCode, zzaheVar.zzdcn, zzaheVar.zzdco, null, zzaheVar.zzdcu, null);
        } catch (JSONException e) {
            zzahw.zzb("Unable to generate ad state for an interstitial ad with pooling.", e);
            return zzaheVar;
        }
    }

    private final boolean zzd(boolean z) {
        return this.zzaqj != null && z;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void setImmersiveMode(boolean z) {
        com.google.android.gms.common.internal.zzbq.zzgn("setImmersiveMode must be called on the main UI thread.");
        this.zzaqf = z;
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzlt
    public final void showInterstitial() {
        Bitmap bitmap;
        com.google.android.gms.common.internal.zzbq.zzgn("showInterstitial must be called on the main UI thread.");
        if (zzd(this.zzanm.zzaue != null && this.zzanm.zzaue.zzcto)) {
            this.zzaqj.zzv(this.zzaqf);
            return;
        }
        if (zzbt.zzfh().zzt(this.zzanm.zzaiq)) {
            this.zzaqh = zzbt.zzfh().zzw(this.zzanm.zzaiq);
            String valueOf = String.valueOf(this.zzaqh);
            String valueOf2 = String.valueOf(this.zzaqi);
            this.zzaqh = valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
        }
        if (this.zzanm.zzaue == null) {
            zzahw.zzcz("The interstitial has not loaded.");
            return;
        }
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbqq)).booleanValue()) {
            String packageName = (this.zzanm.zzaiq.getApplicationContext() != null ? this.zzanm.zzaiq.getApplicationContext() : this.zzanm.zzaiq).getPackageName();
            if (!this.zzaqb) {
                zzahw.zzcz("It is not recommended to show an interstitial before onAdLoaded completes.");
                Bundle bundle = new Bundle();
                bundle.putString("appid", packageName);
                bundle.putString("action", "show_interstitial_before_load_finish");
                zza(bundle);
            }
            zzbt.zzel();
            if (!zzaij.zzan(this.zzanm.zzaiq)) {
                zzahw.zzcz("It is not recommended to show an interstitial when app is not in foreground.");
                Bundle bundle2 = new Bundle();
                bundle2.putString("appid", packageName);
                bundle2.putString("action", "show_interstitial_app_not_in_foreground");
                zza(bundle2);
            }
        }
        if (this.zzanm.zzfp()) {
            return;
        }
        if (this.zzanm.zzaue.zzcto && this.zzanm.zzaue.zzcjf != null) {
            try {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbpl)).booleanValue()) {
                    this.zzanm.zzaue.zzcjf.setImmersiveMode(this.zzaqf);
                }
                this.zzanm.zzaue.zzcjf.showInterstitial();
                return;
            } catch (RemoteException e) {
                zzahw.zzc("Could not show interstitial.", e);
                zzdk();
                return;
            }
        }
        if (this.zzanm.zzaue.zzcnm == null) {
            zzahw.zzcz("The interstitial failed to load.");
            return;
        }
        if (this.zzanm.zzaue.zzcnm.zzud()) {
            zzahw.zzcz("The interstitial is already showing.");
            return;
        }
        this.zzanm.zzaue.zzcnm.zzah(true);
        this.zzanm.zzi(this.zzanm.zzaue.zzcnm.getView());
        if (this.zzanm.zzaue.zzdch != null) {
            this.zzano.zza(this.zzanm.zzaud, this.zzanm.zzaue);
        }
        final zzahd zzahdVar = this.zzanm.zzaue;
        if (zzahdVar.zzfz()) {
            new zzgr(this.zzanm.zzaiq, zzahdVar.zzcnm.getView()).zza(zzahdVar.zzcnm);
        } else {
            zzahdVar.zzcnm.zzua().zza(new zzapx(this, zzahdVar) { // from class: com.google.android.gms.ads.internal.zzal
                private final zzahd zzaov;
                private final zzak zzaqk;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzaqk = this;
                    this.zzaov = zzahdVar;
                }

                @Override // com.google.android.gms.internal.zzapx
                public final void zzdc() {
                    zzak zzakVar = this.zzaqk;
                    zzahd zzahdVar2 = this.zzaov;
                    new zzgr(zzakVar.zzanm.zzaiq, zzahdVar2.zzcnm.getView()).zza(zzahdVar2.zzcnm);
                }
            });
        }
        if (this.zzanm.zzaqp) {
            zzbt.zzel();
            bitmap = zzaij.zzao(this.zzanm.zzaiq);
        } else {
            bitmap = null;
        }
        this.zzaqc = zzbt.zzfe().zzb(bitmap);
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbrz)).booleanValue() && bitmap != null) {
            new zzan(this, this.zzaqc).zzqj();
            return;
        }
        zzap zzapVar = new zzap(this.zzanm.zzaqp, zzdj(), false, 0.0f, -1, this.zzaqf, this.zzanm.zzaue.zzaqw);
        int requestedOrientation = this.zzanm.zzaue.zzcnm.getRequestedOrientation();
        if (requestedOrientation == -1) {
            requestedOrientation = this.zzanm.zzaue.orientation;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = new AdOverlayInfoParcel(this, this, this, this.zzanm.zzaue.zzcnm, requestedOrientation, this.zzanm.zzatz, this.zzanm.zzaue.zzctt, zzapVar);
        zzbt.zzej();
        com.google.android.gms.ads.internal.overlay.zzl.zza(this.zzanm.zzaiq, adOverlayInfoParcel, true);
    }

    @Override // com.google.android.gms.ads.internal.zzi
    protected final zzaof zza(zzahe zzaheVar, @Nullable zzw zzwVar, @Nullable zzagq zzagqVar) throws zzaop {
        zzaof zza = zzbt.zzem().zza(this.zzanm.zzaiq, zzaqa.zzc(this.zzanm.zzaud), this.zzanm.zzaud.zzbia, false, false, this.zzanm.zzaty, this.zzanm.zzatz, this.zzanh, this, this.zzanp, zzaheVar.zzdcu);
        zza.zzua().zza(this, null, this, this, ((Boolean) zzlc.zzio().zzd(zzoi.zzbob)).booleanValue(), this, zzwVar, null, zzagqVar);
        zza(zza);
        zza.zzde(zzaheVar.zzcvm.zzcsi);
        zza.zzua().zza("/reward", new com.google.android.gms.ads.internal.gmsg.zzaf(this));
        return zza;
    }

    @Override // com.google.android.gms.ads.internal.zzi, com.google.android.gms.ads.internal.zza
    public final void zza(zzahe zzaheVar, zzov zzovVar) {
        if (zzaheVar.errorCode != -2) {
            super.zza(zzaheVar, zzovVar);
            return;
        }
        if (zzd(zzaheVar.zzdcj != null)) {
            this.zzaqj.zzor();
            return;
        }
        if (!((Boolean) zzlc.zzio().zzd(zzoi.zzbpr)).booleanValue()) {
            super.zza(zzaheVar, zzovVar);
            return;
        }
        boolean z = !zzaheVar.zzdcw.zzcto;
        if (zza(zzaheVar.zzcvm.zzcrv) && z) {
            this.zzanm.zzauf = zzb(zzaheVar);
        }
        super.zza(this.zzanm.zzauf, zzovVar);
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzx
    public final void zza(boolean z, float f) {
        this.zzaqd = z;
        this.zzaqe = f;
    }

    @Override // com.google.android.gms.ads.internal.zzi, com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    public final boolean zza(@Nullable zzahd zzahdVar, zzahd zzahdVar2) {
        if (zzd(zzahdVar2.zzcto)) {
            return zzaeo.zza(zzahdVar, zzahdVar2);
        }
        if (!super.zza(zzahdVar, zzahdVar2)) {
            return false;
        }
        if (this.zzanm.zzfo() || this.zzanm.zzava == null || zzahdVar2.zzdch == null) {
            return true;
        }
        this.zzano.zza(this.zzanm.zzaud, zzahdVar2, this.zzanm.zzava);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.zzd
    protected final boolean zza(zzkk zzkkVar, zzahd zzahdVar, boolean z) {
        if (this.zzanm.zzfo() && zzahdVar.zzcnm != null) {
            zzbt.zzen();
            zzaip.zzh(zzahdVar.zzcnm);
        }
        return this.zzanl.zzea();
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    public final boolean zza(zzkk zzkkVar, zzov zzovVar) {
        if (this.zzanm.zzaue != null) {
            zzahw.zzcz("An interstitial is already loading. Aborting.");
            return false;
        }
        if (this.zzaqg == null && zza(zzkkVar) && zzbt.zzfh().zzt(this.zzanm.zzaiq) && !TextUtils.isEmpty(this.zzanm.zzatx)) {
            this.zzaqg = new zzagt(this.zzanm.zzaiq, this.zzanm.zzatx);
        }
        return super.zza(zzkkVar, zzovVar);
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzag
    public final void zzb(zzagd zzagdVar) {
        if (zzd(this.zzanm.zzaue != null && this.zzanm.zzaue.zzcto)) {
            zza(this.zzaqj.zzd(zzagdVar));
            return;
        }
        if (this.zzanm.zzaue != null) {
            if (this.zzanm.zzaue.zzcue != null) {
                zzbt.zzel();
                zzaij.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, this.zzanm.zzaue.zzcue);
            }
            if (this.zzanm.zzaue.zzcuc != null) {
                zzagdVar = this.zzanm.zzaue.zzcuc;
            }
        }
        zza(zzagdVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public final void zzbt() {
        zzdk();
        super.zzbt();
    }

    @Override // com.google.android.gms.ads.internal.zzi, com.google.android.gms.ads.internal.zza
    protected final void zzbw() {
        super.zzbw();
        this.zzaqb = true;
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.overlay.zzn
    public final void zzcf() {
        super.zzcf();
        this.zzano.zzh(this.zzanm.zzaue);
        if (this.zzaqg != null) {
            this.zzaqg.zzw(false);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.overlay.zzn
    public final void zzcg() {
        zzapu zzua;
        recordImpression();
        super.zzcg();
        if (this.zzanm.zzaue != null && this.zzanm.zzaue.zzcnm != null && (zzua = this.zzanm.zzaue.zzcnm.zzua()) != null) {
            zzua.zzut();
        }
        if (zzbt.zzfh().zzt(this.zzanm.zzaiq) && this.zzanm.zzaue != null && this.zzanm.zzaue.zzcnm != null) {
            zzbt.zzfh().zzd(this.zzanm.zzaue.zzcnm.getContext(), this.zzaqh);
        }
        if (this.zzaqg != null) {
            this.zzaqg.zzw(true);
        }
    }

    @Override // com.google.android.gms.internal.zzyo
    public final void zzda() {
        com.google.android.gms.ads.internal.overlay.zzd zztw = this.zzanm.zzaue.zzcnm.zztw();
        if (zztw != null) {
            zztw.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzdj() {
        Window window;
        if (!(this.zzanm.zzaiq instanceof Activity) || (window = ((Activity) this.zzanm.zzaiq).getWindow()) == null || window.getDecorView() == null) {
            return false;
        }
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        window.getDecorView().getGlobalVisibleRect(rect, null);
        window.getDecorView().getWindowVisibleDisplayFrame(rect2);
        return (rect.bottom == 0 || rect2.bottom == 0 || rect.top != rect2.top) ? false : true;
    }

    public final void zzdk() {
        zzbt.zzfe().zzb(Integer.valueOf(this.zzaqc));
        if (this.zzanm.zzfo()) {
            this.zzanm.zzfm();
            this.zzanm.zzaue = null;
            this.zzanm.zzaqp = false;
            this.zzaqb = false;
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzag
    public final void zzdl() {
        if (zzd(this.zzanm.zzaue != null && this.zzanm.zzaue.zzcto)) {
            this.zzaqj.zzos();
            zzbz();
            return;
        }
        if (this.zzanm.zzaue != null && this.zzanm.zzaue.zzdcm != null) {
            zzbt.zzel();
            zzaij.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, this.zzanm.zzaue.zzdcm);
        }
        zzbz();
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzag
    public final void zzdm() {
        if (zzd(this.zzanm.zzaue != null && this.zzanm.zzaue.zzcto)) {
            this.zzaqj.zzot();
        }
        zzca();
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzx
    public final void zze(boolean z) {
        this.zzanm.zzaqp = z;
    }
}
