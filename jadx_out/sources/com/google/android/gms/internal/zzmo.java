package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class zzmo extends zzev implements zzmm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.zzmm
    public final float getAspectRatio() throws RemoteException {
        Parcel zza = zza(9, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final int getPlaybackState() throws RemoteException {
        Parcel zza = zza(5, zzbc());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isClickToExpandEnabled() throws RemoteException {
        Parcel zza = zza(12, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isCustomControlsEnabled() throws RemoteException {
        Parcel zza = zza(10, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final boolean isMuted() throws RemoteException {
        Parcel zza = zza(4, zzbc());
        boolean zza2 = zzex.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void mute(boolean z) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, z);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void pause() throws RemoteException {
        zzb(2, zzbc());
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void play() throws RemoteException {
        zzb(1, zzbc());
    }

    @Override // com.google.android.gms.internal.zzmm
    public final void zza(zzmp zzmpVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzmpVar);
        zzb(8, zzbc);
    }

    @Override // com.google.android.gms.internal.zzmm
    public final float zziq() throws RemoteException {
        Parcel zza = zza(6, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final float zzir() throws RemoteException {
        Parcel zza = zza(7, zzbc());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.zzmm
    public final zzmp zzis() throws RemoteException {
        zzmp zzmrVar;
        Parcel zza = zza(11, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzmrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            zzmrVar = queryLocalInterface instanceof zzmp ? (zzmp) queryLocalInterface : new zzmr(readStrongBinder);
        }
        zza.recycle();
        return zzmrVar;
    }
}
