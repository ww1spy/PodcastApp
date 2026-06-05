package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public class zzbea extends zzbdf<Status> {
    public zzbea(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.api.internal.zzm
    public void zza(zzbdp zzbdpVar) throws RemoteException {
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result zzb(Status status) {
        return status;
    }
}
