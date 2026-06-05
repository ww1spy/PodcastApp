package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
/* loaded from: classes.dex */
public final class zzbl extends zzbgl {

    @Hide
    public static final Parcelable.Creator<zzbl> CREATOR = new zzbm();
    private final String zzag;
    private final String zzesr;
    private final int zzezd;
    private final int zzeze;

    @Hide
    public zzbl(String str, int i, int i2, @HlsSegmentFormat String str2) {
        this.zzag = str;
        this.zzezd = i;
        this.zzeze = i2;
        this.zzesr = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbl)) {
            return false;
        }
        zzbl zzblVar = (zzbl) obj;
        return zzbdw.zza(this.zzag, zzblVar.zzag) && zzbdw.zza(Integer.valueOf(this.zzezd), Integer.valueOf(zzblVar.zzezd)) && zzbdw.zza(Integer.valueOf(this.zzeze), Integer.valueOf(zzblVar.zzeze)) && zzbdw.zza(zzblVar.zzesr, this.zzesr);
    }

    @VisibleForTesting
    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzag, Integer.valueOf(this.zzezd), Integer.valueOf(this.zzeze), this.zzesr});
    }

    public final JSONObject toJson() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("url", this.zzag);
        jSONObject.put("protocolType", this.zzezd);
        jSONObject.put("initialTime", this.zzeze);
        jSONObject.put("hlsSegmentFormat", this.zzesr);
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.zzag, false);
        zzbgo.zzc(parcel, 3, this.zzezd);
        zzbgo.zzc(parcel, 4, this.zzeze);
        zzbgo.zza(parcel, 5, this.zzesr, false);
        zzbgo.zzai(parcel, zze);
    }
}
