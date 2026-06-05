package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class VideoInfo extends zzbgl {

    @Hide
    public static final Parcelable.Creator<VideoInfo> CREATOR = new zzbo();
    public static final int HDR_TYPE_DV = 3;
    public static final int HDR_TYPE_HDR = 4;
    public static final int HDR_TYPE_HDR10 = 2;
    public static final int HDR_TYPE_SDR = 1;
    public static final int HDR_TYPE_UNKNOWN = 0;
    private int zzalt;
    private int zzalu;
    private int zzezp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoInfo(int i, int i2, int i3) {
        this.zzalt = i;
        this.zzalu = i2;
        this.zzezp = i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static VideoInfo zzv(JSONObject jSONObject) {
        int i;
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.getString("hdrType");
            char c = 65535;
            int hashCode = string.hashCode();
            if (hashCode != 3218) {
                if (hashCode != 103158) {
                    if (hashCode != 113729) {
                        if (hashCode == 99136405 && string.equals("hdr10")) {
                            c = 1;
                        }
                    } else if (string.equals("sdr")) {
                        c = 3;
                    }
                } else if (string.equals("hdr")) {
                    c = 2;
                }
            } else if (string.equals("dv")) {
                c = 0;
            }
            switch (c) {
                case 0:
                    i = 3;
                    break;
                case 1:
                    i = 2;
                    break;
                case 2:
                    i = 4;
                    break;
                case 3:
                    i = 1;
                    break;
                default:
                    Log.d("VideoInfo", String.format(Locale.ROOT, "Unknown HDR type: %s", string));
                    i = 0;
                    break;
            }
            return new VideoInfo(jSONObject.getInt(SettingsJsonConstants.ICON_WIDTH_KEY), jSONObject.getInt(SettingsJsonConstants.ICON_HEIGHT_KEY), i);
        } catch (JSONException e) {
            Log.d("VideoInfo", String.format(Locale.ROOT, "Error while creating a VideoInfo instance from JSON: %s", e.getMessage()));
            return null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoInfo)) {
            return false;
        }
        VideoInfo videoInfo = (VideoInfo) obj;
        return this.zzalu == videoInfo.getHeight() && this.zzalt == videoInfo.getWidth() && this.zzezp == videoInfo.getHdrType();
    }

    public final int getHdrType() {
        return this.zzezp;
    }

    public final int getHeight() {
        return this.zzalu;
    }

    public final int getWidth() {
        return this.zzalt;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.zzalu), Integer.valueOf(this.zzalt), Integer.valueOf(this.zzezp)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zzc(parcel, 2, getWidth());
        zzbgo.zzc(parcel, 3, getHeight());
        zzbgo.zzc(parcel, 4, getHdrType());
        zzbgo.zzai(parcel, zze);
    }
}
