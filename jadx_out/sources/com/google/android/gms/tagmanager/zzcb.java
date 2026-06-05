package com.google.android.gms.tagmanager;

import android.content.Context;

/* loaded from: classes.dex */
final class zzcb implements Runnable {
    private /* synthetic */ String zzcrd;
    private /* synthetic */ zzbz zzkqa;
    private /* synthetic */ long zzkqb;
    private /* synthetic */ zzca zzkqc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcb(zzca zzcaVar, zzbz zzbzVar, long j, String str) {
        this.zzkqc = zzcaVar;
        this.zzkqa = zzbzVar;
        this.zzkqb = j;
        this.zzcrd = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcc zzccVar;
        zzcc zzccVar2;
        Context context;
        zzccVar = this.zzkqc.zzkpz;
        if (zzccVar == null) {
            zzfo zzbhz = zzfo.zzbhz();
            context = this.zzkqc.mContext;
            zzbhz.zza(context, this.zzkqa);
            this.zzkqc.zzkpz = zzbhz.zzbia();
        }
        zzccVar2 = this.zzkqc.zzkpz;
        zzccVar2.zzb(this.zzkqb, this.zzcrd);
    }
}
