package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import android.view.Surface;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public interface zzbfc extends IInterface {
    void onDisconnected() throws RemoteException;

    void onError(int i) throws RemoteException;

    void zza(int i, int i2, Surface surface) throws RemoteException;

    void zzado() throws RemoteException;
}
