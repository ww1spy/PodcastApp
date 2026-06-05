package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzkk;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbk implements Runnable {
    private /* synthetic */ WeakReference zzasb;
    private /* synthetic */ zzbj zzasc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbk(zzbj zzbjVar, WeakReference weakReference) {
        this.zzasc = zzbjVar;
        this.zzasb = weakReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkk zzkkVar;
        zzbj.zza(this.zzasc, false);
        zza zzaVar = (zza) this.zzasb.get();
        if (zzaVar != null) {
            zzkkVar = this.zzasc.zzarx;
            if (zzaVar.zzc(zzkkVar)) {
                zzaVar.zzb(zzkkVar);
            } else {
                zzahw.zzcy("Ad is not visible. Not refreshing ad.");
                zzaVar.zzanl.zzg(zzkkVar);
            }
        }
    }
}
