package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbeg extends zzev implements zzbef {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbeg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.internal.ICastService");
    }

    @Override // com.google.android.gms.internal.zzbef
    public final void zza(com.google.android.gms.common.api.internal.zzca zzcaVar, String[] strArr, String str, List<com.google.android.gms.cast.zzbl> list) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzcaVar);
        zzbc.writeStringArray(strArr);
        zzbc.writeString(str);
        zzbc.writeTypedList(list);
        zzc(2, zzbc);
    }
}
