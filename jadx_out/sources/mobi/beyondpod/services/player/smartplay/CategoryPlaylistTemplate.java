package mobi.beyondpod.services.player.smartplay;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.repository.FeedRepository;

/* loaded from: classes.dex */
public class CategoryPlaylistTemplate {
    public static List<Track> generatePlaylist(FeedCategory feedCategory, int i, int i2, int i3, List<Track> list) {
        List<Track> episodesByContentTypeAndCategory = FeedRepository.getEpisodesByContentTypeAndCategory(i3, feedCategory);
        Iterator<Track> it = episodesByContentTypeAndCategory.iterator();
        while (it.hasNext()) {
            if (!SmartPlaylist.canIncludeInPlaylist(it.next(), list)) {
                it.remove();
            }
        }
        if (episodesByContentTypeAndCategory.size() > 0) {
            if (i2 == 100) {
                Collections.shuffle(episodesByContentTypeAndCategory, new Random(System.nanoTime()));
            } else {
                Collections.sort(episodesByContentTypeAndCategory, new TrackSorter(i2));
            }
        }
        return (i <= 0 || episodesByContentTypeAndCategory.size() <= i) ? episodesByContentTypeAndCategory : episodesByContentTypeAndCategory.subList(0, i);
    }
}
