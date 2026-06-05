package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzata extends zzev implements zzasz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzata(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.analytics.internal.IAnalyticsService");
    }

    @Override // com.google.android.gms.internal.zzasz
    public final void zza(Map map, long j, String str, List<zzasf> list) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeMap(map);
        zzbc.writeLong(j);
        zzbc.writeString(str);
        zzbc.writeTypedList(list);
        zzb(1, zzbc);
    }

    @Override // com.google.android.gms.internal.zzasz
    public final void zzxr() throws RemoteException {
        zzb(2, zzbc());
    }
}
