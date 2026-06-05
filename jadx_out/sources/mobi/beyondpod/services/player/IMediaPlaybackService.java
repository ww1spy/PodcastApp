package mobi.beyondpod.services.player;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IMediaPlaybackService extends IInterface {
    boolean canChangePlaybackSpeed() throws RemoteException;

    long duration() throws RemoteException;

    float getCurrentPlaybackSpeed() throws RemoteException;

    int gettimetosleep() throws RemoteException;

    void gotosleepin(int i) throws RemoteException;

    boolean isPlaying() throws RemoteException;

    void open(int i) throws RemoteException;

    void pause() throws RemoteException;

    void play() throws RemoteException;

    int playerType() throws RemoteException;

    long position() throws RemoteException;

    long seek(long j) throws RemoteException;

    void setPlaybackSpeed(float f, float f2) throws RemoteException;

    void startAndFadeIn() throws RemoteException;

    void stop() throws RemoteException;

    boolean supportsSpeedAlteration() throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMediaPlaybackService {
        private static final String DESCRIPTOR = "mobi.beyondpod.services.player.IMediaPlaybackService";
        static final int TRANSACTION_canChangePlaybackSpeed = 12;
        static final int TRANSACTION_duration = 7;
        static final int TRANSACTION_getCurrentPlaybackSpeed = 14;
        static final int TRANSACTION_gettimetosleep = 11;
        static final int TRANSACTION_gotosleepin = 10;
        static final int TRANSACTION_isPlaying = 2;
        static final int TRANSACTION_open = 1;
        static final int TRANSACTION_pause = 4;
        static final int TRANSACTION_play = 5;
        static final int TRANSACTION_playerType = 16;
        static final int TRANSACTION_position = 8;
        static final int TRANSACTION_seek = 9;
        static final int TRANSACTION_setPlaybackSpeed = 13;
        static final int TRANSACTION_startAndFadeIn = 6;
        static final int TRANSACTION_stop = 3;
        static final int TRANSACTION_supportsSpeedAlteration = 15;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMediaPlaybackService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMediaPlaybackService)) {
                return (IMediaPlaybackService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    open(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isPlaying = isPlaying();
                    parcel2.writeNoException();
                    parcel2.writeInt(isPlaying ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    stop();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    pause();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    play();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    startAndFadeIn();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    long duration = duration();
                    parcel2.writeNoException();
                    parcel2.writeLong(duration);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    long position = position();
                    parcel2.writeNoException();
                    parcel2.writeLong(position);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    long seek = seek(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeLong(seek);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    gotosleepin(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i3 = gettimetosleep();
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean canChangePlaybackSpeed = canChangePlaybackSpeed();
                    parcel2.writeNoException();
                    parcel2.writeInt(canChangePlaybackSpeed ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPlaybackSpeed(parcel.readFloat(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    float currentPlaybackSpeed = getCurrentPlaybackSpeed();
                    parcel2.writeNoException();
                    parcel2.writeFloat(currentPlaybackSpeed);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean supportsSpeedAlteration = supportsSpeedAlteration();
                    parcel2.writeNoException();
                    parcel2.writeInt(supportsSpeedAlteration ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int playerType = playerType();
                    parcel2.writeNoException();
                    parcel2.writeInt(playerType);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* loaded from: classes.dex */
        private static class Proxy implements IMediaPlaybackService {
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

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public void open(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public boolean isPlaying() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public void stop() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public void pause() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public void play() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public void startAndFadeIn() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public long duration() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public long position() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public long seek(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public void gotosleepin(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public int gettimetosleep() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public boolean canChangePlaybackSpeed() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public void setPlaybackSpeed(float f, float f2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeFloat(f);
                    obtain.writeFloat(f2);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public float getCurrentPlaybackSpeed() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public boolean supportsSpeedAlteration() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // mobi.beyondpod.services.player.IMediaPlaybackService
            public int playerType() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
