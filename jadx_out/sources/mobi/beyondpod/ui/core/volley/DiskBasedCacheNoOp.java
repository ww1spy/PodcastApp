package mobi.beyondpod.ui.core.volley;

import com.android.volley.Cache;
import java.util.Collections;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class DiskBasedCacheNoOp implements Cache {
    private static final String TAG = DiskBasedCacheBP.class.getSimpleName();
    private Cache.Entry _DummyEntry = new Cache.Entry();

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

    public DiskBasedCacheNoOp() {
        this._DummyEntry.etag = null;
        this._DummyEntry.serverDate = Long.MIN_VALUE;
        this._DummyEntry.ttl = Long.MAX_VALUE;
        this._DummyEntry.softTtl = Long.MAX_VALUE;
        this._DummyEntry.responseHeaders = Collections.emptyMap();
    }

    @Override // com.android.volley.Cache
    public synchronized Cache.Entry get(String str) {
        return this._DummyEntry;
    }

    @Override // com.android.volley.Cache
    public void initialize() {
        CoreHelper.writeTraceEntryInDebug(TAG, "Using dummy disk image cache...");
    }
}
