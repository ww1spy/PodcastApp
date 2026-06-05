package com.google.android.gms.tagmanager;

import java.util.Map;

/* loaded from: classes.dex */
abstract class zzgi extends zzbr {
    public zzgi(String str, String... strArr) {
        super(str, strArr);
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public boolean zzbfh() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzbr
    public com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map) {
        zzz(map);
        return zzgk.zzbil();
    }

    public abstract void zzz(Map<String, com.google.android.gms.internal.zzbt> map);
}
