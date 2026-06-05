package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public final class zznm extends zzaey {
    private zzafc zzbkk;

    @Override // com.google.android.gms.internal.zzaex
    public final void destroy() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaex
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.zzaex
    public final boolean isLoaded() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void pause() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void resume() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void setImmersiveMode(boolean z) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void setUserId(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void show() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zza(zzafc zzafcVar) throws RemoteException {
        this.zzbkk = zzafcVar;
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zza(zzafi zzafiVar) throws RemoteException {
        zzaky.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzako.zzaju.post(new zznn(this));
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzb(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzc(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaex
    public final void zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
    }
}
