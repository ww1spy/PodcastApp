package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Hide;

@Hide
@Deprecated
/* loaded from: classes.dex */
public final class zzbfa extends com.google.android.gms.common.internal.zzab<zzbfe> implements IBinder.DeathRecipient {
    private static final zzbei zzeus = new zzbei("CastRemoteDisplayClientImpl");
    private CastDevice zzetm;
    private CastRemoteDisplay.CastRemoteDisplaySessionCallbacks zzfov;
    private Bundle zzfow;

    public zzbfa(Context context, Looper looper, com.google.android.gms.common.internal.zzr zzrVar, CastDevice castDevice, Bundle bundle, CastRemoteDisplay.CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 83, zzrVar, connectionCallbacks, onConnectionFailedListener);
        zzeus.zzb("instance created", new Object[0]);
        this.zzfov = castRemoteDisplaySessionCallbacks;
        this.zzetm = castDevice;
        this.zzfow = bundle;
    }

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public final void disconnect() {
        zzeus.zzb("disconnect", new Object[0]);
        this.zzfov = null;
        this.zzetm = null;
        try {
            ((zzbfe) zzalw()).disconnect();
        } catch (RemoteException | IllegalStateException unused) {
        } finally {
            super.disconnect();
        }
    }

    public final void zza(zzbfc zzbfcVar) throws RemoteException {
        zzeus.zzb("stopRemoteDisplay", new Object[0]);
        ((zzbfe) zzalw()).zza(zzbfcVar);
    }

    public final void zza(zzbfc zzbfcVar, zzbfg zzbfgVar, String str) throws RemoteException {
        zzeus.zzb("startRemoteDisplay", new Object[0]);
        ((zzbfe) zzalw()).zza(zzbfcVar, new zzbfb(this, zzbfgVar), this.zzetm.getDeviceId(), str, this.zzfow);
    }

    @Override // com.google.android.gms.common.internal.zzd
    public final /* synthetic */ IInterface zzd(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
        return queryLocalInterface instanceof zzbfe ? (zzbfe) queryLocalInterface : new zzbff(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected final String zzhm() {
        return "com.google.android.gms.cast.remote_display.service.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    public final String zzhn() {
        return "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService";
    }
}
