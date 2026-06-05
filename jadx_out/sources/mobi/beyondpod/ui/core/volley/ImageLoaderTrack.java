package mobi.beyondpod.ui.core.volley;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.app.FragmentActivity;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.HurlStack;
import com.android.volley.toolbox.ImageLoader;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;

/* loaded from: classes.dex */
public class ImageLoaderTrack extends ImageLoader {
    private static final int DEFAULT_DISK_USAGE_BYTES = 52428800;

    public ImageLoaderTrack(FragmentActivity fragmentActivity) {
        super(newRequestQueue(fragmentActivity), BitmapCache.getInstance(fragmentActivity.getSupportFragmentManager()));
    }

    public static RequestQueue newRequestQueue(Context context) {
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCacheBP(DEFAULT_DISK_USAGE_BYTES), new NetworkTrack(new HurlStack()));
        requestQueue.start();
        return requestQueue;
    }

    public ImageLoader.ImageContainer get(String str, Track track, Feed feed, ImageLoader.ImageListener imageListener, int i, int i2) {
        throwIfNotOnMainThread();
        final String cacheKey = getCacheKey(str, i, i2);
        Bitmap bitmap = this.mCache.getBitmap(cacheKey);
        if (bitmap != null) {
            ImageLoader.ImageContainer imageContainer = new ImageLoader.ImageContainer(bitmap, str, null, null);
            imageListener.onResponse(imageContainer, true);
            return imageContainer;
        }
        ImageLoader.ImageContainer imageContainer2 = new ImageLoader.ImageContainer(null, str, cacheKey, imageListener);
        imageListener.onResponse(imageContainer2, true);
        ImageLoader.BatchedImageRequest batchedImageRequest = this.mInFlightRequests.get(cacheKey);
        if (batchedImageRequest != null) {
            batchedImageRequest.addContainer(imageContainer2);
            return imageContainer2;
        }
        ImageRequestTrack imageRequestTrack = new ImageRequestTrack(str, new Response.Listener<Bitmap>() { // from class: mobi.beyondpod.ui.core.volley.ImageLoaderTrack.1
            @Override // com.android.volley.Response.Listener
            public void onResponse(Bitmap bitmap2) {
                ImageLoaderTrack.this.onGetImageSuccess(cacheKey, bitmap2);
            }
        }, i, i2, Bitmap.Config.RGB_565, new Response.ErrorListener() { // from class: mobi.beyondpod.ui.core.volley.ImageLoaderTrack.2
            @Override // com.android.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                ImageLoaderTrack.this.onGetImageError(cacheKey, volleyError);
            }
        }, track, feed);
        imageRequestTrack.setShouldCache(str.startsWith("episode://"));
        this.mRequestQueue.add(imageRequestTrack);
        this.mInFlightRequests.put(cacheKey, new ImageLoader.BatchedImageRequest(imageRequestTrack, imageContainer2));
        return imageContainer2;
    }
}
