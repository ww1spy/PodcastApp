package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzwv extends zzew implements zzwu {
    public zzwv() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0008. Please report as an issue. */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        String headline;
        IInterface zzkj;
        boolean overrideImpressionRecording;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 2:
                headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 3:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 4:
                headline = getBody();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 5:
                zzkj = zzkj();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkj);
                return true;
            case 6:
                headline = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 7:
                headline = getAdvertiser();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 8:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 9:
                zzh(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 10:
                zzi(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
                overrideImpressionRecording = getOverrideImpressionRecording();
                parcel2.writeNoException();
                zzex.zza(parcel2, overrideImpressionRecording);
                return true;
            case 12:
                overrideImpressionRecording = getOverrideClickHandling();
                parcel2.writeNoException();
                zzex.zza(parcel2, overrideImpressionRecording);
                return true;
            case 13:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzex.zzb(parcel2, extras);
                return true;
            case 14:
                zzj(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzkj = zzmw();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkj);
                return true;
            case 16:
                zzkj = getVideoController();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkj);
                return true;
            case 17:
            case 18:
            default:
                return false;
            case 19:
                zzkj = zzki();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkj);
                return true;
            case 20:
                zzkj = zzmx();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkj);
                return true;
            case 21:
                zzkj = zzkh();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkj);
                return true;
            case 22:
                zzb(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
