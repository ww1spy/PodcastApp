package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
final class zzua extends zzafd {
    private /* synthetic */ zztl zzcdm;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzua(zztl zztlVar) {
        this.zzcdm = zztlVar;
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdClosed() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzue(this));
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdFailedToLoad(int i) throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzuh(this, i));
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdLeftApplication() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzug(this));
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdLoaded() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzub(this));
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoAdOpened() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzuc(this));
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoCompleted() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzui(this));
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void onRewardedVideoStarted() throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzud(this));
    }

    @Override // com.google.android.gms.internal.zzafc
    public final void zza(zzaeu zzaeuVar) throws RemoteException {
        List list;
        list = this.zzcdm.zzaoz;
        list.add(new zzuf(this, zzaeuVar));
    }
}
