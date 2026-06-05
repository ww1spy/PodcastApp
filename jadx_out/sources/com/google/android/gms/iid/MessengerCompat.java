package com.google.android.gms.iid;

import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;

@Hide
/* loaded from: classes.dex */
public class MessengerCompat implements ReflectedParcelable {
    public static final Parcelable.Creator<MessengerCompat> CREATOR = new zzl();
    private Messenger zzinb;
    private zzi zzinc;

    public MessengerCompat(IBinder iBinder) {
        zzi zzkVar;
        if (Build.VERSION.SDK_INT >= 21) {
            this.zzinb = new Messenger(iBinder);
            return;
        }
        if (iBinder == null) {
            zzkVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.iid.IMessengerCompat");
            zzkVar = queryLocalInterface instanceof zzi ? (zzi) queryLocalInterface : new zzk(iBinder);
        }
        this.zzinc = zzkVar;
    }

    private final IBinder getBinder() {
        return this.zzinb != null ? this.zzinb.getBinder() : this.zzinc.asBinder();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return getBinder().equals(((MessengerCompat) obj).getBinder());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public int hashCode() {
        return getBinder().hashCode();
    }

    public final void send(Message message) throws RemoteException {
        if (this.zzinb != null) {
            this.zzinb.send(message);
        } else {
            this.zzinc.send(message);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeStrongBinder(this.zzinb != null ? this.zzinb.getBinder() : this.zzinc.asBinder());
    }
}
