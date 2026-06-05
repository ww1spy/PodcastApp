package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzro;

/* loaded from: classes.dex */
final class zzbi implements Runnable {
    private /* synthetic */ zzro zzaoj;
    private /* synthetic */ zzbb zzaro;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbi(zzbb zzbbVar, zzro zzroVar) {
        this.zzaro = zzbbVar;
        this.zzaoj = zzroVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzaro.zzanm.zzaup.get(this.zzaoj.getCustomTemplateId()).zzb(this.zzaoj);
        } catch (RemoteException e) {
            zzahw.zzc("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
        }
    }
}
