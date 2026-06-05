package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
final class zztm extends zzlj {
    private /* synthetic */ zztl zzcdm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztm(zztl zztlVar) {
        this.zzcdm = zztlVar;
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdClicked() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zztt(this));
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdClosed() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zztn(this));
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdFailedToLoad(int i) throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzto(this, i));
        zzahw.v("Pooled interstitial failed to load.");
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdImpression() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzts(this));
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdLeftApplication() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zztp(this));
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdLoaded() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zztq(this));
        zzahw.v("Pooled interstitial loaded.");
    }

    @Override // com.google.android.gms.internal.zzli
    public final void onAdOpened() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zztr(this));
    }
}
