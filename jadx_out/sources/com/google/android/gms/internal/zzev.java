package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public class zzev implements IInterface {
    private final IBinder zzala;
    private final String zzalb;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzev(IBinder iBinder, String str) {
        this.zzala = iBinder;
        this.zzalb = str;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.zzala;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zza(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.zzala.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzb(int i, Parcel parcel) throws RemoteException {
        Parcel obtain = Parcel.obtain();
        try {
            this.zzala.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel zzbc() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.zzalb);
        return obtain;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzc(int i, Parcel parcel) throws RemoteException {
        try {
            this.zzala.transact(i, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }
}
