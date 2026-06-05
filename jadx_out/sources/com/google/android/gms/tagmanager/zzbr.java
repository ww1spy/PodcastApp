package com.google.android.gms.tagmanager;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzbr {
    private final Set<String> zzkpr;
    private final String zzkps;

    public zzbr(String str, String... strArr) {
        this.zzkps = str;
        this.zzkpr = new HashSet(strArr.length);
        for (String str2 : strArr) {
            this.zzkpr.add(str2);
        }
    }

    public abstract boolean zzbfh();

    public String zzbgp() {
        return this.zzkps;
    }

    public Set<String> zzbgq() {
        return this.zzkpr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzd(Set<String> set) {
        return set.containsAll(this.zzkpr);
    }

    public abstract com.google.android.gms.internal.zzbt zzx(Map<String, com.google.android.gms.internal.zzbt> map);
}
