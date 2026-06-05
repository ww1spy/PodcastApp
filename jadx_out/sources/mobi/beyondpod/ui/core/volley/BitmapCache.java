package mobi.beyondpod.ui.core.volley;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.util.LruCache;
import com.android.volley.toolbox.ImageLoader;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class BitmapCache implements ImageLoader.ImageCache {
    private static final float DEFAULT_MEM_CACHE_PERCENT = 0.15f;
    public static final String FRAGMENT_TAG = "BeyondPod.BitmapCache";
    private static final String TAG = "BitmapCache";
    private static int _InstanceCount;
    private static final Object _syncLock = new Object();
    private int _InstanceId;
    private LruCache<String, Bitmap> mMemoryCache;

    private BitmapCache(int i) {
        this._InstanceId = -1;
        init(i);
        int i2 = _InstanceCount + 1;
        _InstanceCount = i2;
        this._InstanceId = i2;
        CoreHelper.writeTraceEntryInDebug(TAG, "Bitmap Memory Cache created (size = " + i + "KB). Instances: " + _InstanceCount);
    }

    public static BitmapCache getInstance(FragmentManager fragmentManager, String str, int i) {
        BitmapCache bitmapCache;
        RetainFragment retainFragment = null;
        if (fragmentManager != null) {
            retainFragment = getRetainFragment(fragmentManager, str);
            bitmapCache = (BitmapCache) retainFragment.getObject();
        } else {
            bitmapCache = null;
        }
        if (bitmapCache == null) {
            bitmapCache = new BitmapCache(i);
            if (retainFragment != null) {
                retainFragment.setObject(bitmapCache);
            }
        }
        return bitmapCache;
    }

    private static BitmapCache getInstance(FragmentManager fragmentManager, int i) {
        return getInstance(fragmentManager, FRAGMENT_TAG, i);
    }

    private static BitmapCache getInstance(FragmentManager fragmentManager, float f) {
        return getInstance(fragmentManager, calculateMemCacheSize(f));
    }

    public static BitmapCache getInstance(FragmentManager fragmentManager) {
        return getInstance(fragmentManager, DEFAULT_MEM_CACHE_PERCENT);
    }

    private void init(int i) {
        this.mMemoryCache = new LruCache<String, Bitmap>(i) { // from class: mobi.beyondpod.ui.core.volley.BitmapCache.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.support.v4.util.LruCache
            public int sizeOf(String str, Bitmap bitmap) {
                int bitmapSize = BitmapCache.getBitmapSize(bitmap) / 1024;
                if (bitmapSize == 0) {
                    return 1;
                }
                return bitmapSize;
            }
        };
    }

    public void evictAll() {
        int size = this.mMemoryCache.size();
        this.mMemoryCache.evictAll();
        CoreHelper.writeTraceEntry(TAG, "Evicted " + size + "KB of cached images from cache #" + this._InstanceId + "...");
    }

    public void addBitmapToCache(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return;
        }
        synchronized (_syncLock) {
            if (this.mMemoryCache.get(str) == null) {
                this.mMemoryCache.put(str, bitmap);
            }
        }
    }

    public Bitmap getBitmapFromMemCache(String str) {
        if (str == null) {
            return null;
        }
        synchronized (_syncLock) {
            Bitmap bitmap = this.mMemoryCache.get(str);
            if (bitmap != null) {
                return bitmap;
            }
            return null;
        }
    }

    public static int calculateMemCacheSize(float f) {
        if (f < 0.05f || f > 0.8f) {
            throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)");
        }
        return Math.round((f * ((float) Runtime.getRuntime().maxMemory())) / 1024.0f);
    }

    public static int getBitmapSize(Bitmap bitmap) {
        return bitmap.getByteCount();
    }

    private static RetainFragment getRetainFragment(FragmentManager fragmentManager, String str) {
        RetainFragment retainFragment = (RetainFragment) fragmentManager.findFragmentByTag(str);
        if (retainFragment != null) {
            return retainFragment;
        }
        RetainFragment retainFragment2 = new RetainFragment();
        fragmentManager.beginTransaction().add(retainFragment2, str).commitAllowingStateLoss();
        return retainFragment2;
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageCache
    public Bitmap getBitmap(String str) {
        return getBitmapFromMemCache(str);
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageCache
    public void putBitmap(String str, Bitmap bitmap) {
        addBitmapToCache(str, bitmap);
    }

    protected void finalize() throws Throwable {
        _InstanceCount--;
        CoreHelper.writeTraceEntryInDebug(TAG, "Bitmap Memory Cache #" + this._InstanceId + " finalized! Remaining instances: " + _InstanceCount);
        super.finalize();
    }

    /* loaded from: classes.dex */
    public static class RetainFragment extends Fragment {
        private Object mObject;

        @Override // android.support.v4.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            CoreHelper.writeTraceEntryInDebug(BitmapCache.TAG, "Bitmap Memory Cache fragment holder created!");
            setRetainInstance(true);
        }

        @Override // android.support.v4.app.Fragment
        public void onDestroy() {
            CoreHelper.writeTraceEntryInDebug(BitmapCache.TAG, "Bitmap Memory Cache fragment holder destroyed!");
            super.onDestroy();
        }

        public void setObject(Object obj) {
            this.mObject = obj;
        }

        public Object getObject() {
            return this.mObject;
        }

        protected void finalize() throws Throwable {
            CoreHelper.writeTraceEntryInDebug(BitmapCache.TAG, "Bitmap Memory Cache fragment holder finalized!");
            super.finalize();
        }
    }
}
