package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdp;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzi extends Cast.zza {
    private /* synthetic */ String val$sessionId;
    private /* synthetic */ String zzetg;
    private /* synthetic */ zzab zzeti = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzi(Cast.CastApi.zza zzaVar, GoogleApiClient googleApiClient, String str, String str2, zzab zzabVar) {
        super(googleApiClient);
        this.zzetg = str;
        this.val$sessionId = str2;
    }

    @Override // com.google.android.gms.cast.Cast.zza, com.google.android.gms.common.api.internal.zzm
    public final /* bridge */ /* synthetic */ void zza(zzbdp zzbdpVar) throws RemoteException {
        zza(zzbdpVar);
    }

    @Override // com.google.android.gms.cast.Cast.zza
    public final void zza(zzbdp zzbdpVar) throws RemoteException {
        try {
            zzbdpVar.zza(this.zzetg, this.val$sessionId, this.zzeti, this);
        } catch (IllegalStateException unused) {
            zzbj(CastStatusCodes.INVALID_REQUEST);
        }
    }
}
