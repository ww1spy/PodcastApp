package com.google.android.gms.internal;

import android.support.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzur {
    com.google.android.gms.ads.internal.zzak zzceg;

    @Nullable
    zzkk zzceh;
    zztl zzcei;
    long zzcej;
    boolean zzcek;
    boolean zzcel;
    private /* synthetic */ zzuq zzcem;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzur(zzuq zzuqVar, zztk zztkVar) {
        String str;
        this.zzcem = zzuqVar;
        str = zzuqVar.zzapp;
        this.zzceg = zztkVar.zzaw(str);
        this.zzcei = new zztl();
        zztl zztlVar = this.zzcei;
        com.google.android.gms.ads.internal.zzak zzakVar = this.zzceg;
        zzakVar.zza(new zztm(zztlVar));
        zzakVar.zza(new zztu(zztlVar));
        zzakVar.zza(new zztw(zztlVar));
        zzakVar.zza(new zzty(zztlVar));
        zzakVar.zza(new zzua(zztlVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzur(zzuq zzuqVar, zztk zztkVar, zzkk zzkkVar) {
        this(zzuqVar, zztkVar);
        this.zzceh = zzkkVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean load() {
        if (this.zzcek) {
            return false;
        }
        this.zzcel = this.zzceg.zzb(zzuo.zzi(this.zzceh != null ? this.zzceh : this.zzcem.zzced));
        this.zzcek = true;
        this.zzcej = com.google.android.gms.ads.internal.zzbt.zzes().currentTimeMillis();
        return true;
    }
}
