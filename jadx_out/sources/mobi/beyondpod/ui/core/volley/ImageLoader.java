package mobi.beyondpod.ui.core.volley;

import com.android.volley.RequestQueue;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.ImageLoader;

/* loaded from: classes.dex */
public class ImageLoader extends com.android.volley.toolbox.ImageLoader {

    /* loaded from: classes.dex */
    public interface ImageLoaderProvider {
        ImageLoader getImageLoaderInstance();
    }

    public ImageLoader(RequestQueue requestQueue, ImageLoader.ImageCache imageCache) {
        super(requestQueue, imageCache);
        init();
    }

    protected void init() {
        VolleyLog.setTag("BeyondPod");
    }

    public RequestQueue getRequestQueue() {
        return this.mRequestQueue;
    }

    public void release() {
        this.mRequestQueue.stop();
    }

    public void evictAll() {
        if (this.mCache != null) {
            ((BitmapCache) this.mCache).evictAll();
        }
    }
}
