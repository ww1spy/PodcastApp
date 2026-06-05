package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
import java.util.Locale;

/* loaded from: classes.dex */
public class LaunchOptions extends zzbgl {

    @Hide
    public static final Parcelable.Creator<LaunchOptions> CREATOR = new zzad();
    private String zzdxa;
    private boolean zzevw;

    /* loaded from: classes.dex */
    public static final class Builder {
        private LaunchOptions zzevx = new LaunchOptions();

        public final LaunchOptions build() {
            return this.zzevx;
        }

        public final Builder setLocale(Locale locale) {
            this.zzevx.setLanguage(zzbdw.zzb(locale));
            return this;
        }

        public final Builder setRelaunchIfRunning(boolean z) {
            this.zzevx.setRelaunchIfRunning(z);
            return this;
        }
    }

    public LaunchOptions() {
        this(false, zzbdw.zzb(Locale.getDefault()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LaunchOptions(boolean z, String str) {
        this.zzevw = z;
        this.zzdxa = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LaunchOptions)) {
            return false;
        }
        LaunchOptions launchOptions = (LaunchOptions) obj;
        return this.zzevw == launchOptions.zzevw && zzbdw.zza(this.zzdxa, launchOptions.zzdxa);
    }

    public String getLanguage() {
        return this.zzdxa;
    }

    public boolean getRelaunchIfRunning() {
        return this.zzevw;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.zzevw), this.zzdxa});
    }

    public void setLanguage(String str) {
        this.zzdxa = str;
    }

    public void setRelaunchIfRunning(boolean z) {
        this.zzevw = z;
    }

    public String toString() {
        return String.format("LaunchOptions(relaunchIfRunning=%b, language=%s)", Boolean.valueOf(this.zzevw), this.zzdxa);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, getRelaunchIfRunning());
        zzbgo.zza(parcel, 3, getLanguage(), false);
        zzbgo.zzai(parcel, zze);
    }
}
