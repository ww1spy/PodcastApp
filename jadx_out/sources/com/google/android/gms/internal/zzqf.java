package com.google.android.gms.internal;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzqf implements com.google.android.gms.ads.internal.gmsg.zzt<Object> {
    private /* synthetic */ zzaan zzbze;
    private /* synthetic */ zzqb zzbzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqf(zzqb zzqbVar, zzaan zzaanVar) {
        this.zzbzf = zzqbVar;
        this.zzbze = zzaanVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final void zza(Object obj, Map<String, String> map) {
        WeakReference weakReference;
        weakReference = this.zzbzf.zzbzc;
        zzaof zzaofVar = (zzaof) weakReference.get();
        if (zzaofVar == null) {
            this.zzbze.zzb("/hideOverlay", this);
        } else {
            zzaofVar.getView().setVisibility(8);
        }
    }
}
