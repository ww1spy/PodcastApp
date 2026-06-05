package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.CastRemoteDisplayClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zzdf;
import com.google.android.gms.internal.zzbei;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzt extends CastRemoteDisplayClient.zza {
    private /* synthetic */ TaskCompletionSource zzeuo;
    private /* synthetic */ zzs zzeur;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzt(zzs zzsVar, TaskCompletionSource taskCompletionSource) {
        super(null);
        this.zzeur = zzsVar;
        this.zzeuo = taskCompletionSource;
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayClient.zza, com.google.android.gms.internal.zzbfc
    public final void onDisconnected() throws RemoteException {
        zzbei zzbeiVar;
        zzbeiVar = this.zzeur.zzeun.zzeui;
        zzbeiVar.zzb("onDisconnected", new Object[0]);
        this.zzeur.zzeun.zzadn();
        zzdf.zza(Status.zzftq, null, this.zzeuo);
    }

    @Override // com.google.android.gms.cast.CastRemoteDisplayClient.zza, com.google.android.gms.internal.zzbfc
    public final void onError(int i) throws RemoteException {
        zzbei zzbeiVar;
        zzbeiVar = this.zzeur.zzeun.zzeui;
        zzbeiVar.zzb("onError: %d", Integer.valueOf(i));
        this.zzeur.zzeun.zzadn();
        zzdf.zza(Status.zzfts, null, this.zzeuo);
    }
}
