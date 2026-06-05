package com.google.android.gms.internal;

import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzwb implements Runnable {
    private /* synthetic */ zzvz zzcjs;
    private /* synthetic */ zzalt zzcjt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwb(zzvz zzvzVar, zzalt zzaltVar) {
        this.zzcjs = zzvzVar;
        this.zzcjt = zzaltVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        Map map2;
        map = this.zzcjs.zzcjo;
        for (zzalt zzaltVar : map.keySet()) {
            if (zzaltVar != this.zzcjt) {
                map2 = this.zzcjs.zzcjo;
                ((zzvt) map2.get(zzaltVar)).cancel();
            }
        }
    }
}
