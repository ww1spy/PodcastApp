package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzwy extends zzew implements zzwx {
    public zzwy() {
        attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0008. Please report as an issue. */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        String headline;
        IInterface zzkc;
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
                zzkc = zzkc();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkc);
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
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 9:
                headline = getStore();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 10:
                headline = getPrice();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 11:
                zzkc = getVideoController();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkc);
                return true;
            case 12:
                zzkc = zzki();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkc);
                return true;
            case 13:
                zzkc = zzmw();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkc);
                return true;
            case 14:
                zzkc = zzmx();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkc);
                return true;
            case 15:
                zzkc = zzkh();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkc);
                return true;
            case 16:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzex.zzb(parcel2, extras);
                return true;
            case 17:
                overrideImpressionRecording = getOverrideImpressionRecording();
                parcel2.writeNoException();
                zzex.zza(parcel2, overrideImpressionRecording);
                return true;
            case 18:
                overrideImpressionRecording = getOverrideClickHandling();
                parcel2.writeNoException();
                zzex.zza(parcel2, overrideImpressionRecording);
                return true;
            case 19:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 20:
                zzh(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                zzb(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), IObjectWrapper.zza.zzaq(parcel.readStrongBinder()), IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                zzj(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
