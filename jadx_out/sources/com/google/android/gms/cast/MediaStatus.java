package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class MediaStatus extends zzbgl {
    public static final long COMMAND_PAUSE = 1;
    public static final long COMMAND_SEEK = 2;
    public static final long COMMAND_SET_VOLUME = 4;
    public static final long COMMAND_SKIP_BACKWARD = 32;
    public static final long COMMAND_SKIP_FORWARD = 16;
    public static final long COMMAND_TOGGLE_MUTE = 8;

    @Hide
    public static final Parcelable.Creator<MediaStatus> CREATOR = new zzaj();
    public static final int IDLE_REASON_CANCELED = 2;
    public static final int IDLE_REASON_ERROR = 4;
    public static final int IDLE_REASON_FINISHED = 1;
    public static final int IDLE_REASON_INTERRUPTED = 3;
    public static final int IDLE_REASON_NONE = 0;
    public static final int PLAYER_STATE_BUFFERING = 4;
    public static final int PLAYER_STATE_IDLE = 1;
    public static final int PLAYER_STATE_PAUSED = 3;
    public static final int PLAYER_STATE_PLAYING = 2;
    public static final int PLAYER_STATE_UNKNOWN = 0;
    public static final int REPEAT_MODE_REPEAT_ALL = 1;
    public static final int REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE = 3;
    public static final int REPEAT_MODE_REPEAT_OFF = 0;
    public static final int REPEAT_MODE_REPEAT_SINGLE = 2;
    private String zzesn;
    private JSONObject zzess;
    private MediaInfo zzewh;
    private double zzewk;
    private long[] zzewl;
    private long zzexb;
    private int zzexc;
    private int zzexd;
    private int zzexe;
    private long zzexf;
    private long zzexg;
    private double zzexh;
    private boolean zzexi;
    private int zzexj;
    private int zzexk;
    private int zzexl;
    private ArrayList<MediaQueueItem> zzexm;
    private boolean zzexn;
    private AdBreakStatus zzexo;
    private VideoInfo zzexp;
    private final SparseArray<Integer> zzexq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaStatus(MediaInfo mediaInfo, long j, int i, double d, int i2, int i3, long j2, long j3, double d2, boolean z, long[] jArr, int i4, int i5, String str, int i6, List<MediaQueueItem> list, boolean z2, AdBreakStatus adBreakStatus, VideoInfo videoInfo) {
        this.zzexm = new ArrayList<>();
        this.zzexq = new SparseArray<>();
        this.zzewh = mediaInfo;
        this.zzexb = j;
        this.zzexc = i;
        this.zzewk = d;
        this.zzexd = i2;
        this.zzexe = i3;
        this.zzexf = j2;
        this.zzexg = j3;
        this.zzexh = d2;
        this.zzexi = z;
        this.zzewl = jArr;
        this.zzexj = i4;
        this.zzexk = i5;
        this.zzesn = str;
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
        this.zzexl = i6;
        if (list != null && !list.isEmpty()) {
            zza((MediaQueueItem[]) list.toArray(new MediaQueueItem[list.size()]));
        }
        this.zzexn = z2;
        this.zzexo = adBreakStatus;
        this.zzexp = videoInfo;
    }

    @Hide
    public MediaStatus(JSONObject jSONObject) throws JSONException {
        this(null, 0L, 0, 0.0d, 0, 0, 0L, 0L, 0.0d, false, null, 0, 0, null, 0, null, false, null, null);
        zza(jSONObject, 0);
    }

    private final void zza(MediaQueueItem[] mediaQueueItemArr) {
        this.zzexm.clear();
        this.zzexq.clear();
        for (int i = 0; i < mediaQueueItemArr.length; i++) {
            MediaQueueItem mediaQueueItem = mediaQueueItemArr[i];
            this.zzexm.add(mediaQueueItem);
            this.zzexq.put(mediaQueueItem.getItemId(), Integer.valueOf(i));
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaStatus)) {
            return false;
        }
        MediaStatus mediaStatus = (MediaStatus) obj;
        if ((this.zzess == null) == (mediaStatus.zzess == null) && this.zzexb == mediaStatus.zzexb && this.zzexc == mediaStatus.zzexc && this.zzewk == mediaStatus.zzewk && this.zzexd == mediaStatus.zzexd && this.zzexe == mediaStatus.zzexe && this.zzexf == mediaStatus.zzexf && this.zzexh == mediaStatus.zzexh && this.zzexi == mediaStatus.zzexi && this.zzexj == mediaStatus.zzexj && this.zzexk == mediaStatus.zzexk && this.zzexl == mediaStatus.zzexl && Arrays.equals(this.zzewl, mediaStatus.zzewl) && zzbdw.zza(Long.valueOf(this.zzexg), Long.valueOf(mediaStatus.zzexg)) && zzbdw.zza(this.zzexm, mediaStatus.zzexm) && zzbdw.zza(this.zzewh, mediaStatus.zzewh)) {
            if ((this.zzess == null || mediaStatus.zzess == null || com.google.android.gms.common.util.zzq.zzc(this.zzess, mediaStatus.zzess)) && this.zzexn == mediaStatus.isPlayingAd()) {
                return true;
            }
        }
        return false;
    }

    public long[] getActiveTrackIds() {
        return this.zzewl;
    }

    public AdBreakStatus getAdBreakStatus() {
        return this.zzexo;
    }

    public AdBreakInfo getCurrentAdBreak() {
        List<AdBreakInfo> adBreaks;
        if (this.zzexo == null || this.zzewh == null) {
            return null;
        }
        String breakId = this.zzexo.getBreakId();
        if (TextUtils.isEmpty(breakId) || (adBreaks = this.zzewh.getAdBreaks()) == null || adBreaks.isEmpty()) {
            return null;
        }
        for (AdBreakInfo adBreakInfo : adBreaks) {
            if (breakId.equals(adBreakInfo.getId())) {
                return adBreakInfo;
            }
        }
        return null;
    }

    public AdBreakClipInfo getCurrentAdBreakClip() {
        List<AdBreakClipInfo> adBreakClips;
        if (this.zzexo == null || this.zzewh == null) {
            return null;
        }
        String breakClipId = this.zzexo.getBreakClipId();
        if (TextUtils.isEmpty(breakClipId) || (adBreakClips = this.zzewh.getAdBreakClips()) == null || adBreakClips.isEmpty()) {
            return null;
        }
        for (AdBreakClipInfo adBreakClipInfo : adBreakClips) {
            if (breakClipId.equals(adBreakClipInfo.getId())) {
                return adBreakClipInfo;
            }
        }
        return null;
    }

    public int getCurrentItemId() {
        return this.zzexc;
    }

    public JSONObject getCustomData() {
        return this.zzess;
    }

    public int getIdleReason() {
        return this.zzexe;
    }

    public Integer getIndexById(int i) {
        return this.zzexq.get(i);
    }

    public MediaQueueItem getItemById(int i) {
        Integer num = this.zzexq.get(i);
        if (num == null) {
            return null;
        }
        return this.zzexm.get(num.intValue());
    }

    public MediaQueueItem getItemByIndex(int i) {
        if (i < 0 || i >= this.zzexm.size()) {
            return null;
        }
        return this.zzexm.get(i);
    }

    public int getLoadingItemId() {
        return this.zzexj;
    }

    public MediaInfo getMediaInfo() {
        return this.zzewh;
    }

    public double getPlaybackRate() {
        return this.zzewk;
    }

    public int getPlayerState() {
        return this.zzexd;
    }

    public int getPreloadedItemId() {
        return this.zzexk;
    }

    public MediaQueueItem getQueueItem(int i) {
        return getItemByIndex(i);
    }

    public MediaQueueItem getQueueItemById(int i) {
        return getItemById(i);
    }

    public int getQueueItemCount() {
        return this.zzexm.size();
    }

    public List<MediaQueueItem> getQueueItems() {
        return this.zzexm;
    }

    public int getQueueRepeatMode() {
        return this.zzexl;
    }

    public long getStreamPosition() {
        return this.zzexf;
    }

    public double getStreamVolume() {
        return this.zzexh;
    }

    public VideoInfo getVideoInfo() {
        return this.zzexp;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzewh, Long.valueOf(this.zzexb), Integer.valueOf(this.zzexc), Double.valueOf(this.zzewk), Integer.valueOf(this.zzexd), Integer.valueOf(this.zzexe), Long.valueOf(this.zzexf), Long.valueOf(this.zzexg), Double.valueOf(this.zzexh), Boolean.valueOf(this.zzexi), Integer.valueOf(Arrays.hashCode(this.zzewl)), Integer.valueOf(this.zzexj), Integer.valueOf(this.zzexk), String.valueOf(this.zzess), Integer.valueOf(this.zzexl), this.zzexm, Boolean.valueOf(this.zzexn)});
    }

    public boolean isMediaCommandSupported(long j) {
        return (this.zzexg & j) != 0;
    }

    public boolean isMute() {
        return this.zzexi;
    }

    public boolean isPlayingAd() {
        return this.zzexn;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        this.zzesn = this.zzess == null ? null : this.zzess.toString();
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, (Parcelable) getMediaInfo(), i, false);
        zzbgo.zza(parcel, 3, this.zzexb);
        zzbgo.zzc(parcel, 4, getCurrentItemId());
        zzbgo.zza(parcel, 5, getPlaybackRate());
        zzbgo.zzc(parcel, 6, getPlayerState());
        zzbgo.zzc(parcel, 7, getIdleReason());
        zzbgo.zza(parcel, 8, getStreamPosition());
        zzbgo.zza(parcel, 9, this.zzexg);
        zzbgo.zza(parcel, 10, getStreamVolume());
        zzbgo.zza(parcel, 11, isMute());
        zzbgo.zza(parcel, 12, getActiveTrackIds(), false);
        zzbgo.zzc(parcel, 13, getLoadingItemId());
        zzbgo.zzc(parcel, 14, getPreloadedItemId());
        zzbgo.zza(parcel, 15, this.zzesn, false);
        zzbgo.zzc(parcel, 16, this.zzexl);
        zzbgo.zzc(parcel, 17, this.zzexm, false);
        zzbgo.zza(parcel, 18, isPlayingAd());
        zzbgo.zza(parcel, 19, (Parcelable) getAdBreakStatus(), i, false);
        zzbgo.zza(parcel, 20, (Parcelable) getVideoInfo(), i, false);
        zzbgo.zzai(parcel, zze);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0300, code lost:
    
        if (r15 == false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x01fc, code lost:
    
        if (r15 == 2) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x01ff, code lost:
    
        if (r8 != 0) goto L128;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0352 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:181:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0158  */
    @com.google.android.gms.common.internal.Hide
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(org.json.JSONObject r14, int r15) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 916
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.zza(org.json.JSONObject, int):int");
    }

    @Hide
    public final long zzadv() {
        return this.zzexb;
    }

    @Hide
    public final void zzbb(boolean z) {
        this.zzexn = z;
    }
}
