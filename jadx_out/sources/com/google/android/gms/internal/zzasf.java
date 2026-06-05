package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;

@Hide
/* loaded from: classes.dex */
public final class zzasf implements Parcelable {

    @Deprecated
    public static final Parcelable.Creator<zzasf> CREATOR = new zzasg();
    private String mValue;
    private String zzbzd;
    private String zzeav;

    @Deprecated
    public zzasf() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public zzasf(Parcel parcel) {
        this.zzbzd = parcel.readString();
        this.zzeav = parcel.readString();
        this.mValue = parcel.readString();
    }

    @Override // android.os.Parcelable
    @Deprecated
    public final int describeContents() {
        return 0;
    }

    public final String getId() {
        return this.zzbzd;
    }

    public final String getValue() {
        return this.mValue;
    }

    @Override // android.os.Parcelable
    @Deprecated
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zzbzd);
        parcel.writeString(this.zzeav);
        parcel.writeString(this.mValue);
    }
}
