package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import java.io.DataInputStream;
import java.io.IOException;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzacv extends zzbgl {
    public static final Parcelable.Creator<zzacv> CREATOR = new zzacx();
    private ParcelFileDescriptor zzcup;
    private Parcelable zzcuq;
    private boolean zzcur;

    public zzacv(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzcup = parcelFileDescriptor;
        this.zzcuq = null;
        this.zzcur = true;
    }

    public zzacv(zzbgp zzbgpVar) {
        this.zzcup = null;
        this.zzcuq = zzbgpVar;
        this.zzcur = false;
    }

    private final <T> ParcelFileDescriptor zze(byte[] bArr) {
        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream;
        ParcelFileDescriptor[] createPipe;
        try {
            createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(createPipe[1]);
        } catch (IOException e) {
            e = e;
            autoCloseOutputStream = null;
        }
        try {
            new Thread(new zzacw(this, autoCloseOutputStream, bArr)).start();
            return createPipe[0];
        } catch (IOException e2) {
            e = e2;
            zzahw.zzb("Error transporting the ad response", e);
            com.google.android.gms.ads.internal.zzbt.zzep().zza(e, "LargeParcelTeleporter.pipeData.2");
            com.google.android.gms.common.util.zzp.closeQuietly(autoCloseOutputStream);
            return null;
        }
    }

    private final ParcelFileDescriptor zzob() {
        if (this.zzcup == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzcuq.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                obtain.recycle();
                this.zzcup = zze(marshall);
            } catch (Throwable th) {
                obtain.recycle();
                throw th;
            }
        }
        return this.zzcup;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zzob();
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) this.zzcup, i, false);
        zzbgo.zzai(parcel, zze);
    }

    public final <T extends zzbgp> T zza(Parcelable.Creator<T> creator) {
        if (this.zzcur) {
            if (this.zzcup == null) {
                zzahw.e("File descriptor is empty, returning null.");
                return null;
            }
            DataInputStream dataInputStream = new DataInputStream(new ParcelFileDescriptor.AutoCloseInputStream(this.zzcup));
            try {
                try {
                    byte[] bArr = new byte[dataInputStream.readInt()];
                    dataInputStream.readFully(bArr, 0, bArr.length);
                    com.google.android.gms.common.util.zzp.closeQuietly(dataInputStream);
                    Parcel obtain = Parcel.obtain();
                    try {
                        obtain.unmarshall(bArr, 0, bArr.length);
                        obtain.setDataPosition(0);
                        this.zzcuq = creator.createFromParcel(obtain);
                        obtain.recycle();
                        this.zzcur = false;
                    } catch (Throwable th) {
                        obtain.recycle();
                        throw th;
                    }
                } catch (IOException e) {
                    zzahw.zzb("Could not read from parcel file descriptor", e);
                    com.google.android.gms.common.util.zzp.closeQuietly(dataInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                com.google.android.gms.common.util.zzp.closeQuietly(dataInputStream);
                throw th2;
            }
        }
        return (T) this.zzcuq;
    }
}
