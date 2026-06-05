package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzpt;
import com.google.android.gms.internal.zzpu;
import com.google.android.gms.internal.zzpv;
import com.google.android.gms.internal.zzpw;
import com.google.android.gms.internal.zzro;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzvq;
import com.google.android.gms.internal.zzwf;
import com.google.android.gms.internal.zzwr;
import com.google.android.gms.internal.zzwu;
import java.util.List;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzq extends zzd implements zzpw {
    private boolean zzamp;
    private zzahd zzaoe;
    private boolean zzaof;

    public zzq(Context context, zzv zzvVar, zzko zzkoVar, String str, zzwf zzwfVar, zzala zzalaVar) {
        super(context, zzkoVar, str, zzwfVar, zzalaVar, zzvVar);
        this.zzaof = false;
    }

    private static zzahd zza(zzahe zzaheVar, int i) {
        return new zzahd(zzaheVar.zzcvm.zzcrv, null, zzaheVar.zzdcw.zzchw, i, zzaheVar.zzdcw.zzchx, zzaheVar.zzdcw.zzctq, zzaheVar.zzdcw.orientation, zzaheVar.zzdcw.zzcic, zzaheVar.zzcvm.zzcry, zzaheVar.zzdcw.zzcto, null, null, null, zzaheVar.zzdcj, null, zzaheVar.zzdcw.zzctp, zzaheVar.zzaud, zzaheVar.zzdcw.zzctn, zzaheVar.zzdcn, zzaheVar.zzdco, zzaheVar.zzdcw.zzctt, zzaheVar.zzdch, null, zzaheVar.zzdcw.zzcuc, zzaheVar.zzdcw.zzcud, zzaheVar.zzdcw.zzcud, zzaheVar.zzdcw.zzcuf, zzaheVar.zzdcw.zzcug, null, zzaheVar.zzdcw.zzchz, zzaheVar.zzdcw.zzcuj, zzaheVar.zzdcu, zzaheVar.zzdcw.zzaqw, zzaheVar.zzdcv);
    }

    private final boolean zzb(zzahd zzahdVar, zzahd zzahdVar2) {
        Handler handler;
        Runnable zztVar;
        zzd(null);
        if (this.zzanm.zzfo()) {
            try {
                zzwr zzmp = zzahdVar2.zzcjf != null ? zzahdVar2.zzcjf.zzmp() : null;
                zzwu zzmq = zzahdVar2.zzcjf != null ? zzahdVar2.zzcjf.zzmq() : null;
                zzro zzmu = zzahdVar2.zzcjf != null ? zzahdVar2.zzcjf.zzmu() : null;
                String zzc = zzc(zzahdVar2);
                if (zzmp != null && this.zzanm.zzaul != null) {
                    zzpk zzpkVar = new zzpk(zzmp.getHeadline(), zzmp.getImages(), zzmp.getBody(), zzmp.zzkc() != null ? zzmp.zzkc() : null, zzmp.getCallToAction(), zzmp.getStarRating(), zzmp.getStore(), zzmp.getPrice(), null, zzmp.getExtras(), zzmp.getVideoController(), zzmp.zzmx() != null ? (View) com.google.android.gms.dynamic.zzn.zzy(zzmp.zzmx()) : null, zzmp.zzkh(), zzc);
                    zzpkVar.zzb(new zzpu(this.zzanm.zzaiq, this, this.zzanm.zzaty, zzmp, zzpkVar));
                    handler = zzaij.zzdfn;
                    zztVar = new zzs(this, zzpkVar);
                } else {
                    if (zzmq == null || this.zzanm.zzaum == null) {
                        if (zzmu != null && this.zzanm.zzaup != null && this.zzanm.zzaup.get(zzmu.getCustomTemplateId()) != null) {
                            zzaij.zzdfn.post(new zzu(this, zzmu));
                            return super.zza(zzahdVar, zzahdVar2);
                        }
                        zzahw.zzcz("No matching mapper/listener for retrieved native ad template.");
                        zzi(0);
                        return false;
                    }
                    zzpm zzpmVar = new zzpm(zzmq.getHeadline(), zzmq.getImages(), zzmq.getBody(), zzmq.zzkj() != null ? zzmq.zzkj() : null, zzmq.getCallToAction(), zzmq.getAdvertiser(), null, zzmq.getExtras(), zzmq.getVideoController(), zzmq.zzmx() != null ? (View) com.google.android.gms.dynamic.zzn.zzy(zzmq.zzmx()) : null, zzmq.zzkh(), zzc);
                    zzpmVar.zzb(new zzpu(this.zzanm.zzaiq, this, this.zzanm.zzaty, zzmq, zzpmVar));
                    handler = zzaij.zzdfn;
                    zztVar = new zzt(this, zzpmVar);
                }
                handler.post(zztVar);
                return super.zza(zzahdVar, zzahdVar2);
            } catch (RemoteException e) {
                zzahw.zzc("Failed to get native ad mapper", e);
            }
        } else {
            zzahw.zzcz("Native ad does not have custom rendering mode.");
        }
        zzi(0);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zzc(zzahd zzahdVar, zzahd zzahdVar2) {
        View zze = zzar.zze(zzahdVar2);
        if (zze == null) {
            return false;
        }
        View nextView = this.zzanm.zzaua.getNextView();
        if (nextView != 0) {
            if (nextView instanceof zzaof) {
                ((zzaof) nextView).destroy();
            }
            this.zzanm.zzaua.removeView(nextView);
        }
        if (!zzar.zzf(zzahdVar2)) {
            try {
                zzg(zze);
            } catch (Throwable th) {
                zzbt.zzep().zza(th, "AdLoaderManager.swapBannerViews");
                zzahw.zzc("Could not add mediation view to view hierarchy.", th);
                return false;
            }
        }
        if (this.zzanm.zzaua.getChildCount() > 1) {
            this.zzanm.zzaua.showNext();
        }
        if (zzahdVar != null) {
            View nextView2 = this.zzanm.zzaua.getNextView();
            if (nextView2 != null) {
                this.zzanm.zzaua.removeView(nextView2);
            }
            this.zzanm.zzfn();
        }
        this.zzanm.zzaua.setMinimumWidth(zzbq().widthPixels);
        this.zzanm.zzaua.setMinimumHeight(zzbq().heightPixels);
        this.zzanm.zzaua.requestLayout();
        this.zzanm.zzaua.setVisibility(0);
        return true;
    }

    @Nullable
    private final zzvq zzcx() {
        if (this.zzanm.zzaue == null || !this.zzanm.zzaue.zzcto) {
            return null;
        }
        return this.zzanm.zzaue.zzdcj;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    @Nullable
    public final zzmm getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void pause() {
        if (!this.zzaof) {
            throw new IllegalStateException("Native Ad does not support pause().");
        }
        super.pause();
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void resume() {
        if (!this.zzaof) {
            throw new IllegalStateException("Native Ad does not support resume().");
        }
        super.resume();
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void setManualImpressionsEnabled(boolean z) {
        com.google.android.gms.common.internal.zzbq.zzgn("setManualImpressionsEnabled must be called from the main thread.");
        this.zzamp = z;
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzlt
    public final void showInterstitial() {
        throw new IllegalStateException("Interstitial is not supported by AdLoaderManager.");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0026  */
    @Override // com.google.android.gms.ads.internal.zza
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.zzahe r11, com.google.android.gms.internal.zzov r12) {
        /*
            r10 = this;
            r0 = 0
            r10.zzaoe = r0
            int r0 = r11.errorCode
            r1 = 0
            r2 = -2
            if (r0 == r2) goto L12
            int r0 = r11.errorCode
            com.google.android.gms.internal.zzahd r0 = zza(r11, r0)
        Lf:
            r10.zzaoe = r0
            goto L22
        L12:
            com.google.android.gms.internal.zzacj r0 = r11.zzdcw
            boolean r0 = r0.zzcto
            if (r0 != 0) goto L22
            java.lang.String r0 = "partialAdState is not mediation"
            com.google.android.gms.internal.zzahw.zzcz(r0)
            com.google.android.gms.internal.zzahd r0 = zza(r11, r1)
            goto Lf
        L22:
            com.google.android.gms.internal.zzahd r0 = r10.zzaoe
            if (r0 == 0) goto L31
            android.os.Handler r11 = com.google.android.gms.internal.zzaij.zzdfn
            com.google.android.gms.ads.internal.zzr r12 = new com.google.android.gms.ads.internal.zzr
            r12.<init>(r10)
            r11.post(r12)
            return
        L31:
            com.google.android.gms.internal.zzko r0 = r11.zzaud
            if (r0 == 0) goto L3b
            com.google.android.gms.ads.internal.zzbu r0 = r10.zzanm
            com.google.android.gms.internal.zzko r2 = r11.zzaud
            r0.zzaud = r2
        L3b:
            com.google.android.gms.ads.internal.zzbu r0 = r10.zzanm
            r0.zzavb = r1
            com.google.android.gms.ads.internal.zzbu r0 = r10.zzanm
            com.google.android.gms.ads.internal.zzbt.zzek()
            com.google.android.gms.ads.internal.zzbu r1 = r10.zzanm
            android.content.Context r2 = r1.zzaiq
            com.google.android.gms.ads.internal.zzbu r1 = r10.zzanm
            com.google.android.gms.internal.zzcv r5 = r1.zzaty
            r6 = 0
            com.google.android.gms.internal.zzwf r7 = r10.zzanu
            r3 = r10
            r4 = r11
            r8 = r10
            r9 = r12
            com.google.android.gms.internal.zzajb r11 = com.google.android.gms.internal.zzzm.zza(r2, r3, r4, r5, r6, r7, r8, r9)
            r0.zzauc = r11
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzq.zza(com.google.android.gms.internal.zzahe, com.google.android.gms.internal.zzov):void");
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void zza(zzpb zzpbVar) {
        throw new IllegalStateException("CustomRendering is not supported by AdLoaderManager.");
    }

    @Override // com.google.android.gms.internal.zzpw
    public final void zza(zzpt zzptVar) {
        zzahw.zzcz("Unexpected call to AdLoaderManager method");
    }

    @Override // com.google.android.gms.internal.zzpw
    public final void zza(zzpv zzpvVar) {
        zzahw.zzcz("Unexpected call to AdLoaderManager method");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006f  */
    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(@android.support.annotation.Nullable com.google.android.gms.internal.zzahd r5, com.google.android.gms.internal.zzahd r6) {
        /*
            r4 = this;
            com.google.android.gms.ads.internal.zzbu r0 = r4.zzanm
            boolean r0 = r0.zzfo()
            if (r0 != 0) goto L10
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "AdLoader API does not support custom rendering."
            r5.<init>(r6)
            throw r5
        L10:
            boolean r0 = r6.zzcto
            r1 = 0
            if (r0 != 0) goto L1e
            r4.zzi(r1)
            java.lang.String r5 = "newState is not mediation."
        L1a:
            com.google.android.gms.internal.zzahw.zzcz(r5)
            return r1
        L1e:
            com.google.android.gms.internal.zzvp r0 = r6.zzcje
            r2 = 1
            if (r0 == 0) goto L72
            com.google.android.gms.internal.zzvp r0 = r6.zzcje
            boolean r0 = r0.zzmg()
            if (r0 == 0) goto L72
            com.google.android.gms.ads.internal.zzbu r0 = r4.zzanm
            boolean r0 = r0.zzfo()
            if (r0 == 0) goto L46
            com.google.android.gms.ads.internal.zzbu r0 = r4.zzanm
            com.google.android.gms.ads.internal.zzbv r0 = r0.zzaua
            if (r0 == 0) goto L46
            com.google.android.gms.ads.internal.zzbu r0 = r4.zzanm
            com.google.android.gms.ads.internal.zzbv r0 = r0.zzaua
            com.google.android.gms.internal.zzajc r0 = r0.zzfr()
            java.lang.String r3 = r6.zzctt
            r0.zzcr(r3)
        L46:
            boolean r0 = super.zza(r5, r6)
            if (r0 != 0) goto L4e
        L4c:
            r5 = r1
            goto L6c
        L4e:
            com.google.android.gms.ads.internal.zzbu r0 = r4.zzanm
            boolean r0 = r0.zzfo()
            if (r0 == 0) goto L60
            boolean r5 = r4.zzc(r5, r6)
            if (r5 != 0) goto L60
            r4.zzi(r1)
            goto L4c
        L60:
            com.google.android.gms.ads.internal.zzbu r5 = r4.zzanm
            boolean r5 = r5.zzfp()
            if (r5 != 0) goto L6b
            super.zza(r6, r1)
        L6b:
            r5 = r2
        L6c:
            if (r5 != 0) goto L6f
            return r1
        L6f:
            r4.zzaof = r2
            goto L85
        L72:
            com.google.android.gms.internal.zzvp r0 = r6.zzcje
            if (r0 == 0) goto L9b
            com.google.android.gms.internal.zzvp r0 = r6.zzcje
            boolean r0 = r0.zzmh()
            if (r0 == 0) goto L9b
            boolean r5 = r4.zzb(r5, r6)
            if (r5 != 0) goto L85
            return r1
        L85:
            java.util.ArrayList r5 = new java.util.ArrayList
            java.lang.Integer[] r6 = new java.lang.Integer[r2]
            r0 = 2
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r6[r1] = r0
            java.util.List r6 = java.util.Arrays.asList(r6)
            r5.<init>(r6)
            r4.zze(r5)
            return r2
        L9b:
            r4.zzi(r1)
            java.lang.String r5 = "Response is neither banner nor native."
            goto L1a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzq.zza(com.google.android.gms.internal.zzahd, com.google.android.gms.internal.zzahd):boolean");
    }

    @Override // com.google.android.gms.ads.internal.zzd
    protected final boolean zza(zzkk zzkkVar, zzahd zzahdVar, boolean z) {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final boolean zzb(zzkk zzkkVar) {
        zzq zzqVar = this;
        zzkk zzkkVar2 = zzkkVar;
        if (zzqVar.zzanm.zzauu != null && zzqVar.zzanm.zzauu.size() == 1 && zzqVar.zzanm.zzauu.get(0).intValue() == 2) {
            zzahw.e("Requesting only banner Ad from AdLoader or calling loadAd on returned banner is not yet supported");
            zzqVar.zzi(0);
            return false;
        }
        if (zzqVar.zzanm.zzaut == null) {
            return super.zzb(zzkkVar);
        }
        if (zzkkVar2.zzbha != zzqVar.zzamp) {
            zzkkVar2 = new zzkk(zzkkVar2.versionCode, zzkkVar2.zzbgv, zzkkVar2.extras, zzkkVar2.zzbgw, zzkkVar2.zzbgx, zzkkVar2.zzbgy, zzkkVar2.zzbgz, zzkkVar2.zzbha || zzqVar.zzamp, zzkkVar2.zzbhb, zzkkVar2.zzbhc, zzkkVar2.zzbhd, zzkkVar2.zzbhe, zzkkVar2.zzbhf, zzkkVar2.zzbhg, zzkkVar2.zzbhh, zzkkVar2.zzbhi, zzkkVar2.zzbhj, zzkkVar2.zzbhk);
            zzqVar = this;
        }
        return super.zzb(zzkkVar2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public final void zzbw() {
        super.zzbw();
        zzahd zzahdVar = this.zzanm.zzaue;
        if (zzahdVar == null || zzahdVar.zzcje == null || !zzahdVar.zzcje.zzmg() || this.zzanm.zzaut == null) {
            return;
        }
        try {
            this.zzanm.zzaut.zza(this, com.google.android.gms.dynamic.zzn.zzz(this.zzanm.zzaiq));
        } catch (RemoteException e) {
            zzahw.zzc("Could not call PublisherAdViewLoadedListener.onPublisherAdViewLoaded().", e);
        }
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzvr
    public final void zzci() {
        if (this.zzanm.zzaue == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzanm.zzaue.zzcjg) || this.zzanm.zzaue.zzcje == null || !this.zzanm.zzaue.zzcje.zzmh()) {
            super.zzci();
        } else {
            zzby();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzvr
    public final void zzcn() {
        if (this.zzanm.zzaue == null || !"com.google.ads.mediation.admob.AdMobAdapter".equals(this.zzanm.zzaue.zzcjg) || this.zzanm.zzaue.zzcje == null || !this.zzanm.zzaue.zzcje.zzmh()) {
            super.zzcn();
        } else {
            zzbx();
        }
    }

    @Override // com.google.android.gms.internal.zzpw
    public final void zzcu() {
        zzahw.zzcz("Unexpected call to AdLoaderManager method");
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

    public final void zze(List<Integer> list) {
        com.google.android.gms.common.internal.zzbq.zzgn("setAllowedAdTypes must be called on the main UI thread.");
        this.zzanm.zzauu = list;
    }

    @Override // com.google.android.gms.internal.zzpw
    @Nullable
    public final zzry zzs(String str) {
        com.google.android.gms.common.internal.zzbq.zzgn("getOnCustomClickListener must be called on the main UI thread.");
        return this.zzanm.zzauo.get(str);
    }
}
