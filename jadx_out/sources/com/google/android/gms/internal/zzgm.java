package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgm implements com.google.android.gms.ads.internal.gmsg.zzt<com.google.android.gms.ads.internal.js.zzaj> {
    private /* synthetic */ zzgh zzaxf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgm(zzgh zzghVar) {
        this.zzaxf = zzghVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(com.google.android.gms.ads.internal.js.zzaj zzajVar, Map map) {
        zzfv zzfvVar;
        zzfv zzfvVar2;
        zzfvVar = this.zzaxf.zzawv;
        if (zzfvVar.zze(map)) {
            zzfvVar2 = this.zzaxf.zzawv;
            zzfvVar2.zzf(map);
        }
    }
}
