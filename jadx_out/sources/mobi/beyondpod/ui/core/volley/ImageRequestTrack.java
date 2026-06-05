package mobi.beyondpod.ui.core.volley;

import android.graphics.Bitmap;
import com.android.volley.NetworkResponse;
import com.android.volley.Response;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;

/* loaded from: classes.dex */
public class ImageRequestTrack extends ImageRequestFeed {
    private static final long IMAGE_EXPIRATION_IN_DAYS_URL_FEED = 864000000;
    private static final long IMAGE_EXPIRATION_IN_DAYS_VIR_FEED = 2592000000L;
    private static final String TAG = "ImageRequestTrack";
    private final Track mTrack;

    public ImageRequestTrack(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener, Track track, Feed feed) {
        super(str, listener, i, i2, config, errorListener, feed);
        this.mTrack = track;
    }

    public Bitmap getEpisodeImageQuick() {
        return doParse(new NetworkResponse(null)).result;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0038. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a7  */
    @Override // mobi.beyondpod.ui.core.volley.ImageRequestFeed, com.android.volley.toolbox.ImageRequest
    @android.annotation.TargetApi(10)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.android.volley.Response<android.graphics.Bitmap> doParse(com.android.volley.NetworkResponse r7) {
        /*
            r6 = this;
            byte[] r0 = r7.data
            if (r0 != 0) goto Lac
            java.lang.String r0 = r6.getUrl()
            boolean r0 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r0)
            if (r0 != 0) goto Lac
            java.lang.String r0 = r6.getUrl()
            java.lang.String r1 = "episode://"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L1c
            goto Lac
        L1c:
            r0 = 0
            mobi.beyondpod.rsscore.Track r1 = r6.mTrack     // Catch: java.lang.Throwable -> L84
            r1.ensureTrackHasContentType()     // Catch: java.lang.Throwable -> L84
            mobi.beyondpod.rsscore.Track r1 = r6.mTrack     // Catch: java.lang.Throwable -> L84
            mobi.beyondpod.rsscore.Feed r1 = r1.getParentFeed()     // Catch: java.lang.Throwable -> L84
            int r1 = r1.getType()     // Catch: java.lang.Throwable -> L84
            r2 = 0
            r3 = 1
            if (r1 != r3) goto L31
            goto L32
        L31:
            r3 = r2
        L32:
            mobi.beyondpod.rsscore.Track r1 = r6.mTrack     // Catch: java.lang.Throwable -> L84
            int r1 = r1.contentType()     // Catch: java.lang.Throwable -> L84
            switch(r1) {
                case -1: goto L3c;
                case 0: goto L3c;
                case 1: goto L3c;
                default: goto L3b;
            }     // Catch: java.lang.Throwable -> L84
        L3b:
            goto L9f
        L3c:
            boolean r1 = mobi.beyondpod.rsscore.Configuration.useFeedAlbumArtForEpisodes()     // Catch: java.lang.Throwable -> L84
            if (r1 == 0) goto L43
            goto L9f
        L43:
            android.media.MediaMetadataRetriever r1 = new android.media.MediaMetadataRetriever     // Catch: java.lang.Throwable -> L84
            r1.<init>()     // Catch: java.lang.Throwable -> L84
            mobi.beyondpod.rsscore.Track r4 = r6.mTrack     // Catch: java.lang.Throwable -> L84
            java.lang.String r4 = r4.trackPath()     // Catch: java.lang.Throwable -> L84
            r1.setDataSource(r4)     // Catch: java.lang.Throwable -> L84
            byte[] r1 = r1.getEmbeddedPicture()     // Catch: java.lang.Throwable -> L84
            if (r1 == 0) goto L75
            com.android.volley.NetworkResponse r4 = new com.android.volley.NetworkResponse     // Catch: java.lang.Throwable -> L84
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L84
            com.android.volley.Response r1 = super.doParse(r4)     // Catch: java.lang.Throwable -> L84
            boolean r4 = r1.isSuccess()     // Catch: java.lang.Throwable -> L84
            if (r4 == 0) goto L75
            if (r3 == 0) goto L6e
            r2 = 2592000000(0x9a7ec800, double:1.280618154E-314)
            goto L71
        L6e:
            r2 = 864000000(0x337f9800, double:4.26872718E-315)
        L71:
            r6.setResponseExpiration(r1, r2)     // Catch: java.lang.Throwable -> L84
            return r1
        L75:
            mobi.beyondpod.BeyondPodApplication r1 = mobi.beyondpod.BeyondPodApplication.getInstance()     // Catch: java.lang.Throwable -> L84
            mobi.beyondpod.rsscore.Track r3 = r6.mTrack     // Catch: java.lang.Throwable -> L84
            int r4 = r6.mMaxWidth     // Catch: java.lang.Throwable -> L84
            int r5 = r6.mMaxHeight     // Catch: java.lang.Throwable -> L84
            android.graphics.Bitmap r1 = mobi.beyondpod.ui.core.MusicUtils.getAudioArtwork(r1, r3, r4, r5, r2)     // Catch: java.lang.Throwable -> L84
            goto La0
        L84:
            r1 = move-exception
            java.lang.String r2 = mobi.beyondpod.ui.core.volley.ImageRequestTrack.TAG
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "failed to retrieve episode image! "
            r3.append(r4)
            java.lang.String r1 = r1.getMessage()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r2, r1)
        L9f:
            r1 = r0
        La0:
            if (r1 == 0) goto La7
            com.android.volley.Response r7 = com.android.volley.Response.success(r1, r0)
            return r7
        La7:
            com.android.volley.Response r7 = super.doParse(r7)
            return r7
        Lac:
            com.android.volley.Response r7 = super.doParse(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.core.volley.ImageRequestTrack.doParse(com.android.volley.NetworkResponse):com.android.volley.Response");
    }

    private void setResponseExpiration(Response<Bitmap> response, long j) {
        if (response.cacheEntry != null) {
            response.cacheEntry.ttl = System.currentTimeMillis() + j;
            response.cacheEntry.softTtl = response.cacheEntry.ttl;
        }
    }
}
