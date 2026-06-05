package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public interface zzbfe extends IInterface {
    void disconnect() throws RemoteException;

    void zza(zzbfc zzbfcVar) throws RemoteException;

    void zza(zzbfc zzbfcVar, int i) throws RemoteException;

    void zza(zzbfc zzbfcVar, PendingIntent pendingIntent, String str, String str2, Bundle bundle) throws RemoteException;

    void zza(zzbfc zzbfcVar, zzbfg zzbfgVar, String str, String str2, Bundle bundle) throws RemoteException;
}
