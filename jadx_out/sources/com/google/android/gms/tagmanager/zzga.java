package com.google.android.gms.tagmanager;

import java.util.Map;

/* loaded from: classes.dex */
abstract class zzga extends zzeg {
    public zzga(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.zzeg
    protected final boolean zza(com.google.android.gms.internal.zzbt zzbtVar, com.google.android.gms.internal.zzbt zzbtVar2, Map<String, com.google.android.gms.internal.zzbt> map) {
        String zzd = zzgk.zzd(zzbtVar);
        String zzd2 = zzgk.zzd(zzbtVar2);
        if (zzd == zzgk.zzbik() || zzd2 == zzgk.zzbik()) {
            return false;
        }
        return zza(zzd, zzd2, map);
    }

    protected abstract boolean zza(String str, String str2, Map<String, com.google.android.gms.internal.zzbt> map);
}
