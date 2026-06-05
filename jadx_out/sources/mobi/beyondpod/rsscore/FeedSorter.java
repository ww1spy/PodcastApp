package mobi.beyondpod.rsscore;

import java.util.Comparator;
import java.util.Date;

/* loaded from: classes.dex */
public class FeedSorter implements Comparator<Feed> {
    private int _SortOrder;

    public FeedSorter(int i) {
        this._SortOrder = i;
    }

    @Override // java.util.Comparator
    public int compare(Feed feed, Feed feed2) {
        if (feed.equals(feed2)) {
            return 0;
        }
        Date lastModifiedDate = feed.getLastModifiedDate();
        Date lastModifiedDate2 = feed2.getLastModifiedDate();
        String name = feed.getName();
        String name2 = feed2.getName();
        switch (this._SortOrder) {
            case 0:
                if (name == null && name2 == null) {
                    return 0;
                }
                if (name != null && name2 == null) {
                    return 1;
                }
                if (name != null || name2 == null) {
                    return name.compareToIgnoreCase(name2);
                }
                return -1;
            case 1:
                if (name == null && name2 == null) {
                    return 0;
                }
                if (name2 != null && name == null) {
                    return 1;
                }
                if (name2 != null || name == null) {
                    return name2.compareToIgnoreCase(name);
                }
                return -1;
            case 2:
                if (lastModifiedDate == null && lastModifiedDate2 == null) {
                    return 0;
                }
                if (lastModifiedDate != null && lastModifiedDate2 == null) {
                    return 1;
                }
                if (lastModifiedDate != null || lastModifiedDate2 == null) {
                    return lastModifiedDate.compareTo(lastModifiedDate2);
                }
                return -1;
            case 3:
                if (lastModifiedDate == null && lastModifiedDate2 == null) {
                    return 0;
                }
                if (lastModifiedDate2 != null && lastModifiedDate == null) {
                    return 1;
                }
                if (lastModifiedDate2 != null || lastModifiedDate == null) {
                    return lastModifiedDate2.compareTo(lastModifiedDate);
                }
                return -1;
            default:
                return -1;
        }
    }
}
