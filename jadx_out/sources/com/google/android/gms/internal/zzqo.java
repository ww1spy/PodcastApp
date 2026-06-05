package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import java.util.List;

@Hide
/* loaded from: classes.dex */
public interface zzqo extends IInterface {
    String getText() throws RemoteException;

    List<zzqs> zzjw() throws RemoteException;
}
