package mobi.beyondpod.ui.views.contentview;

import android.content.Intent;
import android.os.Bundle;
import java.util.List;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.MasterViewState;
import mobi.beyondpod.ui.views.FeedContentDataSource;

/* loaded from: classes.dex */
public interface IDataSource {
    boolean allowStarring();

    List<Track> generatePlaylistStartingFrom(Track track);

    int getCount();

    int getIndexOf(RssFeedItem rssFeedItem);

    RssFeedItem getItemAtPosition(int i);

    RssFeedItem getItemByIntentOrSavedState(Intent intent, Bundle bundle);

    RssFeedItem getNextPrevItem(int i, RssFeedItem rssFeedItem);

    boolean isDataLoaded();

    void restoreCurrentState(MasterViewState masterViewState);

    void saveCurrentState(Bundle bundle, RssFeedItem rssFeedItem);

    void setCollectionChangedListener(FeedContentDataSource.CollectionChangedListener collectionChangedListener);
}
