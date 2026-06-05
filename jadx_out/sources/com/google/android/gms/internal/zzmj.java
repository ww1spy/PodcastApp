package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zzmj extends zzev implements zzmh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void initialize() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void setAppMuted(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(4, zzbc);
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void setAppVolume(float f) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeFloat(f);
        zzb(2, zzbc);
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void zza(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        zzex.zza(zzbc, iObjectWrapper);
        zzb(6, zzbc);
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void zzb(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzbc.writeString(str);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.internal.zzmh
    public final float zzdp() throws RemoteException {
        Parcel zza = zza(7, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.zzmh
    public final boolean zzdq() throws RemoteException {
        Parcel zza = zza(8, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzmh
    public final void zzu(String str) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        zzb(3, zzbc);
    }
}
