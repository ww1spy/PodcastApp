package mobi.beyondpod.services.player.smartplay;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedSorter;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.categories.CategoryList;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;

/* loaded from: classes.dex */
public class PlayFromQuery {
    private static final String TAG = "PlayFromQuery";
    private static final String VOICE_SEARCH_CATEGORY_TAG = "category ";
    private static final String VOICE_SEARCH_EPISODE_TAG = "episode ";
    private static final String VOICE_SEARCH_FEED_TAG = "feed ";
    private static final String VOICE_SEARCH_SMARTPLAY_TAG1 = "smart play";
    private static final String VOICE_SEARCH_SMARTPLAY_TAG2 = "smart";
    private static final String VOICE_SEARCH_SMARTPLAY_TAG3 = "playlist";
    private static final String VOICE_SEARCH_SORT_LATEST = "latest in ";
    private static final String VOICE_SEARCH_SORT_OLDEST = "oldest in ";
    private static final String VOICE_SEARCH_SORT_RANDOM = "random in ";

    public static boolean cmdPlayFromVoiceSearch(String str) {
        CoreHelper.writeTraceEntry(TAG, "QuickPlay is matching keyword '" + str + "'...");
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        int i = 3;
        if (str.toLowerCase().endsWith(" in")) {
            str = str.substring(0, str.length() - 3);
            CoreHelper.writeTraceEntry(TAG, "QuickPlay found that the query needed some cleanup. Cleaned version: '" + str + "'...");
        }
        String lowerCase = str.toLowerCase(Locale.US);
        if (StringUtils.equalsIgnoreCase(VOICE_SEARCH_SMARTPLAY_TAG1, lowerCase) || StringUtils.equalsIgnoreCase(VOICE_SEARCH_SMARTPLAY_TAG2, lowerCase) || StringUtils.equalsIgnoreCase(VOICE_SEARCH_SMARTPLAY_TAG3, lowerCase)) {
            CoreHelper.writeTraceEntry(TAG, "QuickPlay starting default SmartPlay...");
            CommandManagerBase.CmdPlaySmartPlayList(-1, BeyondPodApplication.getInstance());
            return true;
        }
        if (lowerCase.startsWith(VOICE_SEARCH_SORT_OLDEST)) {
            CoreHelper.writeTraceEntry(TAG, "QuickPlay found match for sort order 'oldest in'");
            i = 2;
            str = str.substring(VOICE_SEARCH_SORT_OLDEST.length());
        } else if (lowerCase.startsWith(VOICE_SEARCH_SORT_LATEST)) {
            CoreHelper.writeTraceEntry(TAG, "QuickPlay found match for sort order 'latest in'");
            str = str.substring(VOICE_SEARCH_SORT_LATEST.length());
        } else if (lowerCase.startsWith(VOICE_SEARCH_SORT_RANDOM)) {
            CoreHelper.writeTraceEntry(TAG, "QuickPlay found match for sort order 'random in'");
            i = 100;
            str = str.substring(VOICE_SEARCH_SORT_RANDOM.length());
        } else {
            i = -1;
        }
        String lowerCase2 = str.toLowerCase(Locale.US);
        if (lowerCase2.startsWith(VOICE_SEARCH_CATEGORY_TAG)) {
            String substring = str.substring(VOICE_SEARCH_CATEGORY_TAG.length());
            if (i == -1) {
                i = Configuration.getPodcastsSortOrder();
            }
            if (playCategorySearch(substring, i)) {
                return true;
            }
        } else if (lowerCase2.startsWith(VOICE_SEARCH_FEED_TAG)) {
            if (playFeedSearch(str.substring(VOICE_SEARCH_FEED_TAG.length()), i)) {
                return true;
            }
        } else if (lowerCase2.startsWith(VOICE_SEARCH_EPISODE_TAG)) {
            String substring2 = str.substring(VOICE_SEARCH_EPISODE_TAG.length());
            if (i == -1) {
                i = Configuration.getPodcastsSortOrder();
            }
            if (playEpisodeSearch(substring2, i)) {
                return true;
            }
        } else {
            if (playSmartplaySearch(str)) {
                return true;
            }
            if (playCategorySearch(str, i == -1 ? Configuration.getPodcastsSortOrder() : i) || playFeedSearch(str, i)) {
                return true;
            }
            if (i == -1) {
                i = Configuration.getPodcastsSortOrder();
            }
            if (playEpisodeSearch(str, i)) {
                return true;
            }
        }
        CoreHelper.writeTraceEntry(TAG, "QuickPlay was unable to find match for: '" + str + "'!");
        return false;
    }

    private static boolean playCategorySearch(String str, int i) {
        FeedRepository.FeedSearchArguments feedSearchArguments = new FeedRepository.FeedSearchArguments(str);
        feedSearchArguments.leafFeedsOnly = false;
        CategoryList searchForCategory = FeedRepository.searchForCategory(feedSearchArguments);
        if (searchForCategory.size() <= 0) {
            return false;
        }
        FeedCategory feedCategory = searchForCategory.get(0);
        CoreHelper.writeTraceEntry(TAG, "QuickPlay found " + searchForCategory.size() + " category matches! Starting: " + feedCategory.name());
        CommandManager.cmdPlayPlaylist(BeyondPodApplication.getInstance(), CategoryPlaylistTemplate.generatePlaylist(feedCategory, -1, i, -2, new ArrayList()), false);
        return true;
    }

    private static boolean playSmartplaySearch(String str) {
        SmartPlaylist findSmartPlayByName = SmartPlaylistManager.findSmartPlayByName(str);
        if (findSmartPlayByName == null) {
            return false;
        }
        CoreHelper.writeTraceEntry(TAG, "QuickPlay found SmartPlay match! Starting: " + findSmartPlayByName.name());
        CommandManagerBase.CmdPlaySmartPlayList(findSmartPlayByName.id(), BeyondPodApplication.getInstance());
        return true;
    }

    private static boolean playFeedSearch(String str, int i) {
        FeedRepository.FeedSearchArguments feedSearchArguments = new FeedRepository.FeedSearchArguments(str);
        feedSearchArguments.leafFeedsOnly = false;
        ArrayList arrayList = new ArrayList(FeedRepository.searchForFeeds(FeedRepository.getRootFeed(), feedSearchArguments).subFeeds());
        Collections.sort(arrayList, new FeedSorter(Configuration.getFeedsSortOrder()));
        if (arrayList.size() > 0) {
            PlayList playList = BeyondPodApplication.getInstance().playList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Feed feed = (Feed) it.next();
                Iterator<Track> it2 = feed.tracksAndSubTracks().iterator();
                while (it2.hasNext()) {
                    Track next = it2.next();
                    if (!next.isPlayed() && (playList.canAddToPlaylist(next) || playList.hasTrack(next))) {
                        CoreHelper.writeTraceEntry(TAG, "QuickPlay found " + arrayList.size() + " feed matches! Starting: " + feed.getName());
                        BeyondPodApplication beyondPodApplication = BeyondPodApplication.getInstance();
                        if (i == -1) {
                            i = feed.getLocalOrInheritedTrackSortOrder();
                        }
                        CommandManager.cmdPlayFeedEpisodes(beyondPodApplication, feed, i);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    private static boolean playEpisodeSearch(String str, int i) {
        TrackList searchForTracks = FeedRepository.searchForTracks(new FeedRepository.FeedSearchArguments(str));
        if (i == 100) {
            Collections.shuffle(searchForTracks, new Random(System.nanoTime()));
        } else {
            Collections.sort(searchForTracks, new TrackSorter(i));
        }
        if (searchForTracks.size() <= 0) {
            return false;
        }
        Track track = searchForTracks.get(0);
        CoreHelper.writeTraceEntry(TAG, "QuickPlay found " + searchForTracks.size() + " episode matches! Starting: " + track.getName());
        CommandManager.cmdPlayPlaylist(BeyondPodApplication.getInstance(), searchForTracks, false);
        return true;
    }
}
