package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import com.google.android.gms.internal.zzkq;
import com.google.android.gms.internal.zzly;
import com.google.android.gms.internal.zzlz;

@zzabh
/* loaded from: classes.dex */
public final class PublisherAdViewOptions extends zzbgl {

    @Hide
    public static final Parcelable.Creator<PublisherAdViewOptions> CREATOR = new zzc();
    private final boolean zzamp;

    @Nullable
    private final zzly zzamq;

    @Nullable
    private AppEventListener zzamr;

    /* loaded from: classes.dex */
    public static final class Builder {
        private boolean zzamp = false;
        private AppEventListener zzamr;

        public final PublisherAdViewOptions build() {
            return new PublisherAdViewOptions(this);
        }

        public final Builder setAppEventListener(AppEventListener appEventListener) {
            this.zzamr = appEventListener;
            return this;
        }

        public final Builder setManualImpressionsEnabled(boolean z) {
            this.zzamp = z;
            return this;
        }
    }

    private PublisherAdViewOptions(Builder builder) {
        this.zzamp = builder.zzamp;
        this.zzamr = builder.zzamr;
        this.zzamq = this.zzamr != null ? new zzkq(this.zzamr) : null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PublisherAdViewOptions(boolean z, @Nullable IBinder iBinder) {
        this.zzamp = z;
        this.zzamq = iBinder != null ? zzlz.zzg(iBinder) : null;
    }

    @Nullable
    public final AppEventListener getAppEventListener() {
        return this.zzamr;
    }

    public final boolean getManualImpressionsEnabled() {
        return this.zzamp;
    }

    @Override // android.os.Parcelable
    @Hide
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 1, getManualImpressionsEnabled());
        zzbgo.zza(parcel, 2, this.zzamq == null ? null : this.zzamq.asBinder(), false);
        zzbgo.zzai(parcel, zze);
    }

    @Hide
    @Nullable
    public final zzly zzbk() {
        return this.zzamq;
    }
}
