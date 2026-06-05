package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdp;
import com.google.android.gms.internal.zzbea;

/* loaded from: classes.dex */
final class zzf extends zzbea {
    private /* synthetic */ String val$message;
    private /* synthetic */ String zzetf;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(Cast.CastApi.zza zzaVar, GoogleApiClient googleApiClient, String str, String str2) {
        super(googleApiClient);
        this.zzetf = str;
        this.val$message = str2;
    }

    @Override // com.google.android.gms.internal.zzbea, com.google.android.gms.common.api.internal.zzm
    public final /* bridge */ /* synthetic */ void zza(zzbdp zzbdpVar) throws RemoteException {
        zza(zzbdpVar);
    }

    @Override // com.google.android.gms.internal.zzbea
    /* renamed from: zza, reason: avoid collision after fix types in other method */
    public final void zza2(zzbdp zzbdpVar) throws RemoteException {
        try {
            zzbdpVar.zza(this.zzetf, this.val$message, this);
        } catch (IllegalArgumentException | IllegalStateException unused) {
            zzbj(CastStatusCodes.INVALID_REQUEST);
        }
    }
}
