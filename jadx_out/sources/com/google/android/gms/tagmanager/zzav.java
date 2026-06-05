package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.DataLayer;
import java.util.List;

/* loaded from: classes.dex */
final class zzav implements Runnable {
    private /* synthetic */ zzat zzkoz;
    private /* synthetic */ zzaq zzkpa;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzav(zzat zzatVar, zzaq zzaqVar) {
        this.zzkoz = zzatVar;
        this.zzkpa = zzaqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List<DataLayer.zza> zzbge;
        zzaq zzaqVar = this.zzkpa;
        zzbge = this.zzkoz.zzbge();
        zzaqVar.zzal(zzbge);
    }
}
