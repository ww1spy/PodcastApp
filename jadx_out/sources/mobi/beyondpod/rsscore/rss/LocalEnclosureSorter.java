package mobi.beyondpod.rsscore.rss;

import java.util.Comparator;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;

/* loaded from: classes.dex */
public class LocalEnclosureSorter implements Comparator<RssFeedItem> {
    private TrackSorter _Sorter;

    public LocalEnclosureSorter(int i) {
        this._Sorter = new TrackSorter(i);
    }

    @Override // java.util.Comparator
    public int compare(RssFeedItem rssFeedItem, RssFeedItem rssFeedItem2) {
        if (rssFeedItem.equals(rssFeedItem2)) {
            return 0;
        }
        Track localEnclosureTrack = rssFeedItem.enclosure() != null ? rssFeedItem.enclosure().getLocalEnclosureTrack() : null;
        Track localEnclosureTrack2 = rssFeedItem2.enclosure() != null ? rssFeedItem2.enclosure().getLocalEnclosureTrack() : null;
        if (localEnclosureTrack != null && localEnclosureTrack2 != null) {
            return this._Sorter.compare(localEnclosureTrack, localEnclosureTrack2);
        }
        if (localEnclosureTrack == null && localEnclosureTrack2 == null) {
            return 0;
        }
        return localEnclosureTrack != null ? 1 : -1;
    }
}
