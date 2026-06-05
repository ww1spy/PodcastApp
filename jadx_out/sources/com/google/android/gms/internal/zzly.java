package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public interface zzly extends IInterface {
    void onAppEvent(String str, String str2) throws RemoteException;
}
