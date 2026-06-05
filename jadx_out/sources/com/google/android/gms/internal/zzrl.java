package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzrl extends zzew implements zzrk {
    public zzrl() {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0008. Please report as an issue. */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        IInterface zzkd;
        String headline;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 2:
                zzkd = zzkd();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkd);
                return true;
            case 3:
                headline = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 4:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 5:
                headline = getBody();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 6:
                zzkd = zzkj();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkd);
                return true;
            case 7:
                headline = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 8:
                headline = getAdvertiser();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 9:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzex.zzb(parcel2, extras);
                return true;
            case 10:
                destroy();
                parcel2.writeNoException();
                return true;
            case 11:
                zzkd = getVideoController();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkd);
                return true;
            case 12:
                performClick((Bundle) zzex.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean recordImpression = recordImpression((Bundle) zzex.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzex.zza(parcel2, recordImpression);
                return true;
            case 14:
                reportTouchEvent((Bundle) zzex.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                zzkd = zzki();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkd);
                return true;
            case 16:
                zzkd = zzkh();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzkd);
                return true;
            case 17:
                headline = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            default:
                return false;
        }
    }
}
