package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzabk;
import com.google.android.gms.internal.zzacg;
import com.google.android.gms.internal.zzada;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahh;
import com.google.android.gms.internal.zzahs;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaij;
import com.google.android.gms.internal.zzaip;
import com.google.android.gms.internal.zzala;
import com.google.android.gms.internal.zzaly;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzhm;
import com.google.android.gms.internal.zziw;
import com.google.android.gms.internal.zziz;
import com.google.android.gms.internal.zzkk;
import com.google.android.gms.internal.zzko;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzoi;
import com.google.android.gms.internal.zzov;
import com.google.android.gms.internal.zzro;
import com.google.android.gms.internal.zzry;
import com.google.android.gms.internal.zzvr;
import com.google.android.gms.internal.zzvy;
import com.google.android.gms.internal.zzwf;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public abstract class zzd extends zza implements com.google.android.gms.ads.internal.overlay.zzn, zzbm, zzvr {
    protected final zzwf zzanu;
    private transient boolean zzanv;

    public zzd(Context context, zzko zzkoVar, String str, zzwf zzwfVar, zzala zzalaVar, zzv zzvVar) {
        this(new zzbu(context, zzkoVar, str, zzalaVar), zzwfVar, null, zzvVar);
    }

    private zzd(zzbu zzbuVar, zzwf zzwfVar, @Nullable zzbj zzbjVar, zzv zzvVar) {
        super(zzbuVar, null, zzvVar);
        this.zzanu = zzwfVar;
        this.zzanv = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0153  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.google.android.gms.internal.zzacg zza(com.google.android.gms.internal.zzkk r61, android.os.Bundle r62, com.google.android.gms.internal.zzahh r63, int r64) {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzd.zza(com.google.android.gms.internal.zzkk, android.os.Bundle, com.google.android.gms.internal.zzahh, int):com.google.android.gms.internal.zzacg");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String zzc(zzahd zzahdVar) {
        if (zzahdVar == null) {
            return null;
        }
        String str = zzahdVar.zzcjg;
        if (("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) && zzahdVar.zzcje != null) {
            try {
                return new JSONObject(zzahdVar.zzcje.zzchk).getString("class_name");
            } catch (NullPointerException | JSONException unused) {
            }
        }
        return str;
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final String getMediationAdapterClassName() {
        if (this.zzanm.zzaue == null) {
            return null;
        }
        return this.zzanm.zzaue.zzcjg;
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzkf
    public void onAdClicked() {
        if (this.zzanm.zzaue == null) {
            zzahw.zzcz("Ad state was null when trying to ping click URLs.");
            return;
        }
        if (this.zzanm.zzaue.zzdcj != null && this.zzanm.zzaue.zzdcj.zzchw != null) {
            zzbt.zzfd();
            zzvy.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, this.zzanm.zzaue, this.zzanm.zzatx, false, zzc(this.zzanm.zzaue.zzdcj.zzchw));
        }
        if (this.zzanm.zzaue.zzcje != null && this.zzanm.zzaue.zzcje.zzchg != null) {
            zzbt.zzfd();
            zzvy.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, this.zzanm.zzaue, this.zzanm.zzatx, false, this.zzanm.zzaue.zzcje.zzchg);
        }
        super.onAdClicked();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void onPause() {
        this.zzano.zzj(this.zzanm.zzaue);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzn
    public final void onResume() {
        this.zzano.zzk(this.zzanm.zzaue);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public void pause() {
        com.google.android.gms.common.internal.zzbq.zzgn("pause must be called on the main UI thread.");
        if (this.zzanm.zzaue != null && this.zzanm.zzaue.zzcnm != null && this.zzanm.zzfo()) {
            zzbt.zzen();
            zzaip.zzh(this.zzanm.zzaue.zzcnm);
        }
        if (this.zzanm.zzaue != null && this.zzanm.zzaue.zzcjf != null) {
            try {
                this.zzanm.zzaue.zzcjf.pause();
            } catch (RemoteException unused) {
                zzahw.zzcz("Could not pause mediation adapter.");
            }
        }
        this.zzano.zzj(this.zzanm.zzaue);
        this.zzanl.pause();
    }

    public final void recordImpression() {
        zza(this.zzanm.zzaue, false);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzlt
    public void resume() {
        com.google.android.gms.common.internal.zzbq.zzgn("resume must be called on the main UI thread.");
        zzaof zzaofVar = (this.zzanm.zzaue == null || this.zzanm.zzaue.zzcnm == null) ? null : this.zzanm.zzaue.zzcnm;
        if (zzaofVar != null && this.zzanm.zzfo()) {
            zzbt.zzen();
            zzaip.zzi(this.zzanm.zzaue.zzcnm);
        }
        if (this.zzanm.zzaue != null && this.zzanm.zzaue.zzcjf != null) {
            try {
                this.zzanm.zzaue.zzcjf.resume();
            } catch (RemoteException unused) {
                zzahw.zzcz("Could not resume mediation adapter.");
            }
        }
        if (zzaofVar == null || !zzaofVar.zzug()) {
            this.zzanl.resume();
        }
        this.zzano.zzk(this.zzanm.zzaue);
    }

    public void showInterstitial() {
        zzahw.zzcz("showInterstitial is not supported for current ad type");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(@Nullable zzahd zzahdVar, boolean z) {
        if (zzahdVar == null) {
            zzahw.zzcz("Ad state was null when trying to ping impression URLs.");
            return;
        }
        if (zzahdVar == null) {
            zzahw.zzcz("Ad state was null when trying to ping impression URLs.");
        } else {
            zzahw.zzby("Pinging Impression URLs.");
            if (this.zzanm.zzaug != null) {
                this.zzanm.zzaug.zzpk();
            }
            zzahdVar.zzdcu.zza(zziw.zza.zzb.AD_IMPRESSION);
            if (zzahdVar.zzchx != null && !zzahdVar.zzdcq) {
                zzbt.zzel();
                zzaij.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, zzc(zzahdVar.zzchx));
                zzahdVar.zzdcq = true;
            }
        }
        if (!zzahdVar.zzdcr || z) {
            if (zzahdVar.zzdcj != null && zzahdVar.zzdcj.zzchx != null) {
                zzbt.zzfd();
                zzvy.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, zzahdVar, this.zzanm.zzatx, z, zzc(zzahdVar.zzdcj.zzchx));
            }
            if (zzahdVar.zzcje != null && zzahdVar.zzcje.zzchh != null) {
                zzbt.zzfd();
                zzvy.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, zzahdVar, this.zzanm.zzatx, z, zzahdVar.zzcje.zzchh);
            }
            zzahdVar.zzdcr = true;
        }
    }

    @Override // com.google.android.gms.internal.zzvr
    public final void zza(zzro zzroVar, String str) {
        String customTemplateId;
        zzry zzryVar = null;
        if (zzroVar != null) {
            try {
                customTemplateId = zzroVar.getCustomTemplateId();
            } catch (RemoteException e) {
                zzahw.zzc("Unable to call onCustomClick.", e);
                return;
            }
        } else {
            customTemplateId = null;
        }
        if (this.zzanm.zzauo != null && customTemplateId != null) {
            zzryVar = this.zzanm.zzauo.get(customTemplateId);
        }
        if (zzryVar == null) {
            zzahw.zzcz("Mediation adapter invoked onCustomClick but no listeners were set.");
        } else {
            zzryVar.zzb(zzroVar, str);
        }
    }

    public final boolean zza(zzacg zzacgVar, zzov zzovVar) {
        this.zzanh = zzovVar;
        zzovVar.zzf("seq_num", zzacgVar.zzcry);
        zzovVar.zzf("request_id", zzacgVar.zzcsi);
        zzovVar.zzf("session_id", zzacgVar.zzcrz);
        if (zzacgVar.zzcrw != null) {
            zzovVar.zzf("app_version", String.valueOf(zzacgVar.zzcrw.versionCode));
        }
        zzbu zzbuVar = this.zzanm;
        zzbt.zzeh();
        Context context = this.zzanm.zzaiq;
        zziz zzizVar = this.zzanp.zzaon;
        zzahs zzadaVar = zzacgVar.zzcrv.extras.getBundle("sdk_less_server_data") != null ? new zzada(context, zzacgVar, this, zzizVar) : new zzabk(context, zzacgVar, this, zzizVar);
        zzadaVar.zzqj();
        zzbuVar.zzaub = zzadaVar;
        return true;
    }

    @Override // com.google.android.gms.ads.internal.zza
    final boolean zza(zzahd zzahdVar) {
        zzkk zzkkVar;
        boolean z = false;
        if (this.zzann != null) {
            zzkkVar = this.zzann;
            this.zzann = null;
        } else {
            zzkkVar = zzahdVar.zzcrv;
            if (zzkkVar.extras != null) {
                z = zzkkVar.extras.getBoolean("_noRefresh", false);
            }
        }
        return zza(zzkkVar, zzahdVar, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public boolean zza(@Nullable zzahd zzahdVar, zzahd zzahdVar2) {
        int i;
        if (zzahdVar != null && zzahdVar.zzcjh != null) {
            zzahdVar.zzcjh.zza((zzvr) null);
        }
        if (zzahdVar2.zzcjh != null) {
            zzahdVar2.zzcjh.zza(this);
        }
        int i2 = 0;
        if (zzahdVar2.zzdcj != null) {
            i2 = zzahdVar2.zzdcj.zzcik;
            i = zzahdVar2.zzdcj.zzcil;
        } else {
            i = 0;
        }
        this.zzanm.zzauz.zze(i2, i);
        return true;
    }

    protected boolean zza(zzkk zzkkVar, zzahd zzahdVar, boolean z) {
        zzbj zzbjVar;
        long j;
        if (!z && this.zzanm.zzfo()) {
            if (zzahdVar.zzcic > 0) {
                zzbjVar = this.zzanl;
                j = zzahdVar.zzcic;
            } else if (zzahdVar.zzdcj != null && zzahdVar.zzdcj.zzcic > 0) {
                zzbjVar = this.zzanl;
                j = zzahdVar.zzdcj.zzcic;
            } else if (!zzahdVar.zzcto && zzahdVar.errorCode == 2) {
                this.zzanl.zzg(zzkkVar);
            }
            zzbjVar.zza(zzkkVar, j);
        }
        return this.zzanl.zzea();
    }

    @Override // com.google.android.gms.ads.internal.zza
    public boolean zza(zzkk zzkkVar, zzov zzovVar) {
        return zza(zzkkVar, zzovVar, 1);
    }

    public final boolean zza(zzkk zzkkVar, zzov zzovVar, int i) {
        zzahh zzahhVar;
        if (!zzce()) {
            return false;
        }
        zzbt.zzel();
        zzhm zzad = zzbt.zzep().zzad(this.zzanm.zzaiq);
        Bundle zza = zzad == null ? null : zzaij.zza(zzad);
        this.zzanl.cancel();
        this.zzanm.zzavb = 0;
        if (((Boolean) zzlc.zzio().zzd(zzoi.zzbti)).booleanValue()) {
            zzahhVar = zzbt.zzep().zzqe().zzqv();
            zzbt.zzet().zza(this.zzanm.zzaiq, this.zzanm.zzatz, false, zzahhVar, zzahhVar != null ? zzahhVar.getAppId() : null, this.zzanm.zzatx, null);
        } else {
            zzahhVar = null;
        }
        return zza(zza(zzkkVar, zza, zzahhVar, i), zzovVar);
    }

    @Override // com.google.android.gms.ads.internal.zza, com.google.android.gms.internal.zzzn
    public final void zzb(zzahd zzahdVar) {
        super.zzb(zzahdVar);
        if (zzahdVar.zzcje != null) {
            zzahw.zzby("Disable the debug gesture detector on the mediation ad frame.");
            if (this.zzanm.zzaua != null) {
                this.zzanm.zzaua.zzfu();
            }
            zzahw.zzby("Pinging network fill URLs.");
            zzbt.zzfd();
            zzvy.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, zzahdVar, this.zzanm.zzatx, false, zzahdVar.zzcje.zzchj);
            if (zzahdVar.zzdcj != null && zzahdVar.zzdcj.zzchz != null && zzahdVar.zzdcj.zzchz.size() > 0) {
                zzahw.zzby("Pinging urls remotely");
                zzbt.zzel().zza(this.zzanm.zzaiq, zzahdVar.zzdcj.zzchz);
            }
        } else {
            zzahw.zzby("Enable the debug gesture detector on the admob ad frame.");
            if (this.zzanm.zzaua != null) {
                this.zzanm.zzaua.zzft();
            }
        }
        if (zzahdVar.errorCode != 3 || zzahdVar.zzdcj == null || zzahdVar.zzdcj.zzchy == null) {
            return;
        }
        zzahw.zzby("Pinging no fill URLs.");
        zzbt.zzfd();
        zzvy.zza(this.zzanm.zzaiq, this.zzanm.zzatz.zzcu, zzahdVar, this.zzanm.zzatx, false, zzahdVar.zzdcj.zzchy);
    }

    @Override // com.google.android.gms.internal.zzvr
    public final void zzc(String str, String str2) {
        onAppEvent(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.ads.internal.zza
    public final boolean zzc(zzkk zzkkVar) {
        return super.zzc(zzkkVar) && !this.zzanv;
    }

    protected boolean zzce() {
        zzbt.zzel();
        if (!zzaij.zzd(this.zzanm.zzaiq, this.zzanm.zzaiq.getPackageName(), "android.permission.INTERNET")) {
            return false;
        }
        zzbt.zzel();
        return zzaij.zzag(this.zzanm.zzaiq);
    }

    public void zzcf() {
        this.zzanv = false;
        zzbt();
        this.zzanm.zzaug.zzpm();
    }

    public void zzcg() {
        this.zzanv = true;
        zzbv();
    }

    public void zzch() {
        zzahw.zzcz("Mediated ad does not support onVideoEnd callback");
    }

    public void zzci() {
        onAdClicked();
    }

    @Override // com.google.android.gms.internal.zzvr
    public final void zzcj() {
        zzcf();
    }

    @Override // com.google.android.gms.internal.zzvr
    public final void zzck() {
        zzbu();
    }

    @Override // com.google.android.gms.internal.zzvr
    public final void zzcl() {
        zzcg();
    }

    @Override // com.google.android.gms.internal.zzvr
    public final void zzcm() {
        if (this.zzanm.zzaue != null) {
            String str = this.zzanm.zzaue.zzcjg;
            StringBuilder sb = new StringBuilder(74 + String.valueOf(str).length());
            sb.append("Mediation adapter ");
            sb.append(str);
            sb.append(" refreshed, but mediation adapters should never refresh.");
            zzahw.zzcz(sb.toString());
        }
        zza(this.zzanm.zzaue, true);
        zzbw();
    }

    public void zzcn() {
        recordImpression();
    }

    @Override // com.google.android.gms.internal.zzlt
    @Nullable
    public final String zzco() {
        if (this.zzanm.zzaue == null) {
            return null;
        }
        return zzc(this.zzanm.zzaue);
    }

    @Override // com.google.android.gms.ads.internal.zzbm
    public final void zzcp() {
        Executor executor = zzaly.zzdjt;
        zzbj zzbjVar = this.zzanl;
        zzbjVar.getClass();
        executor.execute(zze.zza(zzbjVar));
    }

    @Override // com.google.android.gms.ads.internal.zzbm
    public final void zzcq() {
        Executor executor = zzaly.zzdjt;
        zzbj zzbjVar = this.zzanl;
        zzbjVar.getClass();
        executor.execute(zzf.zza(zzbjVar));
    }
}
