package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.rsscore.repository.DatabaseHelper;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MediaInfo extends zzbgl implements ReflectedParcelable {

    @Hide
    public static final Parcelable.Creator<MediaInfo> CREATOR = new zzae();
    public static final int STREAM_TYPE_BUFFERED = 1;
    public static final int STREAM_TYPE_INVALID = -1;
    public static final int STREAM_TYPE_LIVE = 2;
    public static final int STREAM_TYPE_NONE = 0;
    public static final long UNKNOWN_DURATION = -1;
    private String zzesn;
    private final String zzeso;
    private JSONObject zzess;
    private int zzevy;
    private String zzevz;
    private MediaMetadata zzewa;
    private long zzewb;
    private List<MediaTrack> zzewc;
    private TextTrackStyle zzewd;
    private List<AdBreakInfo> zzewe;
    private List<AdBreakClipInfo> zzewf;
    private String zzewg;

    /* loaded from: classes.dex */
    public static class Builder {
        private final MediaInfo zzewh;

        public Builder(String str) throws IllegalArgumentException {
            this.zzewh = new MediaInfo(str);
        }

        public Builder(String str, String str2) throws IllegalArgumentException {
            this.zzewh = new MediaInfo(str, str2);
        }

        public MediaInfo build() {
            return this.zzewh;
        }

        public Builder setAdBreakClips(List<AdBreakClipInfo> list) {
            this.zzewh.zzab(list);
            return this;
        }

        public Builder setAdBreaks(List<AdBreakInfo> list) {
            this.zzewh.zzaa(list);
            return this;
        }

        public Builder setContentType(String str) {
            this.zzewh.setContentType(str);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzewh.setCustomData(jSONObject);
            return this;
        }

        public Builder setEntity(String str) {
            this.zzewh.zzfk(str);
            return this;
        }

        public Builder setMediaTracks(List<MediaTrack> list) {
            this.zzewh.zzz(list);
            return this;
        }

        public Builder setMetadata(MediaMetadata mediaMetadata) {
            this.zzewh.zza(mediaMetadata);
            return this;
        }

        public Builder setStreamDuration(long j) throws IllegalArgumentException {
            this.zzewh.zzw(j);
            return this;
        }

        public Builder setStreamType(int i) throws IllegalArgumentException {
            this.zzewh.setStreamType(i);
            return this;
        }

        public Builder setTextTrackStyle(TextTrackStyle textTrackStyle) {
            this.zzewh.setTextTrackStyle(textTrackStyle);
            return this;
        }
    }

    MediaInfo(String str) throws IllegalArgumentException {
        this(str, -1, null, null, -1L, null, null, null, null, null, null);
        if (str == null) {
            throw new IllegalArgumentException("contentID cannot be null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaInfo(@NonNull String str, int i, String str2, MediaMetadata mediaMetadata, long j, List<MediaTrack> list, TextTrackStyle textTrackStyle, String str3, List<AdBreakInfo> list2, List<AdBreakClipInfo> list3, String str4) {
        this.zzeso = str;
        this.zzevy = i;
        this.zzevz = str2;
        this.zzewa = mediaMetadata;
        this.zzewb = j;
        this.zzewc = list;
        this.zzewd = textTrackStyle;
        this.zzesn = str3;
        if (this.zzesn != null) {
            try {
                this.zzess = new JSONObject(this.zzesn);
            } catch (JSONException unused) {
                this.zzess = null;
                this.zzesn = null;
            }
        } else {
            this.zzess = null;
        }
        this.zzewe = list2;
        this.zzewf = list3;
        this.zzewg = str4;
    }

    MediaInfo(String str, String str2) throws IllegalArgumentException {
        this(str, -1, null, null, -1L, null, null, null, null, null, str2);
        if (str == null) {
            throw new IllegalArgumentException("contentID cannot be null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaInfo(JSONObject jSONObject) throws JSONException {
        this(jSONObject.getString("contentId"), -1, null, null, -1L, null, null, null, null, null, null);
        String string = jSONObject.getString("streamType");
        if ("NONE".equals(string)) {
            this.zzevy = 0;
        } else {
            this.zzevy = "BUFFERED".equals(string) ? 1 : "LIVE".equals(string) ? 2 : -1;
        }
        this.zzevz = jSONObject.getString("contentType");
        if (jSONObject.has("metadata")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("metadata");
            this.zzewa = new MediaMetadata(jSONObject2.getInt("metadataType"));
            this.zzewa.zzt(jSONObject2);
        }
        this.zzewb = -1L;
        if (jSONObject.has("duration") && !jSONObject.isNull("duration")) {
            double optDouble = jSONObject.optDouble("duration", 0.0d);
            if (!Double.isNaN(optDouble) && !Double.isInfinite(optDouble)) {
                this.zzewb = (long) (optDouble * 1000.0d);
            }
        }
        TextTrackStyle textTrackStyle = null;
        if (jSONObject.has(DatabaseHelper.DB_TABLE_TRACKS)) {
            this.zzewc = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray(DatabaseHelper.DB_TABLE_TRACKS);
            for (int i = 0; i < jSONArray.length(); i++) {
                this.zzewc.add(new MediaTrack(jSONArray.getJSONObject(i)));
            }
        } else {
            this.zzewc = null;
        }
        if (jSONObject.has("textTrackStyle")) {
            JSONObject jSONObject3 = jSONObject.getJSONObject("textTrackStyle");
            textTrackStyle = new TextTrackStyle();
            textTrackStyle.zzt(jSONObject3);
        }
        this.zzewd = textTrackStyle;
        zzs(jSONObject);
        this.zzess = jSONObject.optJSONObject("customData");
        if (jSONObject.has("entity")) {
            this.zzewg = jSONObject.getString("entity");
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaInfo)) {
            return false;
        }
        MediaInfo mediaInfo = (MediaInfo) obj;
        if ((this.zzess == null) != (mediaInfo.zzess == null)) {
            return false;
        }
        return (this.zzess == null || mediaInfo.zzess == null || com.google.android.gms.common.util.zzq.zzc(this.zzess, mediaInfo.zzess)) && zzbdw.zza(this.zzeso, mediaInfo.zzeso) && this.zzevy == mediaInfo.zzevy && zzbdw.zza(this.zzevz, mediaInfo.zzevz) && zzbdw.zza(this.zzewa, mediaInfo.zzewa) && this.zzewb == mediaInfo.zzewb && zzbdw.zza(this.zzewc, mediaInfo.zzewc) && zzbdw.zza(this.zzewd, mediaInfo.zzewd) && zzbdw.zza(this.zzewe, mediaInfo.zzewe) && zzbdw.zza(this.zzewf, mediaInfo.zzewf) && zzbdw.zza(this.zzewg, mediaInfo.zzewg);
    }

    public List<AdBreakClipInfo> getAdBreakClips() {
        if (this.zzewf == null) {
            return null;
        }
        return Collections.unmodifiableList(this.zzewf);
    }

    public List<AdBreakInfo> getAdBreaks() {
        if (this.zzewe == null) {
            return null;
        }
        return Collections.unmodifiableList(this.zzewe);
    }

    public String getContentId() {
        return this.zzeso;
    }

    public String getContentType() {
        return this.zzevz;
    }

    public JSONObject getCustomData() {
        return this.zzess;
    }

    public String getEntity() {
        return this.zzewg;
    }

    public List<MediaTrack> getMediaTracks() {
        return this.zzewc;
    }

    public MediaMetadata getMetadata() {
        return this.zzewa;
    }

    public long getStreamDuration() {
        return this.zzewb;
    }

    public int getStreamType() {
        return this.zzevy;
    }

    public TextTrackStyle getTextTrackStyle() {
        return this.zzewd;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzeso, Integer.valueOf(this.zzevy), this.zzevz, this.zzewa, Long.valueOf(this.zzewb), String.valueOf(this.zzess), this.zzewc, this.zzewd, this.zzewe, this.zzewf, this.zzewg});
    }

    final void setContentType(String str) {
        this.zzevz = str;
    }

    final void setCustomData(JSONObject jSONObject) {
        this.zzess = jSONObject;
    }

    final void setStreamType(int i) throws IllegalArgumentException {
        if (i < -1 || i > 2) {
            throw new IllegalArgumentException("invalid stream type");
        }
        this.zzevy = i;
    }

    public void setTextTrackStyle(TextTrackStyle textTrackStyle) {
        this.zzewd = textTrackStyle;
    }

    @Hide
    public final JSONObject toJson() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("contentId", this.zzeso);
            switch (this.zzevy) {
                case 1:
                    str = "BUFFERED";
                    break;
                case 2:
                    str = "LIVE";
                    break;
                default:
                    str = "NONE";
                    break;
            }
            jSONObject.put("streamType", str);
            if (this.zzevz != null) {
                jSONObject.put("contentType", this.zzevz);
            }
            if (this.zzewa != null) {
                jSONObject.put("metadata", this.zzewa.toJson());
            }
            if (this.zzewb <= -1) {
                jSONObject.put("duration", JSONObject.NULL);
            } else {
                jSONObject.put("duration", this.zzewb / 1000.0d);
            }
            if (this.zzewc != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator<MediaTrack> it = this.zzewc.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().toJson());
                }
                jSONObject.put(DatabaseHelper.DB_TABLE_TRACKS, jSONArray);
            }
            if (this.zzewd != null) {
                jSONObject.put("textTrackStyle", this.zzewd.toJson());
            }
            if (this.zzess != null) {
                jSONObject.put("customData", this.zzess);
            }
            if (this.zzewg != null) {
                jSONObject.put("entity", this.zzewg);
            }
            if (this.zzewe != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<AdBreakInfo> it2 = this.zzewe.iterator();
                while (it2.hasNext()) {
                    jSONArray2.put(it2.next().toJson());
                }
                jSONObject.put("breaks", jSONArray2);
            }
            if (this.zzewf != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator<AdBreakClipInfo> it3 = this.zzewf.iterator();
                while (it3.hasNext()) {
                    jSONArray3.put(it3.next().toJson());
                }
                jSONObject.put("breakClips", jSONArray3);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.zzesn = this.zzess == null ? null : this.zzess.toString();
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, getContentId(), false);
        zzbgo.zzc(parcel, 3, getStreamType());
        zzbgo.zza(parcel, 4, getContentType(), false);
        zzbgo.zza(parcel, 5, (Parcelable) getMetadata(), i, false);
        zzbgo.zza(parcel, 6, getStreamDuration());
        zzbgo.zzc(parcel, 7, getMediaTracks(), false);
        zzbgo.zza(parcel, 8, (Parcelable) getTextTrackStyle(), i, false);
        zzbgo.zza(parcel, 9, this.zzesn, false);
        zzbgo.zzc(parcel, 10, getAdBreaks(), false);
        zzbgo.zzc(parcel, 11, getAdBreakClips(), false);
        zzbgo.zza(parcel, 12, getEntity(), false);
        zzbgo.zzai(parcel, zze);
    }

    final void zza(MediaMetadata mediaMetadata) {
        this.zzewa = mediaMetadata;
    }

    @Hide
    public final void zzaa(List<AdBreakInfo> list) {
        this.zzewe = list;
    }

    @Hide
    final void zzab(List<AdBreakClipInfo> list) {
        this.zzewf = list;
    }

    @Hide
    public final void zzfk(String str) {
        this.zzewg = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzs(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("breaks")) {
            JSONArray jSONArray = jSONObject.getJSONArray("breaks");
            this.zzewe = new ArrayList(jSONArray.length());
            int i = 0;
            while (true) {
                if (i >= jSONArray.length()) {
                    break;
                }
                AdBreakInfo zzq = AdBreakInfo.zzq(jSONArray.getJSONObject(i));
                if (zzq == null) {
                    this.zzewe.clear();
                    break;
                } else {
                    this.zzewe.add(zzq);
                    i++;
                }
            }
        }
        if (jSONObject.has("breakClips")) {
            JSONArray jSONArray2 = jSONObject.getJSONArray("breakClips");
            this.zzewf = new ArrayList(jSONArray2.length());
            for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                AdBreakClipInfo zzp = AdBreakClipInfo.zzp(jSONArray2.getJSONObject(i2));
                if (zzp == null) {
                    this.zzewf.clear();
                    return;
                }
                this.zzewf.add(zzp);
            }
        }
    }

    final void zzw(long j) throws IllegalArgumentException {
        if (j < 0 && j != -1) {
            throw new IllegalArgumentException("Invalid stream duration");
        }
        this.zzewb = j;
    }

    final void zzz(List<MediaTrack> list) {
        this.zzewc = list;
    }
}
