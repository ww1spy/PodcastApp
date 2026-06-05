package mobi.beyondpod.ui.views.contentview;

import android.content.Intent;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.views.FeedContentDataSource;

/* loaded from: classes.dex */
public class FeedSource implements IDataSource {
    public static final String CURRENT_ITEM_TAG = "CurrentRSSItemID";
    private static final String TAG = "FeedSource";

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public RssFeedItem getItemAtPosition(int i) {
        return FeedContentDataSource.items().get(i);
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public RssFeedItem getNextPrevItem(int i, RssFeedItem rssFeedItem) {
        return FeedContentDataSource.getNextPrevItem(i, rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public RssFeedItem getItemByIntentOrSavedState(Intent intent, Bundle bundle) {
        RssFeedItem itemById;
        String string = bundle != null ? bundle.getString(CURRENT_ITEM_TAG) : null;
        if (intent != null) {
            string = intent.getStringExtra(CURRENT_ITEM_TAG);
        }
        if (!StringUtils.isNullOrEmpty(string) && (itemById = FeedContentDataSource.getItemById(string)) != null) {
            return itemById;
        }
        if (FeedContentDataSource.items().size() > 0) {
            return getItemAtPosition(0);
        }
        return null;
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public int getIndexOf(RssFeedItem rssFeedItem) {
        return FeedContentDataSource.items().indexOf(rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public void setCollectionChangedListener(FeedContentDataSource.CollectionChangedListener collectionChangedListener) {
        FeedContentDataSource.setCollectionChangedListener(collectionChangedListener);
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public void saveCurrentState(Bundle bundle, RssFeedItem rssFeedItem) {
        if (rssFeedItem != null) {
            bundle.putString(CURRENT_ITEM_TAG, rssFeedItem.itemID());
        }
        MasterViewState masterViewState = new MasterViewState();
        FeedContentDataSource.saveCurrentState(masterViewState);
        masterViewState.toBundle(bundle);
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public boolean isDataLoaded() {
        return FeedContentDataSource.isDataLoaded();
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public void restoreCurrentState(MasterViewState masterViewState) {
        FeedContentDataSource.restoreCurrentState(masterViewState);
        if (FeedContentDataSource.currentFeed() != null) {
            FeedContentDataSource.loadItems(FeedContentDataSource.currentFeed(), false);
        }
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public boolean allowStarring() {
        return FeedContentDataSource.currentFeed() != null && FeedContentDataSource.currentFeed().isGReaderFeed();
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public int getCount() {
        return FeedContentDataSource.items().size();
    }

    @Override // mobi.beyondpod.ui.views.contentview.IDataSource
    public List<Track> generatePlaylistStartingFrom(Track track) {
        Track trackByNameOrUrl;
        TrackList trackList = new TrackList();
        TrackList trackList2 = new TrackList();
        FeedContentDataSource.currentFeed().tracks().appendTo(trackList2);
        Iterator<RssFeedItem> it = FeedContentDataSource.items().iterator();
        boolean z = false;
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next.enclosure() != null && (trackByNameOrUrl = trackList2.getTrackByNameOrUrl(next.enclosure().fileName(), next.enclosure().Url)) != null) {
                if (track == null || track.equals(trackByNameOrUrl)) {
                    z = true;
                }
                if (z && !trackByNameOrUrl.isPlayed()) {
                    trackList.add(trackByNameOrUrl);
                }
            }
        }
        return trackList;
    }

    public static boolean isMySavedState(Bundle bundle) {
        if (bundle == null) {
            return false;
        }
        return !StringUtils.isNullOrEmpty(bundle.getString(CURRENT_ITEM_TAG));
    }

    public static boolean isMyIntent(Intent intent) {
        return intent != null && intent.hasExtra(CURRENT_ITEM_TAG);
    }
}
