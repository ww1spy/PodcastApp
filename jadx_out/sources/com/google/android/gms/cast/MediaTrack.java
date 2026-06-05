package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class MediaTrack extends zzbgl implements ReflectedParcelable {

    @Hide
    public static final Parcelable.Creator<MediaTrack> CREATOR = new zzak();
    public static final int SUBTYPE_CAPTIONS = 2;
    public static final int SUBTYPE_CHAPTERS = 4;
    public static final int SUBTYPE_DESCRIPTIONS = 3;
    public static final int SUBTYPE_METADATA = 5;
    public static final int SUBTYPE_NONE = 0;
    public static final int SUBTYPE_SUBTITLES = 1;
    public static final int SUBTYPE_UNKNOWN = -1;
    public static final int TYPE_AUDIO = 2;
    public static final int TYPE_TEXT = 1;
    public static final int TYPE_UNKNOWN = 0;
    public static final int TYPE_VIDEO = 3;
    private String mName;
    private String zzdxa;
    private long zzehj;
    private int zzenu;
    private String zzesn;
    private String zzeso;
    private JSONObject zzess;
    private String zzevz;
    private int zzexr;

    /* loaded from: classes.dex */
    public static class Builder {
        private final MediaTrack zzexs;

        public Builder(long j, int i) throws IllegalArgumentException {
            this.zzexs = new MediaTrack(j, i);
        }

        public MediaTrack build() {
            return this.zzexs;
        }

        public Builder setContentId(String str) {
            this.zzexs.setContentId(str);
            return this;
        }

        public Builder setContentType(String str) {
            this.zzexs.setContentType(str);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzexs.setCustomData(jSONObject);
            return this;
        }

        public Builder setLanguage(String str) {
            this.zzexs.setLanguage(str);
            return this;
        }

        public Builder setLanguage(Locale locale) {
            this.zzexs.setLanguage(zzbdw.zzb(locale));
            return this;
        }

        public Builder setName(String str) {
            this.zzexs.setName(str);
            return this;
        }

        public Builder setSubtype(int i) throws IllegalArgumentException {
            this.zzexs.zzbb(i);
            return this;
        }
    }

    MediaTrack(long j, int i) throws IllegalArgumentException {
        this(0L, 0, null, null, null, null, -1, null);
        this.zzehj = j;
        if (i > 0 && i <= 3) {
            this.zzenu = i;
            return;
        }
        StringBuilder sb = new StringBuilder(24);
        sb.append("invalid type ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaTrack(long j, int i, String str, String str2, String str3, String str4, int i2, String str5) {
        this.zzehj = j;
        this.zzenu = i;
        this.zzeso = str;
        this.zzevz = str2;
        this.mName = str3;
        this.zzdxa = str4;
        this.zzexr = i2;
        this.zzesn = str5;
        if (this.zzesn == null) {
            this.zzess = null;
            return;
        }
        try {
            this.zzess = new JSONObject(this.zzesn);
        } catch (JSONException unused) {
            this.zzess = null;
            this.zzesn = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaTrack(JSONObject jSONObject) throws JSONException {
        this(0L, 0, null, null, null, null, -1, null);
        int i;
        this.zzehj = jSONObject.getLong("trackId");
        String string = jSONObject.getString("type");
        if ("TEXT".equals(string)) {
            this.zzenu = 1;
        } else if ("AUDIO".equals(string)) {
            this.zzenu = 2;
        } else {
            if (!"VIDEO".equals(string)) {
                String valueOf = String.valueOf(string);
                throw new JSONException(valueOf.length() != 0 ? "invalid type: ".concat(valueOf) : new String("invalid type: "));
            }
            this.zzenu = 3;
        }
        this.zzeso = jSONObject.optString("trackContentId", null);
        this.zzevz = jSONObject.optString("trackContentType", null);
        this.mName = jSONObject.optString("name", null);
        this.zzdxa = jSONObject.optString("language", null);
        if (jSONObject.has("subtype")) {
            String string2 = jSONObject.getString("subtype");
            if ("SUBTITLES".equals(string2)) {
                this.zzexr = 1;
            } else if ("CAPTIONS".equals(string2)) {
                this.zzexr = 2;
            } else if ("DESCRIPTIONS".equals(string2)) {
                this.zzexr = 3;
            } else if ("CHAPTERS".equals(string2)) {
                i = 4;
            } else {
                if (!"METADATA".equals(string2)) {
                    String valueOf2 = String.valueOf(string2);
                    throw new JSONException(valueOf2.length() != 0 ? "invalid subtype: ".concat(valueOf2) : new String("invalid subtype: "));
                }
                i = 5;
            }
            this.zzess = jSONObject.optJSONObject("customData");
        }
        i = 0;
        this.zzexr = i;
        this.zzess = jSONObject.optJSONObject("customData");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        if ((this.zzess == null) != (mediaTrack.zzess == null)) {
            return false;
        }
        return (this.zzess == null || mediaTrack.zzess == null || com.google.android.gms.common.util.zzq.zzc(this.zzess, mediaTrack.zzess)) && this.zzehj == mediaTrack.zzehj && this.zzenu == mediaTrack.zzenu && zzbdw.zza(this.zzeso, mediaTrack.zzeso) && zzbdw.zza(this.zzevz, mediaTrack.zzevz) && zzbdw.zza(this.mName, mediaTrack.mName) && zzbdw.zza(this.zzdxa, mediaTrack.zzdxa) && this.zzexr == mediaTrack.zzexr;
    }

    public final String getContentId() {
        return this.zzeso;
    }

    public final String getContentType() {
        return this.zzevz;
    }

    public final JSONObject getCustomData() {
        return this.zzess;
    }

    public final long getId() {
        return this.zzehj;
    }

    public final String getLanguage() {
        return this.zzdxa;
    }

    public final String getName() {
        return this.mName;
    }

    public final int getSubtype() {
        return this.zzexr;
    }

    public final int getType() {
        return this.zzenu;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.zzehj), Integer.valueOf(this.zzenu), this.zzeso, this.zzevz, this.mName, this.zzdxa, Integer.valueOf(this.zzexr), String.valueOf(this.zzess)});
    }

    public final void setContentId(String str) {
        this.zzeso = str;
    }

    public final void setContentType(String str) {
        this.zzevz = str;
    }

    final void setCustomData(JSONObject jSONObject) {
        this.zzess = jSONObject;
    }

    final void setLanguage(String str) {
        this.zzdxa = str;
    }

    final void setName(String str) {
        this.mName = str;
    }

    @Hide
    public final JSONObject toJson() {
        String str;
        String str2;
        String str3;
        String str4;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.zzehj);
            switch (this.zzenu) {
                case 1:
                    str = "type";
                    str2 = "TEXT";
                    jSONObject.put(str, str2);
                    break;
                case 2:
                    str = "type";
                    str2 = "AUDIO";
                    jSONObject.put(str, str2);
                    break;
                case 3:
                    str = "type";
                    str2 = "VIDEO";
                    jSONObject.put(str, str2);
                    break;
            }
            if (this.zzeso != null) {
                jSONObject.put("trackContentId", this.zzeso);
            }
            if (this.zzevz != null) {
                jSONObject.put("trackContentType", this.zzevz);
            }
            if (this.mName != null) {
                jSONObject.put("name", this.mName);
            }
            if (!TextUtils.isEmpty(this.zzdxa)) {
                jSONObject.put("language", this.zzdxa);
            }
            switch (this.zzexr) {
                case 1:
                    str3 = "subtype";
                    str4 = "SUBTITLES";
                    jSONObject.put(str3, str4);
                    break;
                case 2:
                    str3 = "subtype";
                    str4 = "CAPTIONS";
                    jSONObject.put(str3, str4);
                    break;
                case 3:
                    str3 = "subtype";
                    str4 = "DESCRIPTIONS";
                    jSONObject.put(str3, str4);
                    break;
                case 4:
                    str3 = "subtype";
                    str4 = "CHAPTERS";
                    jSONObject.put(str3, str4);
                    break;
                case 5:
                    str3 = "subtype";
                    str4 = "METADATA";
                    jSONObject.put(str3, str4);
                    break;
            }
            if (this.zzess != null) {
                jSONObject.put("customData", this.zzess);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        this.zzesn = this.zzess == null ? null : this.zzess.toString();
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, getId());
        zzbgo.zzc(parcel, 3, getType());
        zzbgo.zza(parcel, 4, getContentId(), false);
        zzbgo.zza(parcel, 5, getContentType(), false);
        zzbgo.zza(parcel, 6, getName(), false);
        zzbgo.zza(parcel, 7, getLanguage(), false);
        zzbgo.zzc(parcel, 8, getSubtype());
        zzbgo.zza(parcel, 9, this.zzesn, false);
        zzbgo.zzai(parcel, zze);
    }

    final void zzbb(int i) throws IllegalArgumentException {
        if (i < 0 || i > 5) {
            StringBuilder sb = new StringBuilder(27);
            sb.append("invalid subtype ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i != 0 && this.zzenu != 1) {
            throw new IllegalArgumentException("subtypes are only valid for text tracks");
        }
        this.zzexr = i;
    }
}
