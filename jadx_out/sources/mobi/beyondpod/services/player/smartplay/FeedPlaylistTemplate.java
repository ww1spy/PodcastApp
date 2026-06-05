package mobi.beyondpod.services.player.smartplay;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;

/* loaded from: classes.dex */
public class FeedPlaylistTemplate {
    public static List<Track> generatePlaylist(Feed feed, int i, int i2, int i3, List<Track> list) {
        TrackList trackList = new TrackList();
        Iterator<Track> it = feed.tracksAndSubTracks().iterator();
        while (it.hasNext()) {
            Track next = it.next();
            int contentType = next.contentType();
            if (contentType == -1) {
                contentType = 1;
            }
            if (i3 == -2 || contentType == i3) {
                if (SmartPlaylist.canIncludeInPlaylist(next, list)) {
                    trackList.add(next);
                }
            }
        }
        if (trackList.size() > 0) {
            if (i2 == 100) {
                Collections.shuffle(trackList, new Random(System.nanoTime()));
            } else {
                Collections.sort(trackList, new TrackSorter(i2));
            }
        }
        return (i <= 0 || trackList.size() <= i) ? trackList : trackList.subList(0, i);
    }
}
