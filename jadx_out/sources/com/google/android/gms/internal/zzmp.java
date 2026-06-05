package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public interface zzmp extends IInterface {
    void onVideoEnd() throws RemoteException;

    void onVideoMute(boolean z) throws RemoteException;

    void onVideoPause() throws RemoteException;

    void onVideoPlay() throws RemoteException;

    void onVideoStart() throws RemoteException;
}
