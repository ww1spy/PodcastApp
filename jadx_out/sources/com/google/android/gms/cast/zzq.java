package com.google.android.gms.cast;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.Display;
import com.google.android.gms.common.api.internal.zzde;
import com.google.android.gms.internal.zzbez;
import com.google.android.gms.internal.zzbfe;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzq extends zzde<zzbez, Display> {
    private /* synthetic */ String zzetg;
    private /* synthetic */ int zzeuk;
    private /* synthetic */ PendingIntent zzeul;
    private /* synthetic */ CastDevice zzeum;
    final /* synthetic */ CastRemoteDisplayClient zzeun;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(CastRemoteDisplayClient castRemoteDisplayClient, int i, PendingIntent pendingIntent, CastDevice castDevice, String str) {
        this.zzeun = castRemoteDisplayClient;
        this.zzeuk = i;
        this.zzeul = pendingIntent;
        this.zzeum = castDevice;
        this.zzetg = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zzde
    public final /* synthetic */ void zza(zzbez zzbezVar, TaskCompletionSource<Display> taskCompletionSource) throws RemoteException {
        zzbez zzbezVar2 = zzbezVar;
        Bundle bundle = new Bundle();
        bundle.putInt("configuration", this.zzeuk);
        ((zzbfe) zzbezVar2.zzalw()).zza(new zzr(this, taskCompletionSource, zzbezVar2), this.zzeul, this.zzeum.getDeviceId(), this.zzetg, bundle);
    }
}
