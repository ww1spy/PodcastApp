package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public interface zzlo extends IInterface {
    void zza(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException;

    void zza(zzqh zzqhVar) throws RemoteException;

    void zza(zzrs zzrsVar) throws RemoteException;

    void zza(zzrv zzrvVar) throws RemoteException;

    void zza(zzse zzseVar, zzko zzkoVar) throws RemoteException;

    void zza(zzsh zzshVar) throws RemoteException;

    void zza(String str, zzsb zzsbVar, zzry zzryVar) throws RemoteException;

    void zzb(zzli zzliVar) throws RemoteException;

    void zzb(zzme zzmeVar) throws RemoteException;

    zzll zzdi() throws RemoteException;
}
