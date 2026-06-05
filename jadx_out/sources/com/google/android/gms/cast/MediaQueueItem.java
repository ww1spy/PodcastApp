package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MediaQueueItem extends zzbgl {

    @Hide
    public static final Parcelable.Creator<MediaQueueItem> CREATOR = new zzai();
    public static final double DEFAULT_PLAYBACK_DURATION = Double.POSITIVE_INFINITY;
    public static final int INVALID_ITEM_ID = 0;
    private String zzesn;
    private JSONObject zzess;
    private boolean zzewi;
    private long[] zzewl;
    private MediaInfo zzewv;
    private int zzeww;
    private double zzewx;
    private double zzewy;
    private double zzewz;

    /* loaded from: classes.dex */
    public static class Builder {
        private final MediaQueueItem zzexa;

        public Builder(MediaInfo mediaInfo) throws IllegalArgumentException {
            this.zzexa = new MediaQueueItem(mediaInfo);
        }

        public Builder(MediaQueueItem mediaQueueItem) throws IllegalArgumentException {
            this.zzexa = new MediaQueueItem();
        }

        public Builder(JSONObject jSONObject) throws JSONException {
            this.zzexa = new MediaQueueItem(jSONObject);
        }

        public MediaQueueItem build() {
            this.zzexa.zzadu();
            return this.zzexa;
        }

        public Builder clearItemId() {
            this.zzexa.zzba(0);
            return this;
        }

        public Builder setActiveTrackIds(long[] jArr) {
            this.zzexa.zza(jArr);
            return this;
        }

        public Builder setAutoplay(boolean z) {
            this.zzexa.zzba(z);
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.zzexa.setCustomData(jSONObject);
            return this;
        }

        public Builder setPlaybackDuration(double d) {
            this.zzexa.zzd(d);
            return this;
        }

        public Builder setPreloadTime(double d) throws IllegalArgumentException {
            this.zzexa.zze(d);
            return this;
        }

        public Builder setStartTime(double d) throws IllegalArgumentException {
            this.zzexa.zzc(d);
            return this;
        }
    }

    private MediaQueueItem(MediaInfo mediaInfo) throws IllegalArgumentException {
        this(mediaInfo, 0, true, 0.0d, Double.POSITIVE_INFINITY, 0.0d, null, null);
        if (mediaInfo == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaQueueItem(MediaInfo mediaInfo, int i, boolean z, double d, double d2, double d3, long[] jArr, String str) {
        this.zzewv = mediaInfo;
        this.zzeww = i;
        this.zzewi = z;
        this.zzewx = d;
        this.zzewy = d2;
        this.zzewz = d3;
        this.zzewl = jArr;
        this.zzesn = str;
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

    @Hide
    private MediaQueueItem(MediaQueueItem mediaQueueItem) throws IllegalArgumentException {
        this(mediaQueueItem.getMedia(), mediaQueueItem.getItemId(), mediaQueueItem.getAutoplay(), mediaQueueItem.getStartTime(), mediaQueueItem.getPlaybackDuration(), mediaQueueItem.getPreloadTime(), mediaQueueItem.getActiveTrackIds(), null);
        if (this.zzewv == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
        this.zzess = mediaQueueItem.getCustomData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaQueueItem(JSONObject jSONObject) throws JSONException {
        this(null, 0, true, 0.0d, Double.POSITIVE_INFINITY, 0.0d, null, null);
        zzu(jSONObject);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        if ((this.zzess == null) != (mediaQueueItem.zzess == null)) {
            return false;
        }
        return (this.zzess == null || mediaQueueItem.zzess == null || com.google.android.gms.common.util.zzq.zzc(this.zzess, mediaQueueItem.zzess)) && zzbdw.zza(this.zzewv, mediaQueueItem.zzewv) && this.zzeww == mediaQueueItem.zzeww && this.zzewi == mediaQueueItem.zzewi && this.zzewx == mediaQueueItem.zzewx && this.zzewy == mediaQueueItem.zzewy && this.zzewz == mediaQueueItem.zzewz && Arrays.equals(this.zzewl, mediaQueueItem.zzewl);
    }

    public long[] getActiveTrackIds() {
        return this.zzewl;
    }

    public boolean getAutoplay() {
        return this.zzewi;
    }

    public JSONObject getCustomData() {
        return this.zzess;
    }

    public int getItemId() {
        return this.zzeww;
    }

    public MediaInfo getMedia() {
        return this.zzewv;
    }

    public double getPlaybackDuration() {
        return this.zzewy;
    }

    public double getPreloadTime() {
        return this.zzewz;
    }

    public double getStartTime() {
        return this.zzewx;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzewv, Integer.valueOf(this.zzeww), Boolean.valueOf(this.zzewi), Double.valueOf(this.zzewx), Double.valueOf(this.zzewy), Double.valueOf(this.zzewz), Integer.valueOf(Arrays.hashCode(this.zzewl)), String.valueOf(this.zzess)});
    }

    final void setCustomData(JSONObject jSONObject) {
        this.zzess = jSONObject;
    }

    @Hide
    public final JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("media", this.zzewv.toJson());
            if (this.zzeww != 0) {
                jSONObject.put("itemId", this.zzeww);
            }
            jSONObject.put("autoplay", this.zzewi);
            jSONObject.put("startTime", this.zzewx);
            if (this.zzewy != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", this.zzewy);
            }
            jSONObject.put("preloadTime", this.zzewz);
            if (this.zzewl != null) {
                JSONArray jSONArray = new JSONArray();
                for (long j : this.zzewl) {
                    jSONArray.put(j);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            if (this.zzess != null) {
                jSONObject.put("customData", this.zzess);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.zzesn = this.zzess == null ? null : this.zzess.toString();
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) getMedia(), i, false);
        zzbgo.zzc(parcel, 3, getItemId());
        zzbgo.zza(parcel, 4, getAutoplay());
        zzbgo.zza(parcel, 5, getStartTime());
        zzbgo.zza(parcel, 6, getPlaybackDuration());
        zzbgo.zza(parcel, 7, getPreloadTime());
        zzbgo.zza(parcel, 8, getActiveTrackIds(), false);
        zzbgo.zza(parcel, 9, this.zzesn, false);
        zzbgo.zzai(parcel, zze);
    }

    final void zza(long[] jArr) {
        this.zzewl = jArr;
    }

    final void zzadu() throws IllegalArgumentException {
        if (this.zzewv == null) {
            throw new IllegalArgumentException("media cannot be null.");
        }
        if (Double.isNaN(this.zzewx) || this.zzewx < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        if (Double.isNaN(this.zzewy)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        }
        if (Double.isNaN(this.zzewz) || this.zzewz < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
        }
    }

    final void zzba(int i) {
        this.zzeww = 0;
    }

    final void zzba(boolean z) {
        this.zzewi = z;
    }

    final void zzc(double d) throws IllegalArgumentException {
        if (Double.isNaN(d) || d < 0.0d) {
            throw new IllegalArgumentException("startTime cannot be negative or NaN.");
        }
        this.zzewx = d;
    }

    final void zzd(double d) throws IllegalArgumentException {
        if (Double.isNaN(d)) {
            throw new IllegalArgumentException("playbackDuration cannot be NaN.");
        }
        this.zzewy = d;
    }

    final void zze(double d) throws IllegalArgumentException {
        if (Double.isNaN(d) || d < 0.0d) {
            throw new IllegalArgumentException("preloadTime cannot be negative or NaN.");
        }
        this.zzewz = d;
    }

    @Hide
    public final boolean zzu(JSONObject jSONObject) throws JSONException {
        boolean z;
        long[] jArr;
        boolean z2;
        int i;
        boolean z3 = false;
        if (jSONObject.has("media")) {
            this.zzewv = new MediaInfo(jSONObject.getJSONObject("media"));
            z = true;
        } else {
            z = false;
        }
        if (jSONObject.has("itemId") && this.zzeww != (i = jSONObject.getInt("itemId"))) {
            this.zzeww = i;
            z = true;
        }
        if (jSONObject.has("autoplay") && this.zzewi != (z2 = jSONObject.getBoolean("autoplay"))) {
            this.zzewi = z2;
            z = true;
        }
        if (jSONObject.has("startTime")) {
            double d = jSONObject.getDouble("startTime");
            if (Math.abs(d - this.zzewx) > 1.0E-7d) {
                this.zzewx = d;
                z = true;
            }
        }
        if (jSONObject.has("playbackDuration")) {
            double d2 = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d2 - this.zzewy) > 1.0E-7d) {
                this.zzewy = d2;
                z = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            double d3 = jSONObject.getDouble("preloadTime");
            if (Math.abs(d3 - this.zzewz) > 1.0E-7d) {
                this.zzewz = d3;
                z = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i2 = 0; i2 < length; i2++) {
                jArr[i2] = jSONArray.getLong(i2);
            }
            if (this.zzewl != null && this.zzewl.length == length) {
                for (int i3 = 0; i3 < length; i3++) {
                    if (this.zzewl[i3] == jArr[i3]) {
                    }
                }
            }
            z3 = true;
            break;
        } else {
            jArr = null;
        }
        if (z3) {
            this.zzewl = jArr;
            z = true;
        }
        if (!jSONObject.has("customData")) {
            return z;
        }
        this.zzess = jSONObject.getJSONObject("customData");
        return true;
    }
}
