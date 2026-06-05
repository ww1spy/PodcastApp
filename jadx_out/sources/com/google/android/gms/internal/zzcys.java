package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzcys extends zzev implements zzcyr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcys(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    @Override // com.google.android.gms.internal.zzcyr
    public final void zza(com.google.android.gms.common.internal.zzan zzanVar, int i, boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzanVar);
        zzbc.writeInt(i);
        zzex.zza(zzbc, z);
        zzb(9, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcyr
    public final void zza(zzcyu zzcyuVar, zzcyp zzcypVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzcyuVar);
        zzex.zza(zzbc, zzcypVar);
        zzb(12, zzbc);
    }

    @Override // com.google.android.gms.internal.zzcyr
    public final void zzev(int i) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeInt(i);
        zzb(7, zzbc);
    }
}
