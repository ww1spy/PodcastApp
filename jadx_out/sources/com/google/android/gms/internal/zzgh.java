package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Hide;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzgh implements zzgq {
    private final Context mContext;
    private final zzfv zzawv;
    private final com.google.android.gms.ads.internal.gmsg.zzz zzaxb;
    private com.google.android.gms.ads.internal.js.zzaa zzaxc;
    private boolean zzaxd;
    private final com.google.android.gms.ads.internal.gmsg.zzt<com.google.android.gms.ads.internal.js.zzaj> zzawx = new zzgm(this);
    private final com.google.android.gms.ads.internal.gmsg.zzt<com.google.android.gms.ads.internal.js.zzaj> zzawy = new zzgn(this);
    private final com.google.android.gms.ads.internal.gmsg.zzt<com.google.android.gms.ads.internal.js.zzaj> zzawz = new zzgo(this);
    private final com.google.android.gms.ads.internal.gmsg.zzt<com.google.android.gms.ads.internal.js.zzaj> zzaxe = new zzgp(this);

    public zzgh(zzfv zzfvVar, com.google.android.gms.ads.internal.js.zzn zznVar, Context context) {
        this.zzawv = zzfvVar;
        this.mContext = context;
        this.zzaxb = new com.google.android.gms.ads.internal.gmsg.zzz(this.mContext);
        this.zzaxc = zznVar.zzb((zzcv) null);
        this.zzaxc.zza(new zzgi(this), new zzgj(this));
        String valueOf = String.valueOf(this.zzawv.zzavy.zzfy());
        zzahw.zzby(valueOf.length() != 0 ? "Core JS tracking ad unit: ".concat(valueOf) : new String("Core JS tracking ad unit: "));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean zza(zzgh zzghVar, boolean z) {
        zzghVar.zzaxd = true;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(com.google.android.gms.ads.internal.js.zzaj zzajVar) {
        zzajVar.zza("/updateActiveView", this.zzawx);
        zzajVar.zza("/untrackActiveViewUnit", this.zzawy);
        zzajVar.zza("/visibilityChanged", this.zzawz);
        if (com.google.android.gms.ads.internal.zzbt.zzfh().zzq(this.mContext)) {
            zzajVar.zza("/logScionEvent", this.zzaxe);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(com.google.android.gms.ads.internal.js.zzaj zzajVar) {
        zzajVar.zzb("/visibilityChanged", this.zzawz);
        zzajVar.zzb("/untrackActiveViewUnit", this.zzawy);
        zzajVar.zzb("/updateActiveView", this.zzawx);
        if (com.google.android.gms.ads.internal.zzbt.zzfh().zzq(this.mContext)) {
            zzajVar.zzb("/logScionEvent", this.zzaxe);
        }
    }

    @Override // com.google.android.gms.internal.zzgq
    public final void zzb(JSONObject jSONObject, boolean z) {
        this.zzaxc.zza(new zzgk(this, jSONObject), new zzamh());
    }

    @Override // com.google.android.gms.internal.zzgq
    public final boolean zzgk() {
        return this.zzaxd;
    }

    @Override // com.google.android.gms.internal.zzgq
    public final void zzgl() {
        this.zzaxc.zza(new zzgl(this), new zzamh());
        this.zzaxc.release();
    }
}
