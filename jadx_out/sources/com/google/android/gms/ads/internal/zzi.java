package com.google.android.gms.ads.internal;

import android.content.Context;
import android.support.annotation.Nullable;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzagq;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahe;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzaop;
import com.google.android.gms.internal.zzaqa;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzpb;
import com.google.android.gms.internal.zzwf;
import com.google.android.gms.internal.zzyo;
import com.google.android.gms.internal.zzzm;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzi extends zzd implements zzae, zzyo {
    private boolean zzany;

    public zzi(Context context, zzko zzkoVar, String str, zzwf zzwfVar, zzala zzalaVar, zzv zzvVar) {
        super(context, zzkoVar, str, zzwfVar, zzalaVar, zzvVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public zzaof zza(zzahe zzaheVar, @Nullable zzw zzwVar, @Nullable zzagq zzagqVar) throws zzaop {
        View nextView = this.zzanm.zzaua.getNextView();
        if (nextView instanceof zzaof) {
            ((zzaof) nextView).destroy();
        }
        if (nextView != 0) {
            this.zzanm.zzaua.removeView(nextView);
        }
        zzaof zza = zzbt.zzem().zza(this.zzanm.zzaiq, zzaqa.zzc(this.zzanm.zzaud), this.zzanm.zzaud.zzbia, false, false, this.zzanm.zzaty, this.zzanm.zzatz, this.zzanh, this, this.zzanp, zzaheVar.zzdcu);
        if (this.zzanm.zzaud.zzbic == null) {
            zzg(zza.getView());
        }
        zza.zzua().zza(this, this, this, this, false, null, zzwVar, this, zzagqVar);
        zza(zza);
        zza.zzde(zzaheVar.zzcvm.zzcsi);
        return zza;
    }

    @Override // com.google.android.gms.internal.zzyo
    public final void zza(int i, int i2, int i3, int i4) {
        zzbv();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public void zza(zzahe zzaheVar, zzov zzovVar) {
        if (zzaheVar.errorCode != -2) {
            zzaij.zzdfn.post(new zzk(this, zzaheVar));
            return;
        }
        if (zzaheVar.zzaud != null) {
            this.zzanm.zzaud = zzaheVar.zzaud;
        }
        if (!zzaheVar.zzdcw.zzcto || zzaheVar.zzdcw.zzbif) {
            zzaij.zzdfn.post(new zzl(this, zzaheVar, this.zzanp.zzaom.zza(this.zzanm.zzaiq, this.zzanm.zzatz, zzaheVar.zzdcw), zzovVar));
        } else {
            this.zzanm.zzavb = 0;
            zzbu zzbuVar = this.zzanm;
            zzbt.zzek();
            zzbuVar.zzauc = zzzm.zza(this.zzanm.zzaiq, this, zzaheVar, this.zzanm.zzaty, null, this.zzanu, this, zzovVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(zzaof zzaofVar) {
        zzaofVar.zza("/trackActiveViewUnit", new zzj(this));
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public final void zza(zzpb zzpbVar) {
        com.google.android.gms.common.internal.zzbq.zzgn("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
        this.zzanm.zzauv = zzpbVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zzd, com.google.android.gms.ads.internal.zza
    public boolean zza(@Nullable zzahd zzahdVar, zzahd zzahdVar2) {
        boolean z;
        if (this.zzanm.zzfo() && this.zzanm.zzaua != null) {
            this.zzanm.zzaua.zzfr().zzcr(zzahdVar2.zzctt);
        }
        try {
            if (zzahdVar2.zzcnm != null && !zzahdVar2.zzcto && zzahdVar2.zzdcv) {
                if (((Boolean) zzlc.zzio().zzd(zzoi.zzbvv)).booleanValue()) {
                    String str = zzahdVar2.zzcrv.zzbhj;
                    if (str != null && !"com.google.ads.mediation.AbstractAdViewAdapter".equals(str)) {
                        z = false;
                        if (z && !zzahdVar2.zzcrv.extras.containsKey("sdk_less_server_data")) {
                            try {
                                zzahdVar2.zzcnm.zzum();
                            } catch (Throwable unused) {
                                zzahw.v("Could not render test Ad label.");
                            }
                        }
                    }
                    z = true;
                    if (z) {
                        zzahdVar2.zzcnm.zzum();
                    }
                }
            }
        } catch (RuntimeException unused2) {
            zzahw.v("Could not render test AdLabel.");
        }
        return super.zza(zzahdVar, zzahdVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(zzaof zzaofVar) {
        if (this.zzanm.zzaue != null) {
            this.zzano.zza(this.zzanm.zzaud, this.zzanm.zzaue, zzaofVar.getView(), zzaofVar);
            this.zzany = false;
        } else {
            this.zzany = true;
            zzahw.zzcz("Request to enable ActiveView before adState is available.");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public void zzbw() {
        super.zzbw();
        if (this.zzany) {
            if (((Boolean) zzlc.zzio().zzd(zzoi.zzbst)).booleanValue()) {
                zzb(this.zzanm.zzaue.zzcnm);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zzae
    public final void zzcr() {
        onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.zzae
    public final void zzcs() {
        recordImpression();
        zzbs();
    }

    @Override // com.google.android.gms.internal.zzyo
    public final void zzct() {
        zzbt();
    }

    @Override // com.google.android.gms.ads.internal.zzae
    public final void zzh(View view) {
        this.zzanm.zzava = view;
        zzb(new zzahd(this.zzanm.zzauf, null, null, null, null, null, null, null));
    }
}
