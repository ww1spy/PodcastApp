package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzpm;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzt implements Runnable {
    private /* synthetic */ zzq zzaog;
    private /* synthetic */ zzpm zzaoi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzt(zzq zzqVar, zzpm zzpmVar) {
        this.zzaog = zzqVar;
        this.zzaoi = zzpmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.zzaog.zzanm.zzaum != null) {
                this.zzaog.zzanm.zzaum.zza(this.zzaoi);
            }
        } catch (RemoteException e) {
            zzahw.zzc("Could not call OnContentAdLoadedListener.onContentAdLoaded().", e);
        }
    }
}
