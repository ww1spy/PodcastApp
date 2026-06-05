package com.aocate.presto.service;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.aocate.presto.service.IDeathCallback_0_8;
import com.aocate.presto.service.IOnBufferingUpdateListenerCallback_0_8;
import com.aocate.presto.service.IOnCompletionListenerCallback_0_8;
import com.aocate.presto.service.IOnErrorListenerCallback_0_8;
import com.aocate.presto.service.IOnInfoListenerCallback_0_8;
import com.aocate.presto.service.IOnPitchAdjustmentAvailableChangedListenerCallback_0_8;
import com.aocate.presto.service.IOnPreparedListenerCallback_0_8;
import com.aocate.presto.service.IOnSeekCompleteListenerCallback_0_8;
import com.aocate.presto.service.IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8;

/* loaded from: classes.dex */
public interface IPlayMedia_0_8 extends IInterface {
    boolean canSetPitch(long j) throws RemoteException;

    boolean canSetSpeed(long j) throws RemoteException;

    float getCurrentPitchStepsAdjustment(long j) throws RemoteException;

    int getCurrentPosition(long j) throws RemoteException;

    float getCurrentSpeedMultiplier(long j) throws RemoteException;

    int getDuration(long j) throws RemoteException;

    float getMaxSpeedMultiplier(long j) throws RemoteException;

    float getMinSpeedMultiplier(long j) throws RemoteException;

    int getVersionCode() throws RemoteException;

    String getVersionName() throws RemoteException;

    boolean isLooping(long j) throws RemoteException;

    boolean isPlaying(long j) throws RemoteException;

    void pause(long j) throws RemoteException;

    void prepare(long j) throws RemoteException;

    void prepareAsync(long j) throws RemoteException;

    void registerOnBufferingUpdateCallback(long j, IOnBufferingUpdateListenerCallback_0_8 iOnBufferingUpdateListenerCallback_0_8) throws RemoteException;

    void registerOnCompletionCallback(long j, IOnCompletionListenerCallback_0_8 iOnCompletionListenerCallback_0_8) throws RemoteException;

    void registerOnErrorCallback(long j, IOnErrorListenerCallback_0_8 iOnErrorListenerCallback_0_8) throws RemoteException;

    void registerOnInfoCallback(long j, IOnInfoListenerCallback_0_8 iOnInfoListenerCallback_0_8) throws RemoteException;

    void registerOnPitchAdjustmentAvailableChangedCallback(long j, IOnPitchAdjustmentAvailableChangedListenerCallback_0_8 iOnPitchAdjustmentAvailableChangedListenerCallback_0_8) throws RemoteException;

    void registerOnPreparedCallback(long j, IOnPreparedListenerCallback_0_8 iOnPreparedListenerCallback_0_8) throws RemoteException;

    void registerOnSeekCompleteCallback(long j, IOnSeekCompleteListenerCallback_0_8 iOnSeekCompleteListenerCallback_0_8) throws RemoteException;

    void registerOnSpeedAdjustmentAvailableChangedCallback(long j, IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8 iOnSpeedAdjustmentAvailableChangedListenerCallback_0_8) throws RemoteException;

    void release(long j) throws RemoteException;

    void reset(long j) throws RemoteException;

    void seekTo(long j, int i) throws RemoteException;

    void setAudioStreamType(long j, int i) throws RemoteException;

    void setDataSourceString(long j, String str) throws RemoteException;

    void setDataSourceUri(long j, Uri uri) throws RemoteException;

    void setEnableSpeedAdjustment(long j, boolean z) throws RemoteException;

    void setLooping(long j, boolean z) throws RemoteException;

    void setPitchStepsAdjustment(long j, float f) throws RemoteException;

    void setPlaybackPitch(long j, float f) throws RemoteException;

    void setPlaybackSpeed(long j, float f) throws RemoteException;

    void setSpeedAdjustmentAlgorithm(long j, int i) throws RemoteException;

    void setVolume(long j, float f, float f2) throws RemoteException;

    void start(long j) throws RemoteException;

    long startSession(IDeathCallback_0_8 iDeathCallback_0_8) throws RemoteException;

    void stop(long j) throws RemoteException;

    void unregisterOnBufferingUpdateCallback(long j, IOnBufferingUpdateListenerCallback_0_8 iOnBufferingUpdateListenerCallback_0_8) throws RemoteException;

    void unregisterOnCompletionCallback(long j, IOnCompletionListenerCallback_0_8 iOnCompletionListenerCallback_0_8) throws RemoteException;

    void unregisterOnErrorCallback(long j, IOnErrorListenerCallback_0_8 iOnErrorListenerCallback_0_8) throws RemoteException;

    void unregisterOnInfoCallback(long j, IOnInfoListenerCallback_0_8 iOnInfoListenerCallback_0_8) throws RemoteException;

    void unregisterOnPitchAdjustmentAvailableChangedCallback(long j, IOnPitchAdjustmentAvailableChangedListenerCallback_0_8 iOnPitchAdjustmentAvailableChangedListenerCallback_0_8) throws RemoteException;

    void unregisterOnPreparedCallback(long j, IOnPreparedListenerCallback_0_8 iOnPreparedListenerCallback_0_8) throws RemoteException;

    void unregisterOnSeekCompleteCallback(long j, IOnSeekCompleteListenerCallback_0_8 iOnSeekCompleteListenerCallback_0_8) throws RemoteException;

    void unregisterOnSpeedAdjustmentAvailableChangedCallback(long j, IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8 iOnSpeedAdjustmentAvailableChangedListenerCallback_0_8) throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IPlayMedia_0_8 {
        private static final String DESCRIPTOR = "com.aocate.presto.service.IPlayMedia_0_8";
        static final int TRANSACTION_canSetPitch = 1;
        static final int TRANSACTION_canSetSpeed = 2;
        static final int TRANSACTION_getCurrentPitchStepsAdjustment = 3;
        static final int TRANSACTION_getCurrentPosition = 4;
        static final int TRANSACTION_getCurrentSpeedMultiplier = 5;
        static final int TRANSACTION_getDuration = 6;
        static final int TRANSACTION_getMaxSpeedMultiplier = 7;
        static final int TRANSACTION_getMinSpeedMultiplier = 8;
        static final int TRANSACTION_getVersionCode = 9;
        static final int TRANSACTION_getVersionName = 10;
        static final int TRANSACTION_isLooping = 11;
        static final int TRANSACTION_isPlaying = 12;
        static final int TRANSACTION_pause = 13;
        static final int TRANSACTION_prepare = 14;
        static final int TRANSACTION_prepareAsync = 15;
        static final int TRANSACTION_registerOnBufferingUpdateCallback = 16;
        static final int TRANSACTION_registerOnCompletionCallback = 17;
        static final int TRANSACTION_registerOnErrorCallback = 18;
        static final int TRANSACTION_registerOnInfoCallback = 19;
        static final int TRANSACTION_registerOnPitchAdjustmentAvailableChangedCallback = 20;
        static final int TRANSACTION_registerOnPreparedCallback = 21;
        static final int TRANSACTION_registerOnSeekCompleteCallback = 22;
        static final int TRANSACTION_registerOnSpeedAdjustmentAvailableChangedCallback = 23;
        static final int TRANSACTION_release = 24;
        static final int TRANSACTION_reset = 25;
        static final int TRANSACTION_seekTo = 26;
        static final int TRANSACTION_setAudioStreamType = 27;
        static final int TRANSACTION_setDataSourceString = 28;
        static final int TRANSACTION_setDataSourceUri = 29;
        static final int TRANSACTION_setEnableSpeedAdjustment = 30;
        static final int TRANSACTION_setLooping = 31;
        static final int TRANSACTION_setPitchStepsAdjustment = 32;
        static final int TRANSACTION_setPlaybackPitch = 33;
        static final int TRANSACTION_setPlaybackSpeed = 34;
        static final int TRANSACTION_setSpeedAdjustmentAlgorithm = 35;
        static final int TRANSACTION_setVolume = 36;
        static final int TRANSACTION_start = 37;
        static final int TRANSACTION_startSession = 38;
        static final int TRANSACTION_stop = 39;
        static final int TRANSACTION_unregisterOnBufferingUpdateCallback = 40;
        static final int TRANSACTION_unregisterOnCompletionCallback = 41;
        static final int TRANSACTION_unregisterOnErrorCallback = 42;
        static final int TRANSACTION_unregisterOnInfoCallback = 43;
        static final int TRANSACTION_unregisterOnPitchAdjustmentAvailableChangedCallback = 44;
        static final int TRANSACTION_unregisterOnPreparedCallback = 45;
        static final int TRANSACTION_unregisterOnSeekCompleteCallback = 46;
        static final int TRANSACTION_unregisterOnSpeedAdjustmentAvailableChangedCallback = 47;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPlayMedia_0_8 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IPlayMedia_0_8)) {
                return (IPlayMedia_0_8) queryLocalInterface;
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
                    boolean canSetPitch = canSetPitch(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(canSetPitch ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean canSetSpeed = canSetSpeed(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(canSetSpeed ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    float currentPitchStepsAdjustment = getCurrentPitchStepsAdjustment(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeFloat(currentPitchStepsAdjustment);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentPosition = getCurrentPosition(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(currentPosition);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    float currentSpeedMultiplier = getCurrentSpeedMultiplier(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeFloat(currentSpeedMultiplier);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int duration = getDuration(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(duration);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    float maxSpeedMultiplier = getMaxSpeedMultiplier(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeFloat(maxSpeedMultiplier);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    float minSpeedMultiplier = getMinSpeedMultiplier(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeFloat(minSpeedMultiplier);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int versionCode = getVersionCode();
                    parcel2.writeNoException();
                    parcel2.writeInt(versionCode);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String versionName = getVersionName();
                    parcel2.writeNoException();
                    parcel2.writeString(versionName);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isLooping = isLooping(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(isLooping ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isPlaying = isPlaying(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(isPlaying ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    pause(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepare(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    prepareAsync(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOnBufferingUpdateCallback(parcel.readLong(), IOnBufferingUpdateListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOnCompletionCallback(parcel.readLong(), IOnCompletionListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOnErrorCallback(parcel.readLong(), IOnErrorListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOnInfoCallback(parcel.readLong(), IOnInfoListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOnPitchAdjustmentAvailableChangedCallback(parcel.readLong(), IOnPitchAdjustmentAvailableChangedListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOnPreparedCallback(parcel.readLong(), IOnPreparedListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOnSeekCompleteCallback(parcel.readLong(), IOnSeekCompleteListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOnSpeedAdjustmentAvailableChangedCallback(parcel.readLong(), IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    release(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    reset(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    seekTo(parcel.readLong(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAudioStreamType(parcel.readLong(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDataSourceString(parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    setDataSourceUri(parcel.readLong(), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEnableSpeedAdjustment(parcel.readLong(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    setLooping(parcel.readLong(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPitchStepsAdjustment(parcel.readLong(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPlaybackPitch(parcel.readLong(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPlaybackSpeed(parcel.readLong(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    setSpeedAdjustmentAlgorithm(parcel.readLong(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    setVolume(parcel.readLong(), parcel.readFloat(), parcel.readFloat());
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    start(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    long startSession = startSession(IDeathCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeLong(startSession);
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    stop(parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOnBufferingUpdateCallback(parcel.readLong(), IOnBufferingUpdateListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOnCompletionCallback(parcel.readLong(), IOnCompletionListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOnErrorCallback(parcel.readLong(), IOnErrorListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOnInfoCallback(parcel.readLong(), IOnInfoListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOnPitchAdjustmentAvailableChangedCallback(parcel.readLong(), IOnPitchAdjustmentAvailableChangedListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOnPreparedCallback(parcel.readLong(), IOnPreparedListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOnSeekCompleteCallback(parcel.readLong(), IOnSeekCompleteListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOnSpeedAdjustmentAvailableChangedCallback(parcel.readLong(), IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements IPlayMedia_0_8 {
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

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public boolean canSetPitch(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public boolean canSetSpeed(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public float getCurrentPitchStepsAdjustment(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public int getCurrentPosition(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public float getCurrentSpeedMultiplier(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public int getDuration(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public float getMaxSpeedMultiplier(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public float getMinSpeedMultiplier(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readFloat();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public int getVersionCode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public String getVersionName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public boolean isLooping(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public boolean isPlaying(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void pause(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void prepare(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void prepareAsync(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void registerOnBufferingUpdateCallback(long j, IOnBufferingUpdateListenerCallback_0_8 iOnBufferingUpdateListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnBufferingUpdateListenerCallback_0_8 != null ? iOnBufferingUpdateListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void registerOnCompletionCallback(long j, IOnCompletionListenerCallback_0_8 iOnCompletionListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnCompletionListenerCallback_0_8 != null ? iOnCompletionListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void registerOnErrorCallback(long j, IOnErrorListenerCallback_0_8 iOnErrorListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnErrorListenerCallback_0_8 != null ? iOnErrorListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void registerOnInfoCallback(long j, IOnInfoListenerCallback_0_8 iOnInfoListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnInfoListenerCallback_0_8 != null ? iOnInfoListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void registerOnPitchAdjustmentAvailableChangedCallback(long j, IOnPitchAdjustmentAvailableChangedListenerCallback_0_8 iOnPitchAdjustmentAvailableChangedListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnPitchAdjustmentAvailableChangedListenerCallback_0_8 != null ? iOnPitchAdjustmentAvailableChangedListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void registerOnPreparedCallback(long j, IOnPreparedListenerCallback_0_8 iOnPreparedListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnPreparedListenerCallback_0_8 != null ? iOnPreparedListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void registerOnSeekCompleteCallback(long j, IOnSeekCompleteListenerCallback_0_8 iOnSeekCompleteListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnSeekCompleteListenerCallback_0_8 != null ? iOnSeekCompleteListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void registerOnSpeedAdjustmentAvailableChangedCallback(long j, IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8 iOnSpeedAdjustmentAvailableChangedListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnSpeedAdjustmentAvailableChangedListenerCallback_0_8 != null ? iOnSpeedAdjustmentAvailableChangedListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void release(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void reset(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void seekTo(long j, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setAudioStreamType(long j, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setDataSourceString(long j, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeString(str);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setDataSourceUri(long j, Uri uri) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setEnableSpeedAdjustment(long j, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setLooping(long j, boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setPitchStepsAdjustment(long j, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeFloat(f);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setPlaybackPitch(long j, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeFloat(f);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setPlaybackSpeed(long j, float f) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeFloat(f);
                    this.mRemote.transact(34, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setSpeedAdjustmentAlgorithm(long j, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    this.mRemote.transact(35, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void setVolume(long j, float f, float f2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeFloat(f);
                    obtain.writeFloat(f2);
                    this.mRemote.transact(36, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void start(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(37, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public long startSession(IDeathCallback_0_8 iDeathCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iDeathCallback_0_8 != null ? iDeathCallback_0_8.asBinder() : null);
                    this.mRemote.transact(38, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void stop(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(39, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void unregisterOnBufferingUpdateCallback(long j, IOnBufferingUpdateListenerCallback_0_8 iOnBufferingUpdateListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnBufferingUpdateListenerCallback_0_8 != null ? iOnBufferingUpdateListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(40, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void unregisterOnCompletionCallback(long j, IOnCompletionListenerCallback_0_8 iOnCompletionListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnCompletionListenerCallback_0_8 != null ? iOnCompletionListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(41, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void unregisterOnErrorCallback(long j, IOnErrorListenerCallback_0_8 iOnErrorListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnErrorListenerCallback_0_8 != null ? iOnErrorListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(42, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void unregisterOnInfoCallback(long j, IOnInfoListenerCallback_0_8 iOnInfoListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnInfoListenerCallback_0_8 != null ? iOnInfoListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(43, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void unregisterOnPitchAdjustmentAvailableChangedCallback(long j, IOnPitchAdjustmentAvailableChangedListenerCallback_0_8 iOnPitchAdjustmentAvailableChangedListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnPitchAdjustmentAvailableChangedListenerCallback_0_8 != null ? iOnPitchAdjustmentAvailableChangedListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(44, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void unregisterOnPreparedCallback(long j, IOnPreparedListenerCallback_0_8 iOnPreparedListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnPreparedListenerCallback_0_8 != null ? iOnPreparedListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(45, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void unregisterOnSeekCompleteCallback(long j, IOnSeekCompleteListenerCallback_0_8 iOnSeekCompleteListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnSeekCompleteListenerCallback_0_8 != null ? iOnSeekCompleteListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(46, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.aocate.presto.service.IPlayMedia_0_8
            public void unregisterOnSpeedAdjustmentAvailableChangedCallback(long j, IOnSpeedAdjustmentAvailableChangedListenerCallback_0_8 iOnSpeedAdjustmentAvailableChangedListenerCallback_0_8) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeStrongBinder(iOnSpeedAdjustmentAvailableChangedListenerCallback_0_8 != null ? iOnSpeedAdjustmentAvailableChangedListenerCallback_0_8.asBinder() : null);
                    this.mRemote.transact(47, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }
    }
}
