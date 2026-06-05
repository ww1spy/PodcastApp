package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzbff extends zzev implements zzbfe {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbff(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
    }

    @Override // com.google.android.gms.internal.zzbfe
    public final void disconnect() throws RemoteException {
        zzc(3, zzbc());
    }

    @Override // com.google.android.gms.internal.zzbfe
    public final void zza(zzbfc zzbfcVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbfcVar);
        zzc(6, zzbc);
    }

    @Override // com.google.android.gms.internal.zzbfe
    public final void zza(zzbfc zzbfcVar, int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbfcVar);
        zzbc.writeInt(i);
        zzc(5, zzbc);
    }

    @Override // com.google.android.gms.internal.zzbfe
    public final void zza(zzbfc zzbfcVar, PendingIntent pendingIntent, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbfcVar);
        zzex.zza(zzbc, pendingIntent);
        zzbc.writeString(str);
        zzbc.writeString(str2);
        zzex.zza(zzbc, bundle);
        zzc(8, zzbc);
    }

    @Override // com.google.android.gms.internal.zzbfe
    public final void zza(zzbfc zzbfcVar, zzbfg zzbfgVar, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzbfcVar);
        zzex.zza(zzbc, zzbfgVar);
        zzbc.writeString(str);
        zzbc.writeString(str2);
        zzex.zza(zzbc, bundle);
        zzc(7, zzbc);
    }
}
