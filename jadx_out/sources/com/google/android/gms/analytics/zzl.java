package com.google.android.gms.analytics;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzl implements Runnable {
    private /* synthetic */ zzg zzdvq;
    private /* synthetic */ zzk zzdvr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(zzk zzkVar, zzg zzgVar) {
        this.zzdvr = zzkVar;
        this.zzdvq = zzgVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List list;
        this.zzdvq.zzwd().zza(this.zzdvq);
        list = this.zzdvr.zzdvl;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzn) it.next()).zza(this.zzdvq);
        }
        zzk zzkVar = this.zzdvr;
        zzk.zzb(this.zzdvq);
    }
}
