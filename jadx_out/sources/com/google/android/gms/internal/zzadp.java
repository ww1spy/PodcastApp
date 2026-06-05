package com.google.android.gms.internal;

import android.os.RemoteException;

/* loaded from: classes.dex */
final class zzadp implements Runnable {
    private /* synthetic */ zzacf zzcwe;
    private /* synthetic */ zzacq zzcwf;
    private /* synthetic */ zzadn zzcwg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzadp(zzadn zzadnVar, zzacf zzacfVar, zzacq zzacqVar) {
        this.zzcwg = zzadnVar;
        this.zzcwe = zzacfVar;
        this.zzcwf = zzacqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzacj zzacjVar;
        try {
            zzacjVar = this.zzcwg.zzb(this.zzcwe);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "AdRequestServiceImpl.loadAdAsync");
            zzahw.zzc("Could not fetch ad response due to an Exception.", e);
            zzacjVar = null;
        }
        if (zzacjVar == null) {
            zzacjVar = new zzacj(0);
        }
        try {
            this.zzcwf.zza(zzacjVar);
        } catch (RemoteException e2) {
            zzahw.zzc("Fail to forward ad response.", e2);
        }
    }
}
