package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzagq;
import com.google.android.gms.internal.zzagt;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzaop;
import com.google.android.gms.internal.zzapy;
import com.google.android.gms.internal.zzaqa;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zzwf;
import com.google.android.gms.internal.zzwr;
import com.google.android.gms.internal.zzwu;
import java.lang.ref.WeakReference;
import java.util.List;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzx extends zzi implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    private boolean zzamp;
    private WeakReference<Object> zzaor;

    public zzx(Context context, zzko zzkoVar, String str, zzwf zzwfVar, zzala zzalaVar, zzv zzvVar) {
        super(context, zzkoVar, str, zzwfVar, zzalaVar, zzvVar);
        this.zzaor = new WeakReference<>(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean zzd(@Nullable zzahd zzahdVar, zzahd zzahdVar2) {
        if (zzahdVar2.zzcto) {
            View zze = zzar.zze(zzahdVar2);
            if (zze == null) {
                zzahw.zzcz("Could not get mediation view");
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
                    if (zzbt.zzfh().zzr(this.zzanm.zzaiq)) {
                        new zzgr(this.zzanm.zzaiq, zze).zza(new zzagt(this.zzanm.zzaiq, this.zzanm.zzatx));
                    }
                    if (zzahdVar2.zzdcl != null) {
                        this.zzanm.zzaua.setMinimumWidth(zzahdVar2.zzdcl.widthPixels);
                        this.zzanm.zzaua.setMinimumHeight(zzahdVar2.zzdcl.heightPixels);
                    }
                    zzg(zze);
                } catch (Exception e) {
                    zzbt.zzep().zza(e, "BannerAdManager.swapViews");
                    zzahw.zzc("Could not add mediation view to view hierarchy.", e);
                    return false;
                }
            }
        } else if (zzahdVar2.zzdcl != null && zzahdVar2.zzcnm != null) {
            zzahdVar2.zzcnm.zza(zzaqa.zzc(zzahdVar2.zzdcl));
            this.zzanm.zzaua.removeAllViews();
            this.zzanm.zzaua.setMinimumWidth(zzahdVar2.zzdcl.widthPixels);
            this.zzanm.zzaua.setMinimumHeight(zzahdVar2.zzdcl.heightPixels);
            zzg(zzahdVar2.zzcnm.getView());
        }
        if (this.zzanm.zzaua.getChildCount() > 1) {
            this.zzanm.zzaua.showNext();
        }
        if (zzahdVar != null) {
            View nextView2 = this.zzanm.zzaua.getNextView();
            if (nextView2 instanceof zzaof) {
                ((zzaof) nextView2).destroy();
            } else if (nextView2 != 0) {
                this.zzanm.zzaua.removeView(nextView2);
            }
            this.zzanm.zzfn();
        }
        this.zzanm.zzaua.setVisibility(0);
        return true;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    @Nullable
    public final zzmm getVideoController() {
        com.google.android.gms.common.internal.zzbq.zzgn("getVideoController must be called from the main thread.");
        if (this.zzanm.zzaue == null || this.zzanm.zzaue.zzcnm == null) {
            return null;
        }
        return this.zzanm.zzaue.zzcnm.zzth();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzd(this.zzanm.zzaue);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzd(this.zzanm.zzaue);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void setManualImpressionsEnabled(boolean z) {
        com.google.android.gms.common.internal.zzbq.zzgn("setManualImpressionsEnabled must be called from the main thread.");
        this.zzamp = z;
    }

    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.internal.zzlt
    public final void showInterstitial() {
        throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zzi
    public final zzaof zza(zzahe zzaheVar, @Nullable zzw zzwVar, @Nullable zzagq zzagqVar) throws zzaop {
        AdSize zzic;
        zzko zzkoVar;
        if (this.zzanm.zzaud.zzbic == null && this.zzanm.zzaud.zzbie) {
            zzbu zzbuVar = this.zzanm;
            if (zzaheVar.zzdcw.zzbie) {
                zzkoVar = this.zzanm.zzaud;
            } else {
                String str = zzaheVar.zzdcw.zzctr;
                if (str != null) {
                    String[] split = str.split("[xX]");
                    split[0] = split[0].trim();
                    split[1] = split[1].trim();
                    zzic = new AdSize(Integer.parseInt(split[0]), Integer.parseInt(split[1]));
                } else {
                    zzic = this.zzanm.zzaud.zzic();
                }
                zzkoVar = new zzko(this.zzanm.zzaiq, zzic);
            }
            zzbuVar.zzaud = zzkoVar;
        }
        return super.zza(zzaheVar, zzwVar, zzagqVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zzd
    public final void zza(@Nullable zzahd zzahdVar, boolean z) {
        super.zza(zzahdVar, z);
        if (zzar.zzf(zzahdVar)) {
            zzab zzabVar = new zzab(this);
            if (zzahdVar == null || !zzar.zzf(zzahdVar)) {
                return;
            }
            zzaof zzaofVar = zzahdVar.zzcnm;
            View view = zzaofVar != null ? zzaofVar.getView() : null;
            if (view == null) {
                zzahw.zzcz("AdWebView is null");
                return;
            }
            try {
                List<String> list = zzahdVar.zzcje != null ? zzahdVar.zzcje.zzchr : null;
                if (list != null && !list.isEmpty()) {
                    zzwr zzmp = zzahdVar.zzcjf != null ? zzahdVar.zzcjf.zzmp() : null;
                    zzwu zzmq = zzahdVar.zzcjf != null ? zzahdVar.zzcjf.zzmq() : null;
                    if (list.contains("2") && zzmp != null) {
                        zzmp.zzi(com.google.android.gms.dynamic.zzn.zzz(view));
                        if (!zzmp.getOverrideImpressionRecording()) {
                            zzmp.recordImpression();
                        }
                        zzaofVar.zzua().zza("/nativeExpressViewClicked", zzar.zza(zzmp, (zzwu) null, zzabVar));
                        return;
                    }
                    if (!list.contains(NotificationPreferences.YES) || zzmq == null) {
                        zzahw.zzcz("No matching template id and mapper");
                        return;
                    }
                    zzmq.zzi(com.google.android.gms.dynamic.zzn.zzz(view));
                    if (!zzmq.getOverrideImpressionRecording()) {
                        zzmq.recordImpression();
                    }
                    zzaofVar.zzua().zza("/nativeExpressViewClicked", zzar.zza((zzwr) null, zzmq, zzabVar));
                    return;
                }
                zzahw.zzcz("No template ids present in mediation response");
            } catch (RemoteException e) {
                zzahw.zzc("Error occurred while recording impression and registering for clicks", e);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x0079, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.internal.zzlc.zzio().zzd(com.google.android.gms.internal.zzoi.zzbsh)).booleanValue() != false) goto L28;
     */
    @Override // com.google.android.gms.ads.internal.zzi, com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(@android.support.annotation.Nullable com.google.android.gms.internal.zzahd r5, final com.google.android.gms.internal.zzahd r6) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzx.zza(com.google.android.gms.internal.zzahd, com.google.android.gms.internal.zzahd):boolean");
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final boolean zzb(zzkk zzkkVar) {
        zzx zzxVar = this;
        zzkk zzkkVar2 = zzkkVar;
        if (zzkkVar2.zzbha != zzxVar.zzamp) {
            zzkkVar2 = new zzkk(zzkkVar2.versionCode, zzkkVar2.zzbgv, zzkkVar2.extras, zzkkVar2.zzbgw, zzkkVar2.zzbgx, zzkkVar2.zzbgy, zzkkVar2.zzbgz, zzkkVar2.zzbha || zzxVar.zzamp, zzkkVar2.zzbhb, zzkkVar2.zzbhc, zzkkVar2.zzbhd, zzkkVar2.zzbhe, zzkkVar2.zzbhf, zzkkVar2.zzbhg, zzkkVar2.zzbhh, zzkkVar2.zzbhi, zzkkVar2.zzbhj, zzkkVar2.zzbhk);
            zzxVar = this;
        }
        return super.zzb(zzkkVar2);
    }

    @Override // com.google.android.gms.ads.internal.zzd
    protected final boolean zzce() {
        boolean z;
        zzbt.zzel();
        if (zzaij.zzd(this.zzanm.zzaiq, this.zzanm.zzaiq.getPackageName(), "android.permission.INTERNET")) {
            z = true;
        } else {
            zzlc.zzij().zza(this.zzanm.zzaua, this.zzanm.zzaud, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
            z = false;
        }
        zzbt.zzel();
        if (!zzaij.zzag(this.zzanm.zzaiq)) {
            zzlc.zzij().zza(this.zzanm.zzaua, this.zzanm.zzaud, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
            z = false;
        }
        if (!z && this.zzanm.zzaua != null) {
            this.zzanm.zzaua.setVisibility(0);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(@Nullable zzahd zzahdVar) {
        if (zzahdVar == null || zzahdVar.zzdci || this.zzanm.zzaua == null || !zzbt.zzel().zza(this.zzanm.zzaua, this.zzanm.zzaiq) || !this.zzanm.zzaua.getGlobalVisibleRect(new Rect(), null)) {
            return;
        }
        if (zzahdVar != null && zzahdVar.zzcnm != null && zzahdVar.zzcnm.zzua() != null) {
            zzahdVar.zzcnm.zzua().zza((zzapy) null);
        }
        zza(zzahdVar, false);
        zzahdVar.zzdci = true;
    }

    @Override // com.google.android.gms.internal.zzyo
    public final void zzda() {
        this.zzanl.zzdz();
    }
}
