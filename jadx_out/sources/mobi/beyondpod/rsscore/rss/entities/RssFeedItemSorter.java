package mobi.beyondpod.rsscore.rss.entities;

import java.util.Comparator;

/* loaded from: classes.dex */
public class RssFeedItemSorter implements Comparator<RssFeedItem> {
    private int _SortOrder;

    public RssFeedItemSorter(int i) {
        this._SortOrder = i;
    }

    @Override // java.util.Comparator
    public int compare(RssFeedItem rssFeedItem, RssFeedItem rssFeedItem2) {
        if (rssFeedItem.equals(rssFeedItem2)) {
            return 0;
        }
        if (this._SortOrder == 3) {
            return Compare(rssFeedItem, rssFeedItem2);
        }
        return Compare(rssFeedItem2, rssFeedItem);
    }

    int Compare(RssFeedItem rssFeedItem, RssFeedItem rssFeedItem2) {
        if (rssFeedItem2 == null) {
            return -1;
        }
        if (rssFeedItem.pubDate() == null && rssFeedItem2.pubDate() == null) {
            return 0;
        }
        if (rssFeedItem2.pubDate() == null) {
            return -1;
        }
        if (rssFeedItem.pubDate() == null) {
            return 1;
        }
        return rssFeedItem2.pubDate().compareTo(rssFeedItem.pubDate());
    }
}
