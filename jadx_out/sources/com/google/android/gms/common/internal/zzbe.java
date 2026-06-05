package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzev;
import com.google.android.gms.internal.zzex;

/* loaded from: classes.dex */
public final class zzbe extends zzev implements zzbd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbe(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    @Override // com.google.android.gms.common.internal.zzbd
    public final IObjectWrapper zza(IObjectWrapper iObjectWrapper, zzbv zzbvVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, iObjectWrapper);
        zzex.zza(zzbc, zzbvVar);
        Parcel zza = zza(2, zzbc);
        IObjectWrapper zzaq = IObjectWrapper.zza.zzaq(zza.readStrongBinder());
        zza.recycle();
        return zzaq;
    }
}
