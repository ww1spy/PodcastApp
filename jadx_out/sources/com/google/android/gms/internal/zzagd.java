package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.common.internal.Hide;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzagd extends zzbgl {
    public static final Parcelable.Creator<zzagd> CREATOR = new zzage();
    public final String type;
    public final int zzdax;

    public zzagd(RewardItem rewardItem) {
        this(rewardItem.getType(), rewardItem.getAmount());
    }

    public zzagd(String str, int i) {
        this.type = str;
        this.zzdax = i;
    }

    @Nullable
    public static zzagd zza(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new zzagd(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    @Nullable
    public static zzagd zzbu(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return zza(new JSONArray(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zzagd)) {
            return false;
        }
        zzagd zzagdVar = (zzagd) obj;
        return com.google.android.gms.common.internal.zzbg.equal(this.type, zzagdVar.type) && com.google.android.gms.common.internal.zzbg.equal(Integer.valueOf(this.zzdax), Integer.valueOf(zzagdVar.zzdax));
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.type, Integer.valueOf(this.zzdax)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, this.type, false);
        zzbgo.zzc(parcel, 3, this.zzdax);
        zzbgo.zzai(parcel, zze);
    }
}
