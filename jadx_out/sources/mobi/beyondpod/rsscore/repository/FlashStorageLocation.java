package mobi.beyondpod.rsscore.repository;

import android.os.StatFs;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.CoreHelper;

/* loaded from: classes.dex */
public class FlashStorageLocation {
    private static final String TAG = "FlashStorageLocation";
    StatFs _LocationStats;

    public FlashStorageLocation(String str) {
        try {
            this._LocationStats = new StatFs(str);
        } catch (Exception unused) {
            CoreHelper.writeTraceEntry(TAG, "Unable to get the free space at location " + str);
        }
    }

    public static long getFreeSpaceAtFeedDownloadPath(Feed feed) {
        return new FlashStorageLocation(feed.getFeedPath()).freeSpace();
    }

    public static boolean checkIfSpaceIsAvailable(String str, long j) {
        return new FlashStorageLocation(str).checkIfSpaceIsAvailable(j);
    }

    public boolean checkIfSpaceIsAvailable(long j) {
        return freeSpace() > j;
    }

    public long freeSpace() {
        if (this._LocationStats == null) {
            return -1L;
        }
        return this._LocationStats.getAvailableBytes();
    }
}
