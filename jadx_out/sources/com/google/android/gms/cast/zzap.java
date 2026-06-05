package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbej;
import com.google.android.gms.internal.zzbel;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzap extends RemoteMediaPlayer.zzb {
    private /* synthetic */ RemoteMediaPlayer zzexz;
    private /* synthetic */ GoogleApiClient zzeya;
    private /* synthetic */ JSONObject zzeyh;
    private /* synthetic */ MediaQueueItem[] zzeyi;
    private /* synthetic */ int zzeyj;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzap(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, MediaQueueItem[] mediaQueueItemArr, int i, JSONObject jSONObject) {
        super(googleApiClient);
        this.zzexz = remoteMediaPlayer;
        this.zzeya = googleApiClient2;
        this.zzeyi = mediaQueueItemArr;
        this.zzeyj = i;
        this.zzeyh = jSONObject;
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
                    zzbejVar.zza(this.zzezb, this.zzeyi, this.zzeyj, 0, -1, -1L, this.zzeyh);
                    zzaVar2 = this.zzexz.zzexu;
                } catch (zzbel | IllegalStateException unused) {
                    setResult((zzap) zzb(new Status(2100)));
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
