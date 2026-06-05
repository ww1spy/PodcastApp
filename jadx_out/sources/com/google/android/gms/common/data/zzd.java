package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgp;

@Hide
/* loaded from: classes.dex */
public class zzd<T extends zzbgp> extends AbstractDataBuffer<T> {
    private static final String[] zzgcj = {"data"};
    private final Parcelable.Creator<T> zzgck;

    public zzd(DataHolder dataHolder, Parcelable.Creator<T> creator) {
        super(dataHolder);
        this.zzgck = creator;
    }

    public static <T extends zzbgp> void zza(DataHolder.zza zzaVar, T t) {
        Parcel obtain = Parcel.obtain();
        t.writeToParcel(obtain, 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("data", obtain.marshall());
        zzaVar.zza(contentValues);
        obtain.recycle();
    }

    public static DataHolder.zza zzalh() {
        return DataHolder.zzb(zzgcj);
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    /* renamed from: zzbx, reason: merged with bridge method [inline-methods] */
    public T get(int i) {
        byte[] zzg = this.zzfxb.zzg("data", i, this.zzfxb.zzby(i));
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(zzg, 0, zzg.length);
        obtain.setDataPosition(0);
        T createFromParcel = this.zzgck.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }
}
