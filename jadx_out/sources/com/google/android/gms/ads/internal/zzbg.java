package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzpm;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbg implements Runnable {
    private /* synthetic */ zzpm zzaoi;
    private /* synthetic */ zzbb zzaro;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbg(zzbb zzbbVar, zzpm zzpmVar) {
        this.zzaro = zzbbVar;
        this.zzaoi = zzpmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.zzaro.zzanm.zzaum != null) {
                this.zzaro.zzanm.zzaum.zza(this.zzaoi);
            }
        } catch (RemoteException e) {
            zzahw.zzc("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
        }
    }
}
