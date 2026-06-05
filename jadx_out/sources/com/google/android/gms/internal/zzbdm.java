package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzbdm extends com.google.android.gms.common.api.internal.zzcb {
    private /* synthetic */ TaskCompletionSource zzeuo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbdm(zzbdl zzbdlVar, TaskCompletionSource taskCompletionSource) {
        this.zzeuo = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.zzca
    public final void zzn(Status status) throws RemoteException {
        com.google.android.gms.common.api.internal.zzdf.zza(status, null, this.zzeuo);
    }
}
