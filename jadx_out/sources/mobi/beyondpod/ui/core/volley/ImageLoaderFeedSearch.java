package mobi.beyondpod.ui.core.volley;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.HurlStack;

/* loaded from: classes.dex */
public class ImageLoaderFeedSearch extends ImageLoader {
    public ImageLoaderFeedSearch(FragmentActivity fragmentActivity) {
        super(newRequestQueue(fragmentActivity), BitmapCache.getInstance(fragmentActivity.getSupportFragmentManager()));
    }

    public static RequestQueue newRequestQueue(Context context) {
        RequestQueue requestQueue = new RequestQueue(new DiskBasedCacheNoCache(), new BasicNetwork(new HurlStack()));
        requestQueue.start();
        return requestQueue;
    }
}
