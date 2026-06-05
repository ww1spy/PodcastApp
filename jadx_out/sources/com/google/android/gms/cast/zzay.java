package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbej;
import com.google.android.gms.internal.zzbel;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzay extends RemoteMediaPlayer.zzb {
    private /* synthetic */ RemoteMediaPlayer zzexz;
    private /* synthetic */ GoogleApiClient zzeya;
    private /* synthetic */ JSONObject zzeyh;
    private /* synthetic */ int zzeyr;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzay(RemoteMediaPlayer remoteMediaPlayer, GoogleApiClient googleApiClient, int i, GoogleApiClient googleApiClient2, JSONObject jSONObject) {
        super(googleApiClient);
        this.zzexz = remoteMediaPlayer;
        this.zzeyr = i;
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
                setResult((zzay) zzb(new Status(0)));
                return;
            }
            zzaVar = this.zzexz.zzexu;
            zzaVar.zzb(this.zzeya);
            try {
                try {
                    zzbejVar = this.zzexz.zzext;
                    zzbejVar.zza(this.zzezb, new int[]{this.zzeyr}, this.zzeyh);
                    zzaVar2 = this.zzexz.zzexu;
                } catch (Throwable th) {
                    zzaVar3 = this.zzexz.zzexu;
                    zzaVar3.zzb(null);
                    throw th;
                }
            } catch (zzbel | IllegalStateException unused) {
                setResult((zzay) zzb(new Status(2100)));
                zzaVar2 = this.zzexz.zzexu;
            }
            zzaVar2.zzb(null);
        }
    }
}
