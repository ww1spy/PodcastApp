package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbej;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbh extends RemoteMediaPlayer.zzb {
    private /* synthetic */ RemoteMediaPlayer zzexz;
    private /* synthetic */ GoogleApiClient zzeya;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbh(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2) {
        super(googleApiClient);
        this.zzexz = remoteMediaPlayer;
        this.zzeya = googleApiClient2;
    }

    @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb, com.google.android.gms.common.api.internal.zzm
    protected final /* bridge */ /* synthetic */ void zza(zzbdp zzbdpVar) throws RemoteException {
        zza(zzbdpVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.cast.RemoteMediaPlayer.zzb
    public final void zza(zzbdp zzbdpVar) {
        Object obj;
        RemoteMediaPlayer.zza zzaVar;
        RemoteMediaPlayer.zza zzaVar2;
        RemoteMediaPlayer.zza zzaVar3;
        zzbej zzbejVar;
        obj = this.zzexz.mLock;
        synchronized (obj) {
            zzaVar = this.zzexz.zzexu;
            zzaVar.zzb(this.zzeya);
            try {
                try {
                    zzbejVar = this.zzexz.zzext;
                    zzbejVar.zza(this.zzezb);
                    zzaVar2 = this.zzexz.zzexu;
                } catch (IllegalStateException unused) {
                    setResult((zzbh) zzb(new Status(2100)));
                    zzaVar2 = this.zzexz.zzexu;
                }
                zzaVar2.zzb(null);
            } catch (Throwable th) {
                zzaVar3 = this.zzexz.zzexu;
                zzaVar3.zzb(null);
                throw th;
            }
        }
    }
}
