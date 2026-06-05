package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

/* loaded from: classes.dex */
final class zzbgw extends zzbgz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbgw(zzbgv zzbgvVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.zzm
    protected final /* synthetic */ void zza(zzbha zzbhaVar) throws RemoteException {
        ((zzbhd) zzbhaVar.zzalw()).zza(new zzbgx(this));
    }
}
