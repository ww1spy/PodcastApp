package com.google.android.gms.internal;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzdt extends zzbu<Integer, Long> {
    public Long zzajt;
    public Long zzgd;
    public Long zzge;

    public zzdt() {
    }

    public zzdt(String str) {
        zzj(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbu
    public final void zzj(String str) {
        HashMap zzk = zzk(str);
        if (zzk != null) {
            this.zzajt = (Long) zzk.get(0);
            this.zzgd = (Long) zzk.get(1);
            this.zzge = (Long) zzk.get(2);
        }
    }

    @Override // com.google.android.gms.internal.zzbu
    protected final HashMap<Integer, Long> zzy() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzajt);
        hashMap.put(1, this.zzgd);
        hashMap.put(2, this.zzge);
        return hashMap;
    }
}
