package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;

@Hide
/* loaded from: classes.dex */
public interface zzrb extends IInterface {
    void unregisterNativeAd() throws RemoteException;

    void zza(IObjectWrapper iObjectWrapper) throws RemoteException;
}
