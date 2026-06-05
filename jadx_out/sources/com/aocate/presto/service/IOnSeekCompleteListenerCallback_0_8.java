package com.aocate.presto.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IOnSeekCompleteListenerCallback_0_8 extends IInterface {
    void onSeekComplete() throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IOnSeekCompleteListenerCallback_0_8 {
        private static final String DESCRIPTOR = "com.aocate.presto.service.IOnSeekCompleteListenerCallback_0_8";
        static final int TRANSACTION_onSeekComplete = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IOnSeekCompleteListenerCallback_0_8 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOnSeekCompleteListenerCallback_0_8)) {
                return (IOnSeekCompleteListenerCallback_0_8) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            onSeekComplete();
            parcel2.writeNoException();
            return true;
        }

        /* loaded from: classes.dex */
        private static class Proxy implements IOnSeekCompleteListenerCallback_0_8 {
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.aocate.presto.service.IOnSeekCompleteListenerCallback_0_8
            public void onSeekComplete() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
