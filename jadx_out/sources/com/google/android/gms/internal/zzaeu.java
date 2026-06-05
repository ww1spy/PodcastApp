package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public interface zzaeu extends IInterface {
    int getAmount() throws RemoteException;

    String getType() throws RemoteException;
}
