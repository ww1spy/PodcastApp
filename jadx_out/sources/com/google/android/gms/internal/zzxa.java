package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzxa extends zzmn {
    private final Object mLock = new Object();
    private volatile zzmp zzcjx;

    @Override // com.google.android.gms.internal.zzmm
    public final float getAspectRatio() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final int getPlaybackState() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isClickToExpandEnabled() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isCustomControlsEnabled() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isMuted() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void mute(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void pause() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void play() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void zza(zzmp zzmpVar) throws RemoteException {
        synchronized (this.mLock) {
            this.zzcjx = zzmpVar;
        }
    }

    @Override // com.google.android.gms.internal.zzmm
    public final float zziq() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final float zzir() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.zzmm
    public final zzmp zzis() throws RemoteException {
        zzmp zzmpVar;
        synchronized (this.mLock) {
            zzmpVar = this.zzcjx;
        }
        return zzmpVar;
    }
}
