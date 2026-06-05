package mobi.beyondpod.ui.views.contentview;

import android.content.Intent;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.views.FeedContentDataSource;
import mobi.beyondpod.ui.views.base.FeedContentDataSourceEvents;

/* loaded from: classes.dex */
public class MyEpisodesSource implements IDataSource {
    static final String CURRENT_ITEM_ID_TAG = "CurrentEpisodeItemID";
    private static final String TAG = "MyEpisodesSource";
    TrackList _Items = new TrackList();

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public boolean allowStarring() {
        return false;
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public void setCollectionChangedListener(FeedContentDataSource.CollectionChangedListener collectionChangedListener) {
    }

    public MyEpisodesSource() {
    }

    public MyEpisodesSource(Intent intent) {
        restoreContent(intent.getStringArrayExtra("EpisodeIds"));
    }

    public static boolean isMySavedState(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return !StringUtils.isNullOrEmpty(bundle.getString(CURRENT_ITEM_ID_TAG));
    }

    public static boolean isMyIntent(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra(CURRENT_ITEM_ID_TAG);
    }

    private void restoreContent(String[] strArr) {
        this._Items.clear();
        if (strArr == null) {
            CoreHelper.writeTraceEntry(TAG, "Restoring episode data source with null episode siblings");
            return;
        }
        CoreHelper.writeTraceEntry(TAG, "Restoring episode data source with:" + strArr.length + " siblings");
        if (!FeedRepository.isRepositoryAvailable()) {
            CoreHelper.writeTraceEntry(TAG, "Restoring episode data source while repository is not loaded! Ignoring...");
            return;
        }
        for (String str : strArr) {
            Track trackByPathQuick = FeedRepository.getTrackByPathQuick(str);
            if (trackByPathQuick != null) {
                this._Items.add(trackByPathQuick);
            }
        }
        CoreHelper.writeTraceEntry(TAG, "Restored: " + this._Items.size() + " episode siblings");
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public RssFeedItem getItemAtPosition(int i) {
        if (i < 0 || i >= this._Items.size()) {
            return null;
        }
        return asRssFeedItem(this._Items.get(i));
    }

    private RssFeedItem asRssFeedItem(Track track) {
        RssFeed rssFeed = new RssFeed();
        rssFeed.FeedID = track.getParentFeed().id();
        return RssFeedItem.buildMockRssItem(track.getParentFeed(), rssFeed, track);
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public RssFeedItem getNextPrevItem(int i, RssFeedItem rssFeedItem) {
        int indexOf = getIndexOf(rssFeedItem) + i;
        if (indexOf < 0 || indexOf > this._Items.size() - 1) {
            return null;
        }
        return getItemAtPosition(indexOf);
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public RssFeedItem getItemByIntentOrSavedState(Intent intent, Bundle bundle) {
        Track trackByPathQuick;
        String string = bundle != null ? bundle.getString(CURRENT_ITEM_ID_TAG) : null;
        if (intent != null) {
            string = intent.getStringExtra(CURRENT_ITEM_ID_TAG);
        }
        if (!StringUtils.isNullOrEmpty(string) && (trackByPathQuick = FeedRepository.getTrackByPathQuick(string)) != null && this._Items.indexOf(trackByPathQuick) >= 0) {
            return asRssFeedItem(trackByPathQuick);
        }
        if (this._Items.size() > 0) {
            return getItemAtPosition(0);
        }
        return null;
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public int getIndexOf(RssFeedItem rssFeedItem) {
        Track localEnclosureTrack;
        int indexOf;
        if (rssFeedItem == null || rssFeedItem.enclosure() == null || (localEnclosureTrack = rssFeedItem.enclosure().getLocalEnclosureTrack()) == null || (indexOf = this._Items.indexOf(localEnclosureTrack)) < 0) {
            return 0;
        }
        return indexOf;
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public void saveCurrentState(Bundle bundle, RssFeedItem rssFeedItem) {
        Track localEnclosureTrack;
        if (rssFeedItem != null && (localEnclosureTrack = rssFeedItem.enclosure().getLocalEnclosureTrack()) != null) {
            bundle.putString(CURRENT_ITEM_ID_TAG, localEnclosureTrack.trackPath());
        }
        MasterViewState masterViewState = new MasterViewState();
        masterViewState.episodeItems = this._Items;
        masterViewState.toBundle(bundle);
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public boolean isDataLoaded() {
        return this._Items.size() > 0;
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public void restoreCurrentState(MasterViewState masterViewState) {
        if (masterViewState.episodeItemIds != null) {
            restoreContent((String[]) masterViewState.episodeItemIds.toArray(new String[masterViewState.episodeItemIds.size()]));
            BeyondPodApplication.messageBus.publishEvent(new FeedContentDataSourceEvents.FeedContentListViewDataSourceEvent(FeedContentDataSource.class, FeedContentDataSourceEvents.FeedContentListViewDataSourceEvent.LOAD_COMPLETED));
        }
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public int getCount() {
        return this._Items.size();
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public List<Track> generatePlaylistStartingFrom(Track track) {
        TrackList trackList = new TrackList();
        Iterator<Track> it = this._Items.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Track next = it.next();
            if (track == null || track.equals(next)) {
                z = true;
            }
            if (z && !next.isPlayed()) {
                trackList.add(next);
            }
        }
        return trackList;
    }
}
