package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbej;
import com.google.android.gms.internal.zzbel;
import java.util.Locale;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzba extends RemoteMediaPlayer.zzb {
    private /* synthetic */ RemoteMediaPlayer zzexz;
    private /* synthetic */ GoogleApiClient zzeya;
    private /* synthetic */ JSONObject zzeyh;
    private /* synthetic */ int zzeyr;
    private /* synthetic */ int zzeys;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzba(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, int i2, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        super(googleApiClient);
        this.zzexz = remoteMediaPlayer;
        this.zzeyr = i;
        this.zzeys = i2;
        this.zzeya = googleApiClient2;
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
        int zzbc;
        RemoteMediaPlayer.zza zzaVar;
        RemoteMediaPlayer.zza zzaVar2;
        RemoteMediaPlayer.zza zzaVar3;
        zzbej zzbejVar;
        obj = this.zzexz.mLock;
        synchronized (obj) {
            zzbc = this.zzexz.zzbc(this.zzeyr);
            if (zzbc == -1) {
                setResult((zzba) zzb(new Status(0)));
                return;
            }
            if (this.zzeys < 0) {
                setResult((zzba) zzb(new Status(CastStatusCodes.INVALID_REQUEST, String.format(Locale.ROOT, "Invalid request: Invalid newIndex %d.", Integer.valueOf(this.zzeys)))));
                return;
            }
            if (zzbc == this.zzeys) {
                setResult((zzba) zzb(new Status(0)));
                return;
            }
            MediaQueueItem queueItem = this.zzexz.getMediaStatus().getQueueItem(this.zzeys > zzbc ? this.zzeys + 1 : this.zzeys);
            int itemId = queueItem != null ? queueItem.getItemId() : 0;
            zzaVar = this.zzexz.zzexu;
            zzaVar.zzb(this.zzeya);
            try {
                try {
                    zzbejVar = this.zzexz.zzext;
                    zzbejVar.zza(this.zzezb, new int[]{this.zzeyr}, itemId, this.zzeyh);
                    zzaVar2 = this.zzexz.zzexu;
                } catch (zzbel | IllegalStateException unused) {
                    setResult((zzba) zzb(new Status(2100)));
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
