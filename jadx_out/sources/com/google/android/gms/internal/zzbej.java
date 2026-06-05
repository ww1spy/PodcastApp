package com.google.android.gms.internal;

import android.support.annotation.NonNull;
import android.support.v7.media.MediaRouteProviderProtocol;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadOptions;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.RemoteMediaPlayer;
import com.google.android.gms.cast.TextTrackStyle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbej extends zzbdg {
    public static final String NAMESPACE = zzbdw.zzfw("com.google.cast.media");
    private final List<zzbeo> zzfki;
    private long zzfns;
    private MediaStatus zzfnt;
    private zzbek zzfnu;
    private final zzbeo zzfnv;
    private final zzbeo zzfnw;
    private final zzbeo zzfnx;
    private final zzbeo zzfny;
    private final zzbeo zzfnz;
    private final zzbeo zzfoa;
    private final zzbeo zzfob;
    private final zzbeo zzfoc;
    private final zzbeo zzfod;
    private final zzbeo zzfoe;
    private final zzbeo zzfof;
    private final zzbeo zzfog;
    private final zzbeo zzfoh;
    private final zzbeo zzfoi;
    private final zzbeo zzfoj;

    public zzbej(String str, com.google.android.gms.common.util.zze zzeVar) {
        super(NAMESPACE, zzeVar, "MediaControlChannel", null, 1000L);
        this.zzfnv = new zzbeo(this.zzata, 86400000L);
        this.zzfnw = new zzbeo(this.zzata, 86400000L);
        this.zzfnx = new zzbeo(this.zzata, 86400000L);
        this.zzfny = new zzbeo(this.zzata, 86400000L);
        this.zzfnz = new zzbeo(this.zzata, 86400000L);
        this.zzfoa = new zzbeo(this.zzata, 86400000L);
        this.zzfob = new zzbeo(this.zzata, 86400000L);
        this.zzfoc = new zzbeo(this.zzata, 86400000L);
        this.zzfod = new zzbeo(this.zzata, 86400000L);
        this.zzfoe = new zzbeo(this.zzata, 86400000L);
        this.zzfof = new zzbeo(this.zzata, 86400000L);
        this.zzfog = new zzbeo(this.zzata, 86400000L);
        this.zzfoh = new zzbeo(this.zzata, 86400000L);
        this.zzfoi = new zzbeo(this.zzata, 86400000L);
        this.zzfoj = new zzbeo(this.zzata, 86400000L);
        this.zzfki = new ArrayList();
        this.zzfki.add(this.zzfnv);
        this.zzfki.add(this.zzfnw);
        this.zzfki.add(this.zzfnx);
        this.zzfki.add(this.zzfny);
        this.zzfki.add(this.zzfnz);
        this.zzfki.add(this.zzfoa);
        this.zzfki.add(this.zzfob);
        this.zzfki.add(this.zzfoc);
        this.zzfki.add(this.zzfod);
        this.zzfki.add(this.zzfoe);
        this.zzfki.add(this.zzfof);
        this.zzfki.add(this.zzfog);
        this.zzfki.add(this.zzfoh);
        this.zzfki.add(this.zzfoi);
        this.zzfki.add(this.zzfoj);
        zzagy();
    }

    private final void onMetadataUpdated() {
        if (this.zzfnu != null) {
            this.zzfnu.onMetadataUpdated();
        }
    }

    private final void onPreloadStatusUpdated() {
        if (this.zzfnu != null) {
            this.zzfnu.onPreloadStatusUpdated();
        }
    }

    private final void onQueueStatusUpdated() {
        if (this.zzfnu != null) {
            this.zzfnu.onQueueStatusUpdated();
        }
    }

    private final void onStatusUpdated() {
        if (this.zzfnu != null) {
            this.zzfnu.onStatusUpdated();
        }
    }

    private static String zza(String str, List<com.google.android.gms.cast.zzbl> list, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("requestId", j);
            jSONObject.put("type", "PRECACHE");
            if (str != null) {
                jSONObject.put("precacheData", str);
            }
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < list.size(); i++) {
                    jSONArray.put(i, list.get(i).toJson());
                }
                jSONObject.put("requestItems", jSONArray);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    private final void zza(long j, JSONObject jSONObject) throws JSONException {
        int i;
        boolean test = this.zzfnv.test(j);
        boolean z = true;
        boolean z2 = this.zzfnz.zzaha() && !this.zzfnz.test(j);
        if ((!this.zzfoa.zzaha() || this.zzfoa.test(j)) && (!this.zzfob.zzaha() || this.zzfob.test(j))) {
            z = false;
        }
        int i2 = z2 ? 2 : 0;
        if (z) {
            i2 |= 1;
        }
        if (test || this.zzfnt == null) {
            this.zzfnt = new MediaStatus(jSONObject);
            this.zzfns = this.zzata.elapsedRealtime();
            i = 127;
        } else {
            i = this.zzfnt.zza(jSONObject, i2);
        }
        if ((i & 1) != 0) {
            this.zzfns = this.zzata.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i & 2) != 0) {
            this.zzfns = this.zzata.elapsedRealtime();
            onStatusUpdated();
        }
        if ((i & 4) != 0) {
            onMetadataUpdated();
        }
        if ((i & 8) != 0) {
            onQueueStatusUpdated();
        }
        if ((i & 16) != 0) {
            onPreloadStatusUpdated();
        }
        if ((i & 32) != 0) {
            this.zzfns = this.zzata.elapsedRealtime();
            if (this.zzfnu != null) {
                this.zzfnu.onAdBreakStatusUpdated();
            }
        }
        if ((i & 64) != 0) {
            this.zzfns = this.zzata.elapsedRealtime();
            onStatusUpdated();
        }
        Iterator<zzbeo> it = this.zzfki.iterator();
        while (it.hasNext()) {
            it.next().zzc(j, 0, null);
        }
    }

    private final long zzadv() throws zzbel {
        if (this.zzfnt == null) {
            throw new zzbel();
        }
        return this.zzfnt.zzadv();
    }

    private final void zzagy() {
        this.zzfns = 0L;
        this.zzfnt = null;
        Iterator<zzbeo> it = this.zzfki.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    public final long getApproximateStreamPosition() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo == null || this.zzfns == 0) {
            return 0L;
        }
        double playbackRate = this.zzfnt.getPlaybackRate();
        long streamPosition = this.zzfnt.getStreamPosition();
        int playerState = this.zzfnt.getPlayerState();
        if (playbackRate == 0.0d || playerState != 2) {
            return streamPosition;
        }
        long streamDuration = mediaInfo.getStreamDuration();
        long elapsedRealtime = this.zzata.elapsedRealtime() - this.zzfns;
        if (elapsedRealtime < 0) {
            elapsedRealtime = 0;
        }
        if (elapsedRealtime == 0) {
            return streamPosition;
        }
        long j = streamPosition + ((long) (elapsedRealtime * playbackRate));
        if (streamDuration > 0 && j > streamDuration) {
            return streamDuration;
        }
        if (j < 0) {
            return 0L;
        }
        return j;
    }

    public final MediaInfo getMediaInfo() {
        if (this.zzfnt == null) {
            return null;
        }
        return this.zzfnt.getMediaInfo();
    }

    public final MediaStatus getMediaStatus() {
        return this.zzfnt;
    }

    public final long getStreamDuration() {
        MediaInfo mediaInfo = getMediaInfo();
        if (mediaInfo != null) {
            return mediaInfo.getStreamDuration();
        }
        return 0L;
    }

    public final long zza(zzben zzbenVar) throws IllegalStateException {
        JSONObject jSONObject = new JSONObject();
        long zzagn = zzagn();
        this.zzfoc.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject.put("requestId", zzagn);
            jSONObject.put("type", "GET_STATUS");
            if (this.zzfnt != null) {
                jSONObject.put("mediaSessionId", this.zzfnt.zzadv());
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, double d, JSONObject jSONObject) throws IllegalStateException, zzbel, IllegalArgumentException {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            StringBuilder sb = new StringBuilder(41);
            sb.append("Volume cannot be ");
            sb.append(d);
            throw new IllegalArgumentException(sb.toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfoa.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzadv());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("level", d);
            jSONObject2.put(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, int i, long j, MediaQueueItem[] mediaQueueItemArr, int i2, Integer num, JSONObject jSONObject) throws IllegalArgumentException, IllegalStateException, zzbel {
        String str;
        String str2;
        if (j != -1 && j < 0) {
            StringBuilder sb = new StringBuilder(53);
            sb.append("playPosition cannot be negative: ");
            sb.append(j);
            throw new IllegalArgumentException(sb.toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfog.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "QUEUE_UPDATE");
            jSONObject2.put("mediaSessionId", zzadv());
            if (i != 0) {
                jSONObject2.put("currentItemId", i);
            }
            if (i2 != 0) {
                jSONObject2.put("jump", i2);
            }
            if (mediaQueueItemArr != null && mediaQueueItemArr.length > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                    jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
                }
                jSONObject2.put("items", jSONArray);
            }
            if (num != null) {
                switch (num.intValue()) {
                    case 0:
                        str = "repeatMode";
                        str2 = "REPEAT_OFF";
                        jSONObject2.put(str, str2);
                        break;
                    case 1:
                        str = "repeatMode";
                        str2 = "REPEAT_ALL";
                        jSONObject2.put(str, str2);
                        break;
                    case 2:
                        str = "repeatMode";
                        str2 = "REPEAT_SINGLE";
                        jSONObject2.put(str, str2);
                        break;
                    case 3:
                        str = "repeatMode";
                        str2 = "REPEAT_ALL_AND_SHUFFLE";
                        jSONObject2.put(str, str2);
                        break;
                }
            }
            if (j != -1) {
                jSONObject2.put("currentTime", j / 1000.0d);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0047 A[Catch: JSONException -> 0x004c, TRY_LEAVE, TryCatch #0 {JSONException -> 0x004c, blocks: (B:3:0x0012, B:6:0x0039, B:8:0x0047), top: B:2:0x0012 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zza(com.google.android.gms.internal.zzben r7, long r8, int r10, org.json.JSONObject r11) throws java.lang.IllegalStateException, com.google.android.gms.internal.zzbel {
        /*
            r6 = this;
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            long r1 = r6.zzagn()
            com.google.android.gms.internal.zzbeo r3 = r6.zzfnz
            r3.zza(r1, r7)
            r7 = 1
            r6.zzbg(r7)
            java.lang.String r3 = "requestId"
            r0.put(r3, r1)     // Catch: org.json.JSONException -> L4c
            java.lang.String r3 = "type"
            java.lang.String r4 = "SEEK"
            r0.put(r3, r4)     // Catch: org.json.JSONException -> L4c
            java.lang.String r3 = "mediaSessionId"
            long r4 = r6.zzadv()     // Catch: org.json.JSONException -> L4c
            r0.put(r3, r4)     // Catch: org.json.JSONException -> L4c
            java.lang.String r3 = "currentTime"
            double r8 = (double) r8     // Catch: org.json.JSONException -> L4c
            r4 = 4652007308841189376(0x408f400000000000, double:1000.0)
            double r8 = r8 / r4
            r0.put(r3, r8)     // Catch: org.json.JSONException -> L4c
            if (r10 != r7) goto L3d
            java.lang.String r7 = "resumeState"
            java.lang.String r8 = "PLAYBACK_START"
        L39:
            r0.put(r7, r8)     // Catch: org.json.JSONException -> L4c
            goto L45
        L3d:
            r7 = 2
            if (r10 != r7) goto L45
            java.lang.String r7 = "resumeState"
            java.lang.String r8 = "PLAYBACK_PAUSE"
            goto L39
        L45:
            if (r11 == 0) goto L4c
            java.lang.String r7 = "customData"
            r0.put(r7, r11)     // Catch: org.json.JSONException -> L4c
        L4c:
            java.lang.String r7 = r0.toString()
            r8 = 0
            r6.zza(r7, r1, r8)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzbej.zza(com.google.android.gms.internal.zzben, long, int, org.json.JSONObject):long");
    }

    public final long zza(@NonNull zzben zzbenVar, @NonNull MediaInfo mediaInfo, @NonNull MediaLoadOptions mediaLoadOptions) throws IllegalStateException, IllegalArgumentException {
        JSONObject jSONObject = new JSONObject();
        long zzagn = zzagn();
        this.zzfnv.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject.put("requestId", zzagn);
            jSONObject.put("type", "LOAD");
            jSONObject.put("media", mediaInfo.toJson());
            jSONObject.put("autoplay", mediaLoadOptions.getAutoplay());
            jSONObject.put("currentTime", mediaLoadOptions.getPlayPosition() / 1000.0d);
            jSONObject.put("playbackRate", mediaLoadOptions.getPlaybackRate());
            if (mediaLoadOptions.getCredentials() != null) {
                jSONObject.put("credentials", mediaLoadOptions.getCredentials());
            }
            if (mediaLoadOptions.getCredentialsType() != null) {
                jSONObject.put("credentialsType", mediaLoadOptions.getCredentialsType());
            }
            long[] activeTrackIds = mediaLoadOptions.getActiveTrackIds();
            if (activeTrackIds != null) {
                JSONArray jSONArray = new JSONArray();
                for (int i = 0; i < activeTrackIds.length; i++) {
                    jSONArray.put(i, activeTrackIds[i]);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            JSONObject customData = mediaLoadOptions.getCustomData();
            if (customData != null) {
                jSONObject.put("customData", customData);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, TextTrackStyle textTrackStyle) throws IllegalStateException, zzbel {
        JSONObject jSONObject = new JSONObject();
        long zzagn = zzagn();
        this.zzfoe.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject.put("requestId", zzagn);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            if (textTrackStyle != null) {
                jSONObject.put("textTrackStyle", textTrackStyle.toJson());
            }
            jSONObject.put("mediaSessionId", zzadv());
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, JSONObject jSONObject) throws IllegalStateException, zzbel {
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfnw.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", zzadv());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, boolean z, JSONObject jSONObject) throws IllegalStateException, zzbel {
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfob.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "SET_VOLUME");
            jSONObject2.put("mediaSessionId", zzadv());
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("muted", z);
            jSONObject2.put(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, jSONObject3);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, int[] iArr, int i, JSONObject jSONObject) throws IllegalStateException, zzbel, IllegalArgumentException {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("itemIdsToReorder must not be null or empty.");
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfoi.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "QUEUE_REORDER");
            jSONObject2.put("mediaSessionId", zzadv());
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jSONArray.put(i2, iArr[i2]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (i != 0) {
                jSONObject2.put("insertBefore", i);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, int[] iArr, JSONObject jSONObject) throws IllegalStateException, zzbel, IllegalArgumentException {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("itemIdsToRemove must not be null or empty.");
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfoh.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "QUEUE_REMOVE");
            jSONObject2.put("mediaSessionId", zzadv());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < iArr.length; i++) {
                jSONArray.put(i, iArr[i]);
            }
            jSONObject2.put("itemIds", jSONArray);
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, long[] jArr) throws IllegalStateException, zzbel {
        JSONObject jSONObject = new JSONObject();
        long zzagn = zzagn();
        this.zzfod.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject.put("requestId", zzagn);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", zzadv());
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < jArr.length; i++) {
                jSONArray.put(i, jArr[i]);
            }
            jSONObject.put("activeTrackIds", jSONArray);
        } catch (JSONException unused) {
        }
        zza(jSONObject.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, MediaQueueItem[] mediaQueueItemArr, int i, int i2, int i3, long j, JSONObject jSONObject) throws IllegalStateException, zzbel, IllegalArgumentException {
        if (mediaQueueItemArr == null || mediaQueueItemArr.length == 0) {
            throw new IllegalArgumentException("itemsToInsert must not be null or empty.");
        }
        if (i3 != -1 && (i3 < 0 || i3 >= mediaQueueItemArr.length)) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "currentItemIndexInItemsToInsert %d out of range [0, %d).", Integer.valueOf(i3), Integer.valueOf(mediaQueueItemArr.length)));
        }
        if (j != -1 && j < 0) {
            StringBuilder sb = new StringBuilder(54);
            sb.append("playPosition can not be negative: ");
            sb.append(j);
            throw new IllegalArgumentException(sb.toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfof.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "QUEUE_INSERT");
            jSONObject2.put("mediaSessionId", zzadv());
            JSONArray jSONArray = new JSONArray();
            for (int i4 = 0; i4 < mediaQueueItemArr.length; i4++) {
                jSONArray.put(i4, mediaQueueItemArr[i4].toJson());
            }
            jSONObject2.put("items", jSONArray);
            if (i != 0) {
                jSONObject2.put("insertBefore", i);
            }
            if (i3 != -1) {
                jSONObject2.put("currentItemIndex", i3);
            }
            if (j != -1) {
                jSONObject2.put("currentTime", j / 1000.0d);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zza(zzben zzbenVar, MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j, JSONObject jSONObject) throws IllegalStateException, IllegalArgumentException {
        String str;
        String str2;
        if (mediaQueueItemArr == null || mediaQueueItemArr.length == 0) {
            throw new IllegalArgumentException("items must not be null or empty.");
        }
        if (i < 0 || i >= mediaQueueItemArr.length) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("Invalid startIndex: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        if (j != -1 && j < 0) {
            StringBuilder sb2 = new StringBuilder(54);
            sb2.append("playPosition can not be negative: ");
            sb2.append(j);
            throw new IllegalArgumentException(sb2.toString());
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfnv.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "QUEUE_LOAD");
            JSONArray jSONArray = new JSONArray();
            for (int i3 = 0; i3 < mediaQueueItemArr.length; i3++) {
                jSONArray.put(i3, mediaQueueItemArr[i3].toJson());
            }
            jSONObject2.put("items", jSONArray);
            switch (i2) {
                case 0:
                    str = "repeatMode";
                    str2 = "REPEAT_OFF";
                    break;
                case 1:
                    str = "repeatMode";
                    str2 = "REPEAT_ALL";
                    break;
                case 2:
                    str = "repeatMode";
                    str2 = "REPEAT_SINGLE";
                    break;
                case 3:
                    str = "repeatMode";
                    str2 = "REPEAT_ALL_AND_SHUFFLE";
                    break;
                default:
                    StringBuilder sb3 = new StringBuilder(32);
                    sb3.append("Invalid repeat mode: ");
                    sb3.append(i2);
                    throw new IllegalArgumentException(sb3.toString());
            }
            jSONObject2.put(str, str2);
            jSONObject2.put("startIndex", i);
            if (j != -1) {
                jSONObject2.put("currentTime", j / 1000.0d);
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final void zza(zzbek zzbekVar) {
        this.zzfnu = zzbekVar;
    }

    @Override // com.google.android.gms.internal.zzbdg, com.google.android.gms.internal.zzbdo
    public final void zzagm() {
        super.zzagm();
        zzagy();
    }

    public final long zzb(zzben zzbenVar, double d, JSONObject jSONObject) throws IllegalStateException, zzbel {
        if (this.zzfnt == null) {
            throw new zzbel();
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfoj.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "SET_PLAYBACK_RATE");
            jSONObject2.put("playbackRate", d);
            jSONObject2.put("mediaSessionId", this.zzfnt.zzadv());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zzb(zzben zzbenVar, JSONObject jSONObject) throws IllegalStateException, zzbel {
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfny.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "STOP");
            jSONObject2.put("mediaSessionId", zzadv());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    public final long zzb(String str, List<com.google.android.gms.cast.zzbl> list) throws IllegalStateException {
        long zzagn = zzagn();
        zza(zza(str, list, zzagn), zzagn, (String) null);
        return zzagn;
    }

    public final long zzc(zzben zzbenVar, JSONObject jSONObject) throws IllegalStateException, zzbel {
        JSONObject jSONObject2 = new JSONObject();
        long zzagn = zzagn();
        this.zzfnx.zza(zzagn, zzbenVar);
        zzbg(true);
        try {
            jSONObject2.put("requestId", zzagn);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", zzadv());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zza(jSONObject2.toString(), zzagn, (String) null);
        return zzagn;
    }

    @Override // com.google.android.gms.internal.zzbdo
    public final void zzc(long j, int i) {
        Iterator<zzbeo> it = this.zzfki.iterator();
        while (it.hasNext()) {
            it.next().zzc(j, i, null);
        }
    }

    @Override // com.google.android.gms.internal.zzbdo
    public final void zzfu(String str) {
        char c;
        this.zzeui.zzb("message received: %s", str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("type");
            long optLong = jSONObject.optLong("requestId", -1L);
            switch (string.hashCode()) {
                case -1830647528:
                    if (string.equals("LOAD_CANCELLED")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case -1125000185:
                    if (string.equals("INVALID_REQUEST")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -262628938:
                    if (string.equals("LOAD_FAILED")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 431600379:
                    if (string.equals("INVALID_PLAYER_STATE")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 823510221:
                    if (string.equals("MEDIA_STATUS")) {
                        c = 0;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                    JSONArray jSONArray = jSONObject.getJSONArray("status");
                    if (jSONArray.length() > 0) {
                        zza(optLong, jSONArray.getJSONObject(0));
                        return;
                    }
                    this.zzfnt = null;
                    onStatusUpdated();
                    onMetadataUpdated();
                    onQueueStatusUpdated();
                    onPreloadStatusUpdated();
                    this.zzfoc.zzc(optLong, 0, null);
                    return;
                case 1:
                    this.zzeui.zzf("received unexpected error: Invalid Player State.", new Object[0]);
                    JSONObject optJSONObject = jSONObject.optJSONObject("customData");
                    Iterator<zzbeo> it = this.zzfki.iterator();
                    while (it.hasNext()) {
                        it.next().zzc(optLong, 2100, optJSONObject);
                    }
                    return;
                case 2:
                    this.zzfnv.zzc(optLong, 2100, jSONObject.optJSONObject("customData"));
                    return;
                case 3:
                    this.zzfnv.zzc(optLong, RemoteMediaPlayer.STATUS_CANCELED, jSONObject.optJSONObject("customData"));
                    return;
                case 4:
                    this.zzeui.zzf("received unexpected error: Invalid Request.", new Object[0]);
                    JSONObject optJSONObject2 = jSONObject.optJSONObject("customData");
                    Iterator<zzbeo> it2 = this.zzfki.iterator();
                    while (it2.hasNext()) {
                        it2.next().zzc(optLong, 2100, optJSONObject2);
                    }
                    return;
                default:
                    return;
            }
        } catch (JSONException e) {
            this.zzeui.zzf("Message is malformed (%s); ignoring: %s", e.getMessage(), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbdg
    public final boolean zzz(long j) {
        Iterator<zzbeo> it = this.zzfki.iterator();
        while (it.hasNext()) {
            it.next().zzd(j, RemoteMediaPlayer.STATUS_TIMED_OUT);
        }
        boolean z = false;
        synchronized (zzbeo.zzakj) {
            Iterator<zzbeo> it2 = this.zzfki.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (it2.next().zzaha()) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }
}
