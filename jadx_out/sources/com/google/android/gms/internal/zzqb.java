package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
final class zzqb {
    private final WeakReference<zzaof> zzbzc;
    private String zzbzd;

    public zzqb(zzaof zzaofVar) {
        this.zzbzc = new WeakReference<>(zzaofVar);
    }

    public final void zza(zzaan zzaanVar) {
        zzaanVar.zza("/loadHtml", new zzqc(this, zzaanVar));
        zzaanVar.zza("/showOverlay", new zzqe(this, zzaanVar));
        zzaanVar.zza("/hideOverlay", new zzqf(this, zzaanVar));
        zzaof zzaofVar = this.zzbzc.get();
        if (zzaofVar != null) {
            zzaofVar.zzua().zza("/sendMessageToSdk", new zzqg(this, zzaanVar));
        }
    }
}
