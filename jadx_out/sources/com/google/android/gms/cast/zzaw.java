package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.MediaLoadOptions;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbej;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaw extends RemoteMediaPlayer.zzb {
    private /* synthetic */ RemoteMediaPlayer zzexz;
    private /* synthetic */ GoogleApiClient zzeya;
    private /* synthetic */ long zzeyg;
    private /* synthetic */ JSONObject zzeyh;
    private /* synthetic */ boolean zzeyo;
    private /* synthetic */ long[] zzeyp;
    private /* synthetic */ MediaInfo zzeyq;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaw(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, GoogleApiClient googleApiClient2, boolean z, long j, long[] jArr, JSONObject jSONObject, MediaInfo mediaInfo) {
        super(googleApiClient);
        this.zzexz = remoteMediaPlayer;
        this.zzeya = googleApiClient2;
        this.zzeyo = z;
        this.zzeyg = j;
        this.zzeyp = jArr;
        this.zzeyh = jSONObject;
        this.zzeyq = mediaInfo;
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
            MediaLoadOptions build = new MediaLoadOptions.Builder().setAutoplay(this.zzeyo).setPlayPosition(this.zzeyg).setActiveTrackIds(this.zzeyp).setCustomData(this.zzeyh).build();
            try {
                try {
                    zzbejVar = this.zzexz.zzext;
                    zzbejVar.zza(this.zzezb, this.zzeyq, build);
                    zzaVar2 = this.zzexz.zzexu;
                } catch (Throwable th) {
                    zzaVar3 = this.zzexz.zzexu;
                    zzaVar3.zzb(null);
                    throw th;
                }
            } catch (IllegalStateException unused) {
                setResult((zzaw) zzb(new Status(2100)));
                zzaVar2 = this.zzexz.zzexu;
            }
            zzaVar2.zzb(null);
        }
    }
}
