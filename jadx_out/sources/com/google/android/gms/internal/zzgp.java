package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgp implements com.google.android.gms.ads.internal.gmsg.zzt<com.google.android.gms.ads.internal.js.zzaj> {
    private /* synthetic */ zzgh zzaxf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgp(zzgh zzghVar) {
        this.zzaxf = zzghVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.zzt
    public final /* synthetic */ void zza(com.google.android.gms.ads.internal.js.zzaj zzajVar, Map map) {
        zzfv zzfvVar;
        com.google.android.gms.ads.internal.gmsg.zzz zzzVar;
        com.google.android.gms.ads.internal.js.zzaj zzajVar2 = zzajVar;
        zzfvVar = this.zzaxf.zzawv;
        if (zzfvVar.zze(map)) {
            zzzVar = this.zzaxf.zzaxb;
            zzzVar.zza(zzajVar2, map);
        }
    }
}
