package mobi.beyondpod.ui.core;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;

/* loaded from: classes.dex */
public class MasterViewState {
    public static final String CONTENT_VIEW_FEED_ITEM_IDS = "CONTENT_VIEW_FEED_ITEMS";
    public static final String CONTENT_VIEW_FEED_ITEM_ID_TIMESTAMP = "CONTENT_VIEW_FEED_ITEM_ID_TIMESTAMP";
    public static final String CONTENT_VIEW_FEED_KEY = "CONTENT_VIEW_FEED_KEY";
    public static final String CURRENT_VIEW_KEY = "CURRENT_VIEW_KEY";
    public static final String EPISODE_ITEM_IDS = "EPISODE_ITEMS";
    public static final String FEEDS_FVI = "FEEDS_FVI";
    public static final String FEEDS_ROOT_KEY = "FEEDS_ROOT_KEY";
    public static final String FEED_CONTENT_FVI = "FEED_CONTENT_FVI";
    public static final String FEED_SCOPE_KEY = "FEED_SCOPE_KEY";
    public static final String LAST_EXTERNAL_PLAYING_TRACK_PATH = "LAST_EXTERNAL_PLAYING_TRACK_PATH";
    public static final String LAST_EXTERNAL_PLAYING_TRACK_TIME = "LAST_EXTERNAL_PLAYING_TRACK_TIME";
    public static final String P2P_KEY = "P2P_KEY";
    public static final String PODCASTS_FVI = "PODCASTS_FVI";
    public Feed contentViewFeed;
    public ArrayList<String> episodeItemIds;
    public TrackList episodeItems;
    public String feedContentFirstVisibleItem;
    public ArrayList<String> feedContentItemIds;
    public long feedContentItemIdsTimeStamp;
    public ArrayList<RssFeedItem> feedContentItems;
    public RssFeed feedContentRssFeed;
    public int feedsFirstVisibleItem;
    public Feed feedsViewRootFeed;
    public String lastExternalPlayingTrackPath;
    public long lastExternalPlayingTrackTime;
    public String podcastsFirstVisibleItem;
    public int currentView = -1;
    public int podcastCurrentScope = -1;

    public void toBundle(Bundle bundle) {
        bundle.putInt(CURRENT_VIEW_KEY, this.currentView);
        bundle.putInt(FEED_SCOPE_KEY, this.podcastCurrentScope);
        bundle.putString(FEEDS_ROOT_KEY, this.feedsViewRootFeed != null ? this.feedsViewRootFeed.id().toString() : null);
        bundle.putString(CONTENT_VIEW_FEED_KEY, this.contentViewFeed != null ? this.contentViewFeed.id().toString() : null);
        bundle.putString(LAST_EXTERNAL_PLAYING_TRACK_PATH, this.lastExternalPlayingTrackPath);
        bundle.putLong(LAST_EXTERNAL_PLAYING_TRACK_TIME, this.lastExternalPlayingTrackTime);
        bundle.putString(FEED_CONTENT_FVI, this.feedContentFirstVisibleItem);
        bundle.putString(PODCASTS_FVI, this.podcastsFirstVisibleItem);
        bundle.putInt(FEEDS_FVI, this.feedsFirstVisibleItem);
        bundle.putLong(CONTENT_VIEW_FEED_ITEM_ID_TIMESTAMP, this.feedContentItemIdsTimeStamp);
        this.feedContentItemIds = new ArrayList<>();
        if (this.feedContentItems != null) {
            Iterator<RssFeedItem> it = this.feedContentItems.iterator();
            while (it.hasNext()) {
                this.feedContentItemIds.add(it.next().itemID());
            }
            bundle.putStringArrayList(CONTENT_VIEW_FEED_ITEM_IDS, this.feedContentItemIds);
        }
        this.episodeItemIds = new ArrayList<>();
        if (this.episodeItems != null) {
            Iterator<Track> it2 = this.episodeItems.iterator();
            while (it2.hasNext()) {
                this.episodeItemIds.add(it2.next().trackPath());
            }
            bundle.putStringArrayList(EPISODE_ITEM_IDS, this.episodeItemIds);
        }
    }

    public String toString() {
        String str = ("Current View:" + this.currentView + "\n") + "podcastCurrentScope:" + this.podcastCurrentScope + "\n";
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("feedsViewRootFeed:");
        sb.append(this.feedsViewRootFeed != null ? this.feedsViewRootFeed.id().toString() : "<null>");
        sb.append("\n");
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append("contentViewFeed:");
        sb3.append(this.contentViewFeed != null ? this.contentViewFeed.id().toString() : "<null>");
        sb3.append("\n");
        return sb3.toString();
    }

    public static MasterViewState fromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        MasterViewState masterViewState = new MasterViewState();
        masterViewState.currentView = bundle.getInt(CURRENT_VIEW_KEY);
        masterViewState.podcastCurrentScope = bundle.getInt(FEED_SCOPE_KEY);
        Feed safeGetFeed = safeGetFeed(bundle.getString(FEEDS_ROOT_KEY));
        if (safeGetFeed == null) {
            safeGetFeed = FeedRepository.getRootFeed();
        }
        masterViewState.feedsViewRootFeed = safeGetFeed;
        masterViewState.contentViewFeed = safeGetFeed(bundle.getString(CONTENT_VIEW_FEED_KEY));
        masterViewState.feedContentItemIds = bundle.getStringArrayList(CONTENT_VIEW_FEED_ITEM_IDS);
        masterViewState.episodeItemIds = bundle.getStringArrayList(EPISODE_ITEM_IDS);
        masterViewState.lastExternalPlayingTrackPath = bundle.getString(LAST_EXTERNAL_PLAYING_TRACK_PATH);
        masterViewState.lastExternalPlayingTrackTime = bundle.getLong(LAST_EXTERNAL_PLAYING_TRACK_TIME, -1L);
        masterViewState.feedContentFirstVisibleItem = bundle.getString(FEED_CONTENT_FVI);
        masterViewState.podcastsFirstVisibleItem = bundle.getString(PODCASTS_FVI);
        masterViewState.feedsFirstVisibleItem = bundle.getInt(FEEDS_FVI, 0);
        masterViewState.feedContentItemIdsTimeStamp = bundle.getLong(CONTENT_VIEW_FEED_ITEM_ID_TIMESTAMP, -1L);
        return masterViewState;
    }

    static String dumpBundle(Bundle bundle) {
        if (bundle == null) {
            return "The bundle is <null>";
        }
        return (((("CURRENT_VIEW_KEY:" + bundle.getInt(CURRENT_VIEW_KEY) + "\n") + "P2P_KEY:" + bundle.getInt(P2P_KEY) + "\n") + "FEED_SCOPE_KEY:" + bundle.getInt(FEED_SCOPE_KEY) + "\n") + "FEEDS_ROOT_KEY:" + bundle.getString(FEEDS_ROOT_KEY) + "\n") + "CONTENT_VIEW_FEED_KEY:" + bundle.getString(CONTENT_VIEW_FEED_KEY) + "\n";
    }

    static Feed safeGetFeed(String str) {
        UUID fromString;
        if (StringUtils.isNullOrEmpty(str) || (fromString = UUID.fromString(str)) == null) {
            return null;
        }
        return FeedRepository.getFeedById(fromString);
    }
}
