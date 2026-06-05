package mobi.beyondpod.ui.core.volley;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.android.volley.Response;
import com.android.volley.toolbox.ImageRequest;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class ImageRequestFeed extends ImageRequest {
    private static final String TAG = "ImageRequestFeed";
    Feed mFeed;

    public ImageRequestFeed(String str, Response.Listener<Bitmap> listener, int i, int i2, Bitmap.Config config, Response.ErrorListener errorListener, Feed feed) {
        super(str, listener, i, i2, config, errorListener);
        this.mFeed = feed;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
    @Override // com.android.volley.toolbox.ImageRequest
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.android.volley.Response<android.graphics.Bitmap> doParse(com.android.volley.NetworkResponse r5) {
        /*
            r4 = this;
            byte[] r0 = r5.data
            r1 = 0
            if (r0 == 0) goto L13
            byte[] r0 = r5.data
            int r0 = r0.length
            if (r0 <= 0) goto L13
            byte[] r0 = r5.data     // Catch: java.lang.Throwable -> L13
            r2 = 45
            android.graphics.Bitmap r0 = r4.decodeByteArray(r0, r2, r2)     // Catch: java.lang.Throwable -> L13
            goto L14
        L13:
            r0 = r1
        L14:
            if (r0 == 0) goto L1f
            com.android.volley.Cache$Entry r5 = com.android.volley.toolbox.HttpHeaderParser.parseCacheHeaders(r5)
            com.android.volley.Response r5 = com.android.volley.Response.success(r0, r5)
            return r5
        L1f:
            if (r0 != 0) goto L40
            mobi.beyondpod.rsscore.Feed r2 = r4.mFeed
            if (r2 == 0) goto L40
            mobi.beyondpod.rsscore.Feed r2 = r4.mFeed
            java.lang.String r2 = mobi.beyondpod.ui.core.FeedImageCache.getExistingFeedImagePath(r2)
            boolean r3 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r2)
            if (r3 != 0) goto L39
            r0 = 20
            android.graphics.Bitmap r0 = r4.decodeFile(r2, r0, r0)     // Catch: java.lang.Throwable -> L38
            goto L39
        L38:
            r0 = r1
        L39:
            if (r0 == 0) goto L40
            com.android.volley.Response r5 = com.android.volley.Response.success(r0, r1)
            return r5
        L40:
            com.android.volley.ParseError r0 = new com.android.volley.ParseError
            r0.<init>(r5)
            com.android.volley.Response r5 = com.android.volley.Response.error(r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.core.volley.ImageRequestFeed.doParse(com.android.volley.NetworkResponse):com.android.volley.Response");
    }

    private Bitmap decodeFile(String str, int i, int i2) {
        Bitmap bitmap;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (i4 < i2 || i3 < i) {
            CoreHelper.writeTraceEntryInDebug(TAG, "+++ Loaded image is too small - " + i3 + " x " + i4 + " for feed: " + this.mFeed.getName() + ". Ignoring...");
            return null;
        }
        int resizedDimension = getResizedDimension(this.mMaxWidth, this.mMaxHeight, i3, i4);
        int resizedDimension2 = getResizedDimension(this.mMaxHeight, this.mMaxWidth, i4, i3);
        options.inJustDecodeBounds = false;
        options.inSampleSize = findBestSampleSize(i3, i4, resizedDimension, resizedDimension2);
        try {
            bitmap = BitmapFactory.decodeFile(str, options);
        } catch (Throwable unused) {
            bitmap = null;
        }
        if (bitmap == null) {
            return bitmap;
        }
        if (bitmap.getWidth() == resizedDimension && bitmap.getHeight() == resizedDimension2) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, resizedDimension, resizedDimension2, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    private Bitmap decodeByteArray(byte[] bArr, int i, int i2) {
        Bitmap bitmap;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (i4 < i2 || i3 < i) {
            CoreHelper.writeTraceEntryInDebug(TAG, "+++ Loaded image is too small - " + i3 + " x " + i4 + " for feed: " + this.mFeed.getName() + ". Ignoring...");
            return null;
        }
        int resizedDimension = getResizedDimension(this.mMaxWidth, this.mMaxHeight, i3, i4);
        int resizedDimension2 = getResizedDimension(this.mMaxHeight, this.mMaxWidth, i4, i3);
        options.inJustDecodeBounds = false;
        options.inSampleSize = findBestSampleSize(i3, i4, resizedDimension, resizedDimension2);
        try {
            bitmap = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } catch (Throwable unused) {
            bitmap = null;
        }
        if (bitmap == null) {
            return bitmap;
        }
        if (bitmap.getWidth() == resizedDimension && bitmap.getHeight() == resizedDimension2) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, resizedDimension, resizedDimension2, true);
        bitmap.recycle();
        return createScaledBitmap;
    }
}
