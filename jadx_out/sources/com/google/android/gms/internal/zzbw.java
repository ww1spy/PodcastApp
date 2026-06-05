package com.google.android.gms.internal;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzbw extends zzbu<Integer, Object> {
    public String zzcv;
    public String zzcx;
    public String zzcy;
    public String zzcz;
    public long zzyv;

    public zzbw() {
        this.zzcv = "E";
        this.zzyv = -1L;
        this.zzcx = "E";
        this.zzcy = "E";
        this.zzcz = "E";
    }

    public zzbw(String str) {
        this();
        zzj(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbu
    public final void zzj(String str) {
        HashMap zzk = zzk(str);
        if (zzk != null) {
            this.zzcv = zzk.get(0) == null ? "E" : (String) zzk.get(0);
            this.zzyv = zzk.get(1) == null ? -1L : ((Long) zzk.get(1)).longValue();
            this.zzcx = zzk.get(2) == null ? "E" : (String) zzk.get(2);
            this.zzcy = zzk.get(3) == null ? "E" : (String) zzk.get(3);
            this.zzcz = zzk.get(4) == null ? "E" : (String) zzk.get(4);
        }
    }

    @Override // com.google.android.gms.internal.zzbu
    protected final HashMap<Integer, Object> zzy() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.zzcv);
        hashMap.put(4, this.zzcz);
        hashMap.put(3, this.zzcy);
        hashMap.put(2, this.zzcx);
        hashMap.put(1, Long.valueOf(this.zzyv));
        return hashMap;
    }
}
