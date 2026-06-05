package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbea;

/* loaded from: classes.dex */
final class zzk extends zzbea {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(Cast.CastApi.zza zzaVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.internal.zzbea, com.google.android.gms.common.api.internal.zzm
    public final /* bridge */ /* synthetic */ void zza(zzbdp zzbdpVar) throws RemoteException {
        zza(zzbdpVar);
    }

    @Override // com.google.android.gms.internal.zzbea
    /* renamed from: zza, reason: avoid collision after fix types in other method */
    public final void zza2(zzbdp zzbdpVar) throws RemoteException {
        try {
            zzbdpVar.zza("", this);
        } catch (IllegalStateException unused) {
            zzbj(CastStatusCodes.INVALID_REQUEST);
        }
    }
}
