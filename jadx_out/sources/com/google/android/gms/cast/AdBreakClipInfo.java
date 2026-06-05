package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class AdBreakClipInfo extends zzbgl {
    public static final long AD_BREAK_CLIP_NOT_SKIPPABLE = -1;

    @Hide
    public static final Parcelable.Creator<AdBreakClipInfo> CREATOR = new zza();
    private final String zzbhs;
    private final String zzbzd;
    private final String zzesj;
    private final long zzesk;
    private final String zzesl;
    private final String zzesm;
    private String zzesn;
    private String zzeso;
    private String zzesp;
    private final long zzesq;

    @HlsSegmentFormat
    private final String zzesr;
    private JSONObject zzess;

    /* loaded from: classes.dex */
    public static class Builder {
        private String zzbzd;

        @HlsSegmentFormat
        private String zzesr;
        private String zzesj = null;
        private long zzesk = 0;
        private String zzbhs = null;
        private String zzesl = null;
        private String zzesm = null;
        private String zzesn = null;
        private String zzeso = null;
        private String zzesp = null;
        private long zzesq = -1;

        public Builder(String str) {
            this.zzbzd = null;
            this.zzbzd = str;
        }

        public AdBreakClipInfo build() {
            return new AdBreakClipInfo(this.zzbzd, this.zzesj, this.zzesk, this.zzbhs, this.zzesl, this.zzesm, this.zzesn, this.zzeso, this.zzesp, this.zzesq, this.zzesr);
        }

        public Builder setClickThroughUrl(String str) {
            this.zzesm = str;
            return this;
        }

        public Builder setContentId(String str) {
            this.zzeso = str;
            return this;
        }

        public Builder setContentUrl(String str) {
            this.zzbhs = str;
            return this;
        }

        public Builder setCustomDataJsonString(String str) {
            this.zzesn = str;
            return this;
        }

        public Builder setDurationInMs(long j) {
            this.zzesk = j;
            return this;
        }

        public Builder setHlsSegmentFormat(String str) {
            this.zzesr = str;
            return this;
        }

        public Builder setImageUrl(String str) {
            this.zzesp = str;
            return this;
        }

        public Builder setMimeType(String str) {
            this.zzesl = str;
            return this;
        }

        public Builder setTitle(String str) {
            this.zzesj = str;
            return this;
        }

        public Builder setWhenSkippableInMs(long j) {
            this.zzesq = j;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdBreakClipInfo(String str, String str2, long j, String str3, String str4, String str5, String str6, String str7, String str8, long j2, @HlsSegmentFormat String str9) {
        JSONObject jSONObject;
        this.zzbzd = str;
        this.zzesj = str2;
        this.zzesk = j;
        this.zzbhs = str3;
        this.zzesl = str4;
        this.zzesm = str5;
        this.zzesn = str6;
        this.zzeso = str7;
        this.zzesp = str8;
        this.zzesq = j2;
        this.zzesr = str9;
        if (TextUtils.isEmpty(this.zzesn)) {
            jSONObject = new JSONObject();
        } else {
            try {
                this.zzess = new JSONObject(str6);
                return;
            } catch (JSONException e) {
                Log.w("AdBreakClipInfo", String.format(Locale.ROOT, "Error creating AdBreakClipInfo: %s", e.getMessage()));
                this.zzesn = null;
                jSONObject = new JSONObject();
            }
        }
        this.zzess = jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AdBreakClipInfo zzp(JSONObject jSONObject) {
        String str;
        long j;
        String str2;
        if (jSONObject == null || !jSONObject.has("id")) {
            return null;
        }
        try {
            String string = jSONObject.getString("id");
            long optLong = (long) (jSONObject.optLong("duration") * 1000.0d);
            String optString = jSONObject.optString("clickThroughUrl", null);
            String optString2 = jSONObject.optString("contentUrl", null);
            String optString3 = jSONObject.optString("mimeType", null);
            if (optString3 == null) {
                optString3 = jSONObject.optString("contentType", null);
            }
            String str3 = optString3;
            String optString4 = jSONObject.optString(SettingsJsonConstants.PROMPT_TITLE_KEY, null);
            JSONObject optJSONObject = jSONObject.optJSONObject("customData");
            String optString5 = jSONObject.optString("contentId", null);
            String optString6 = jSONObject.optString("imageUrl", null);
            if (jSONObject.has("whenSkippable")) {
                str = optString2;
                j = (long) (((Integer) jSONObject.get("whenSkippable")).intValue() * 1000.0d);
            } else {
                str = optString2;
                j = -1;
            }
            String optString7 = jSONObject.optString("hlsSegmentFormat", null);
            if (optJSONObject != null && optJSONObject.length() != 0) {
                str2 = optJSONObject.toString();
                return new AdBreakClipInfo(string, optString4, optLong, str, str3, optString, str2, optString5, optString6, j, optString7);
            }
            str2 = null;
            return new AdBreakClipInfo(string, optString4, optLong, str, str3, optString, str2, optString5, optString6, j, optString7);
        } catch (JSONException e) {
            Log.d("AdBreakClipInfo", String.format(Locale.ROOT, "Error while creating an AdBreakClipInfo from JSON: %s", e.getMessage()));
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakClipInfo)) {
            return false;
        }
        AdBreakClipInfo adBreakClipInfo = (AdBreakClipInfo) obj;
        return zzbdw.zza(this.zzbzd, adBreakClipInfo.zzbzd) && zzbdw.zza(this.zzesj, adBreakClipInfo.zzesj) && this.zzesk == adBreakClipInfo.zzesk && zzbdw.zza(this.zzbhs, adBreakClipInfo.zzbhs) && zzbdw.zza(this.zzesl, adBreakClipInfo.zzesl) && zzbdw.zza(this.zzesm, adBreakClipInfo.zzesm) && zzbdw.zza(this.zzesn, adBreakClipInfo.zzesn) && zzbdw.zza(this.zzeso, adBreakClipInfo.zzeso) && zzbdw.zza(this.zzesp, adBreakClipInfo.zzesp) && this.zzesq == adBreakClipInfo.zzesq && zzbdw.zza(this.zzesr, adBreakClipInfo.zzesr);
    }

    public String getClickThroughUrl() {
        return this.zzesm;
    }

    public String getContentId() {
        return this.zzeso;
    }

    public String getContentUrl() {
        return this.zzbhs;
    }

    public JSONObject getCustomData() {
        return this.zzess;
    }

    public long getDurationInMs() {
        return this.zzesk;
    }

    public String getHlsSegmentFormat() {
        return this.zzesr;
    }

    public String getId() {
        return this.zzbzd;
    }

    public String getImageUrl() {
        return this.zzesp;
    }

    public String getMimeType() {
        return this.zzesl;
    }

    public String getTitle() {
        return this.zzesj;
    }

    public long getWhenSkippableInMs() {
        return this.zzesq;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzbzd, this.zzesj, Long.valueOf(this.zzesk), this.zzbhs, this.zzesl, this.zzesm, this.zzesn, this.zzeso, this.zzesp, Long.valueOf(this.zzesq), this.zzesr});
    }

    @Hide
    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.zzbzd);
            jSONObject.put("duration", this.zzesk / 1000.0d);
            if (this.zzesq != -1) {
                jSONObject.put("whenSkippable", this.zzesq / 1000.0d);
            }
            if (this.zzeso != null) {
                jSONObject.put("contentId", this.zzeso);
            }
            if (this.zzesl != null) {
                jSONObject.put("contentType", this.zzesl);
            }
            if (this.zzesj != null) {
                jSONObject.put(SettingsJsonConstants.PROMPT_TITLE_KEY, this.zzesj);
            }
            if (this.zzbhs != null) {
                jSONObject.put("contentUrl", this.zzbhs);
            }
            if (this.zzesm != null) {
                jSONObject.put("clickThroughUrl", this.zzesm);
            }
            if (this.zzess != null) {
                jSONObject.put("customData", this.zzess);
            }
            if (this.zzesp != null) {
                jSONObject.put("imageUrl", this.zzesp);
            }
            if (this.zzesr != null) {
                jSONObject.put("hlsSegmentFormat", this.zzesr);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, getId(), false);
        zzbgo.zza(parcel, 3, getTitle(), false);
        zzbgo.zza(parcel, 4, getDurationInMs());
        zzbgo.zza(parcel, 5, getContentUrl(), false);
        zzbgo.zza(parcel, 6, getMimeType(), false);
        zzbgo.zza(parcel, 7, getClickThroughUrl(), false);
        zzbgo.zza(parcel, 8, this.zzesn, false);
        zzbgo.zza(parcel, 9, getContentId(), false);
        zzbgo.zza(parcel, 10, getImageUrl(), false);
        zzbgo.zza(parcel, 11, getWhenSkippableInMs());
        zzbgo.zza(parcel, 12, getHlsSegmentFormat(), false);
        zzbgo.zzai(parcel, zze);
    }
}
