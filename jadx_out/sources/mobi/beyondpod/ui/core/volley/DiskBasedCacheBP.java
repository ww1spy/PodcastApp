package mobi.beyondpod.ui.core.volley;

import com.android.volley.toolbox.DiskBasedCache;
import java.io.File;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.FileUtils;

/* loaded from: classes.dex */
public class DiskBasedCacheBP extends DiskBasedCache {
    private static final String TAG = "DiskBasedCacheBP";
    private static final String DEFAULT_CACHE_DIR = "img";
    static File _CacheDir = new File(BeyondPodApplication.getInstance().getExternalCacheDir(), DEFAULT_CACHE_DIR);

    public DiskBasedCacheBP(int i) {
        super(_CacheDir, i);
    }

    @Override // com.android.volley.toolbox.DiskBasedCache, com.android.volley.Cache
    public void initialize() {
        super.initialize();
        CoreHelper.writeTraceEntryInDebug(TAG, "Loaded " + this.mEntries.size() + " episode image cache entries. Cache size: " + CoreHelper.getFileLengthAsString(Long.valueOf(this.mTotalSize)) + " (" + ((int) ((((float) this.mTotalSize) / this.mMaxCacheSizeInBytes) * 100.0f)) + "% full). Cache location:" + this.mRootDirectory);
    }

    public static boolean deleteFileForKey(String str) {
        int length = str.length() / 2;
        return FileUtils.deleteFileIfExists(_CacheDir + "/" + (String.valueOf(str.substring(0, length).hashCode()) + String.valueOf(str.substring(length).hashCode())));
    }

    public static int deleteCachedFiles() {
        File[] listFiles = _CacheDir.listFiles();
        if (listFiles == null) {
            return 0;
        }
        int i = 0;
        for (File file : listFiles) {
            if (file.isFile()) {
                i += !file.delete() ? 1 : 0;
            }
        }
        return i;
    }
}
