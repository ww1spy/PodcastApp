package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;

@Hide
/* loaded from: classes.dex */
public interface zzlt extends IInterface {
    void destroy() throws RemoteException;

    String getAdUnitId() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    zzmm getVideoController() throws RemoteException;

    boolean isLoading() throws RemoteException;

    boolean isReady() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void setManualImpressionsEnabled(boolean z) throws RemoteException;

    void setUserId(String str) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void stopLoading() throws RemoteException;

    void zza(zzafc zzafcVar) throws RemoteException;

    void zza(zzko zzkoVar) throws RemoteException;

    void zza(zzlf zzlfVar) throws RemoteException;

    void zza(zzli zzliVar) throws RemoteException;

    void zza(zzly zzlyVar) throws RemoteException;

    void zza(zzme zzmeVar) throws RemoteException;

    void zza(zzms zzmsVar) throws RemoteException;

    void zza(zzns zznsVar) throws RemoteException;

    void zza(zzpb zzpbVar) throws RemoteException;

    void zza(zzyx zzyxVar) throws RemoteException;

    void zza(zzzd zzzdVar, String str) throws RemoteException;

    boolean zzb(zzkk zzkkVar) throws RemoteException;

    IObjectWrapper zzbp() throws RemoteException;

    zzko zzbq() throws RemoteException;

    void zzbs() throws RemoteException;

    zzly zzcc() throws RemoteException;

    zzli zzcd() throws RemoteException;

    String zzco() throws RemoteException;
}
