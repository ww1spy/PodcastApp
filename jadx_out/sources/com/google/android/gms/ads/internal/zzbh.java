package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzpo;

/* loaded from: classes.dex */
final class zzbh implements Runnable {
    private /* synthetic */ zzbb zzaro;
    private /* synthetic */ String zzaru;
    private /* synthetic */ zzahd zzarv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbh(zzbb zzbbVar, String str, zzahd zzahdVar) {
        this.zzaro = zzbbVar;
        this.zzaru = str;
        this.zzarv = zzahdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzaro.zzanm.zzaup.get(this.zzaru).zzb((zzpo) this.zzarv.zzdcp);
        } catch (RemoteException e) {
            zzahw.zzc("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", e);
        }
    }
}
