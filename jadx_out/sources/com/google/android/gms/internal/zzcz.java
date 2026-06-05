package com.google.android.gms.internal;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzcz extends zzbu<Integer, Long> {
    public long zzaif;
    public long zzaig;

    public zzcz() {
        this.zzaif = -1L;
        this.zzaig = -1L;
    }

    public zzcz(String str) {
        this();
        zzj(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbu
    public final void zzj(String str) {
        HashMap zzk = zzk(str);
        if (zzk != null) {
            this.zzaif = ((Long) zzk.get(0)).longValue();
            this.zzaig = ((Long) zzk.get(1)).longValue();
        }
    }

    @Override // com.google.android.gms.internal.zzbu
    protected final HashMap<Integer, Long> zzy() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.zzaif));
        hashMap.put(1, Long.valueOf(this.zzaig));
        return hashMap;
    }
}
