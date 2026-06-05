package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzro;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzu implements Runnable {
    private /* synthetic */ zzq zzaog;
    private /* synthetic */ zzro zzaoj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzu(zzq zzqVar, zzro zzroVar) {
        this.zzaog = zzqVar;
        this.zzaoj = zzroVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzaog.zzanm.zzaup.get(this.zzaoj.getCustomTemplateId()).zzb(this.zzaoj);
        } catch (RemoteException e) {
            zzahw.zzc("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
        }
    }
}
