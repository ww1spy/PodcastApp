package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzbdp;

/* loaded from: classes.dex */
final class zzg extends Cast.zza {
    private /* synthetic */ String zzetg;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzg(Cast.CastApi.zza zzaVar, GoogleApiClient googleApiClient, String str) {
        super(googleApiClient);
        this.zzetg = str;
    }

    @Override // com.google.android.gms.cast.Cast.zza, com.google.android.gms.common.api.internal.zzm
    public final /* bridge */ /* synthetic */ void zza(zzbdp zzbdpVar) throws RemoteException {
        zza(zzbdpVar);
    }

    @Override // com.google.android.gms.cast.Cast.zza
    public final void zza(zzbdp zzbdpVar) throws RemoteException {
        try {
            String str = this.zzetg;
            LaunchOptions launchOptions = new LaunchOptions();
            launchOptions.setRelaunchIfRunning(false);
            zzbdpVar.zza(str, launchOptions, this);
        } catch (IllegalStateException unused) {
            zzbj(CastStatusCodes.INVALID_REQUEST);
        }
    }
}
