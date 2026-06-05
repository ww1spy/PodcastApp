package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class zzmn extends zzew implements zzmm {
    public zzmn() {
        attachInterface(this, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzmm zzh(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return queryLocalInterface instanceof zzmm ? (zzmm) queryLocalInterface : new zzmo(iBinder);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0008. Please report as an issue. */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        boolean isMuted;
        float zziq;
        zzmp zzmrVar;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                play();
                parcel2.writeNoException();
                return true;
            case 2:
                pause();
                parcel2.writeNoException();
                return true;
            case 3:
                mute(zzex.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 4:
                isMuted = isMuted();
                parcel2.writeNoException();
                zzex.zza(parcel2, isMuted);
                return true;
            case 5:
                int playbackState = getPlaybackState();
                parcel2.writeNoException();
                parcel2.writeInt(playbackState);
                return true;
            case 6:
                zziq = zziq();
                parcel2.writeNoException();
                parcel2.writeFloat(zziq);
                return true;
            case 7:
                zziq = zzir();
                parcel2.writeNoException();
                parcel2.writeFloat(zziq);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzmrVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    zzmrVar = queryLocalInterface instanceof zzmp ? (zzmp) queryLocalInterface : new zzmr(readStrongBinder);
                }
                zza(zzmrVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zziq = getAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(zziq);
                return true;
            case 10:
                isMuted = isCustomControlsEnabled();
                parcel2.writeNoException();
                zzex.zza(parcel2, isMuted);
                return true;
            case 11:
                zzmp zzis = zzis();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzis);
                return true;
            case 12:
                isMuted = isClickToExpandEnabled();
                parcel2.writeNoException();
                zzex.zza(parcel2, isMuted);
                return true;
            default:
                return false;
        }
    }
}
