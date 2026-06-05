package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzrp extends zzew implements zzro {
    public zzrp() {
        attachInterface(this, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzro zzn(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof zzro ? (zzro) queryLocalInterface : new zzrq(iBinder);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0008. Please report as an issue. */
    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        String zzap;
        IInterface zzaq;
        if (zza(i, parcel, parcel2, i2)) {
            return true;
        }
        switch (i) {
            case 1:
                zzap = zzap(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(zzap);
                return true;
            case 2:
                zzaq = zzaq(parcel.readString());
                parcel2.writeNoException();
                zzex.zza(parcel2, zzaq);
                return true;
            case 3:
                List<String> availableAssetNames = getAvailableAssetNames();
                parcel2.writeNoException();
                parcel2.writeStringList(availableAssetNames);
                return true;
            case 4:
                zzap = getCustomTemplateId();
                parcel2.writeNoException();
                parcel2.writeString(zzap);
                return true;
            case 5:
                performClick(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 7:
                zzaq = getVideoController();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzaq);
                return true;
            case 8:
                destroy();
                parcel2.writeNoException();
                return true;
            case 9:
                zzaq = zzkk();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzaq);
                return true;
            case 10:
                boolean zzf = zzf(IObjectWrapper.zza.zzaq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzex.zza(parcel2, zzf);
                return true;
            case 11:
                zzaq = zzkd();
                parcel2.writeNoException();
                zzex.zza(parcel2, zzaq);
                return true;
            default:
                return false;
        }
    }
}
