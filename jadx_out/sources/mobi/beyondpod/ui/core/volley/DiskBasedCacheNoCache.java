package mobi.beyondpod.ui.core.volley;

import com.android.volley.Cache;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class DiskBasedCacheNoCache implements Cache {
    private static final String TAG = DiskBasedCacheBP.class.getSimpleName();
    Cache.Entry _DummyEntry;

    @Override // com.android.volley.Cache
    public void clear() {
    }

    @Override // com.android.volley.Cache
    public void invalidate(String str, boolean z) {
    }

    @Override // com.android.volley.Cache
    public void put(String str, Cache.Entry entry) {
    }

    @Override // com.android.volley.Cache
    public void remove(String str) {
    }

    @Override // com.android.volley.Cache
    public synchronized Cache.Entry get(String str) {
        return null;
    }

    @Override // com.android.volley.Cache
    public void initialize() {
        CoreHelper.writeTraceEntryInDebug(TAG, "Using 'No-Cache' disk image cache...");
    }
}
