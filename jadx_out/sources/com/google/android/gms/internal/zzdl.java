package com.google.android.gms.internal;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzdl extends zzbu<Integer, Long> {
    public Long zzaio;
    public Long zzaip;

    public zzdl() {
    }

    public zzdl(String str) {
        zzj(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbu
    public final void zzj(String str) {
        HashMap zzk = zzk(str);
        if (zzk != null) {
            this.zzaio = (Long) zzk.get(0);
            this.zzaip = (Long) zzk.get(1);
        }
    }

    @Override // com.google.android.gms.internal.zzbu
    protected final HashMap<Integer, Long> zzy() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzaio);
        hashMap.put(1, this.zzaip);
        return hashMap;
    }
}
