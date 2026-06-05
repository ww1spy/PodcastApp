package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzpk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzs implements Runnable {
    private /* synthetic */ zzq zzaog;
    private /* synthetic */ zzpk zzaoh;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(zzq zzqVar, zzpk zzpkVar) {
        this.zzaog = zzqVar;
        this.zzaoh = zzpkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (this.zzaog.zzanm.zzaul != null) {
                this.zzaog.zzanm.zzaul.zza(this.zzaoh);
            }
        } catch (RemoteException e) {
            zzahw.zzc("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", e);
        }
    }
}
