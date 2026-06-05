package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

/* loaded from: classes.dex */
public final class zzlq extends zzev implements zzlo {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzlq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, publisherAdViewOptions);
        zzb(9, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzqh zzqhVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzqhVar);
        zzb(6, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzrs zzrsVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzrsVar);
        zzb(3, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzrv zzrvVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzrvVar);
        zzb(4, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzse zzseVar, zzko zzkoVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzseVar);
        zzex.zza(zzbc, zzkoVar);
        zzb(8, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(zzsh zzshVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzshVar);
        zzb(10, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zza(String str, zzsb zzsbVar, zzry zzryVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzbc.writeString(str);
        zzex.zza(zzbc, zzsbVar);
        zzex.zza(zzbc, zzryVar);
        zzb(5, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zzb(zzli zzliVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzliVar);
        zzb(2, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final void zzb(zzme zzmeVar) throws RemoteException {
        Parcel zzbc = zzbc();
        zzex.zza(zzbc, zzmeVar);
        zzb(7, zzbc);
    }

    @Override // com.google.android.gms.internal.zzlo
    public final zzll zzdi() throws RemoteException {
        zzll zzlnVar;
        Parcel zza = zza(1, zzbc());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzlnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzlnVar = queryLocalInterface instanceof zzll ? (zzll) queryLocalInterface : new zzln(readStrongBinder);
        }
        zza.recycle();
        return zzlnVar;
    }
}
