package mobi.beyondpod.ui.core;

import android.graphics.drawable.Drawable;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class GenericImageCache<T> {
    private static final String TAG = "GenericImageCache";
    private final String _CacheName;
    private final HashMap<T, Drawable> _HardBitmapCache;
    private final ConcurrentHashMap<T, SoftReference<Drawable>> _SoftBitmapCache;

    GenericImageCache(final int i, String str) {
        this._CacheName = str;
        int i2 = i / 2;
        this._HardBitmapCache = new LinkedHashMap<T, Drawable>(i2, 0.75f, true) { // from class: mobi.beyondpod.ui.core.GenericImageCache.1
            private static final long serialVersionUID = 1;

            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<T, Drawable> entry) {
                if (size() <= i) {
                    return false;
                }
                GenericImageCache.this._SoftBitmapCache.put(entry.getKey(), new SoftReference(entry.getValue()));
                return true;
            }
        };
        this._SoftBitmapCache = new ConcurrentHashMap<>(i2);
    }

    public void clearCache() {
        this._HardBitmapCache.clear();
        this._SoftBitmapCache.clear();
        System.gc();
    }

    public void purgeHardCache() {
        synchronized (this._HardBitmapCache) {
            for (Map.Entry<T, Drawable> entry : this._HardBitmapCache.entrySet()) {
                this._SoftBitmapCache.put(entry.getKey(), new SoftReference<>(entry.getValue()));
            }
            this._HardBitmapCache.clear();
        }
    }

    public Drawable getDrawableFromCache(T t) {
        if (t == null) {
            return null;
        }
        synchronized (this._HardBitmapCache) {
            Drawable drawable = this._HardBitmapCache.get(t);
            if (drawable != null) {
                this._HardBitmapCache.remove(t);
                this._HardBitmapCache.put(t, drawable);
                return drawable;
            }
            SoftReference<Drawable> softReference = this._SoftBitmapCache.get(t);
            if (softReference != null) {
                Drawable drawable2 = softReference.get();
                if (drawable2 != null) {
                    return drawable2;
                }
                this._SoftBitmapCache.remove(t);
            }
            return null;
        }
    }

    public void putDrawableToCache(T t, Drawable drawable) {
        if (drawable != null) {
            synchronized (this._HardBitmapCache) {
                this._HardBitmapCache.put(t, drawable);
            }
        }
    }

    public void removeImage(T t) {
        if (t != null) {
            synchronized (this._HardBitmapCache) {
                this._HardBitmapCache.remove(t);
            }
            this._SoftBitmapCache.remove(t);
        }
    }
}
