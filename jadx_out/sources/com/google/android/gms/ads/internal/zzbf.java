package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzpk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbf implements Runnable {
    private /* synthetic */ zzpk zzaoh;
    private /* synthetic */ zzbb zzaro;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbf(zzbb zzbbVar, zzpk zzpkVar) {
        this.zzaro = zzbbVar;
        this.zzaoh = zzpkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.zzaro.zzanm.zzaul != null) {
                this.zzaro.zzanm.zzaul.zza(this.zzaoh);
            }
        } catch (RemoteException e) {
            zzahw.zzc("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
        }
    }
}
