package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.zzde;
import com.google.android.gms.internal.zzbez;
import com.google.android.gms.internal.zzbfe;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzs extends zzde<zzbez, Void> {
    final /* synthetic */ CastRemoteDisplayClient zzeun;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzs(CastRemoteDisplayClient castRemoteDisplayClient) {
        this.zzeun = castRemoteDisplayClient;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzde
    public final /* synthetic */ void zza(zzbez zzbezVar, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException {
        ((zzbfe) zzbezVar.zzalw()).zza(new zzt(this, taskCompletionSource));
    }
}
