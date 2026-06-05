package mobi.beyondpod.ui.views.publishedepisodes;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.UUID;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.FeedContentDataSource;
import mobi.beyondpod.ui.views.base.columnlistview.MultiItemRowListAdapter;
import mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter;
import mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder;

/* loaded from: classes.dex */
public class PublishedEpisodesCardAdapter extends BaseAdapter implements MultiItemRowListAdapter.MultiItemRowChildAdapter, SectionedListViewAdapter.ISectionedAdapter, PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder {
    public static final UUID AdapterID = UUID.fromString("AABBCCDD-0000-0000-0000-000000000005");
    private Context _Context;
    private PublishedEpisodesCardBuilder _ItemBuilder;
    private PublishedEpisodesListViewAdapter _Owner;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return 0;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return true;
    }

    public PublishedEpisodesCardAdapter(Context context, PublishedEpisodesListViewAdapter publishedEpisodesListViewAdapter) {
        this._Context = context;
        this._Owner = publishedEpisodesListViewAdapter;
        this._ItemBuilder = new PublishedEpisodesCardBuilder(context, this);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return FeedContentDataSource.items().size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (i < 0 || i >= FeedContentDataSource.items().size()) {
            return null;
        }
        return FeedContentDataSource.items().get(i);
    }

    @Override // android.widget.Adapter, mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return this._ItemBuilder.buildViewFor(getItemAt(i), view, currentFeed(), viewGroup);
    }

    public RssFeedItem getItemAt(int i) {
        Object item = getItem(i);
        if (item != null) {
            return (RssFeedItem) item;
        }
        return null;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemCount() {
        return getCount();
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getItemAtPosition(int i) {
        return getItem(i);
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getItemRow(Object obj) {
        int indexOf;
        if (obj != null && (indexOf = FeedContentDataSource.items().indexOf(obj)) >= 0) {
            return indexOf;
        }
        return 0;
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public Object getFirstItemAtRow(int i) {
        return getItemAtPosition(i);
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public int getRowCount() {
        return getCount();
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.SectionedListViewAdapter.ISectionedAdapter
    public UUID getAdapterId() {
        return AdapterID;
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public Feed currentFeed() {
        return this._Owner.currentFeed();
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public ImageLoader getImageLoader() {
        return this._Owner.getImageLoader();
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public void onAddRemovePlaylist(RssFeedItem rssFeedItem) {
        this._Owner.onAddRemovePlaylist(rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public void onPlayPause(RssFeedItem rssFeedItem) {
        this._Owner.onPlayPause(rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public void onItemSelected(View view, RssFeedItem rssFeedItem) {
        this._Owner.onItemSelected(view, rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public void onDownload(RssFeedItem rssFeedItem) {
        this._Owner.onDownload(rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public void onItemLongPressed(RssFeedItem rssFeedItem) {
        this._Owner.onItemLongPressed(rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public boolean isItemSelected(RssFeedItem rssFeedItem) {
        return this._Owner.isItemSelected(rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public void showCardMenu(View view, RssFeedItem rssFeedItem) {
        this._Owner.showCardMenu(view, rssFeedItem);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public boolean isMultiSelecting() {
        return this._Owner.isMultiSelecting();
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public boolean canDownloadRemoteImages() {
        return this._Owner.canDownloadRemoteImages();
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.IPublishedEpisodesCardBuilder
    public boolean isInPreviewMode() {
        return this._Owner.isInPreviewMode();
    }

    @Override // mobi.beyondpod.ui.views.base.columnlistview.MultiItemRowListAdapter.MultiItemRowChildAdapter
    public View buildConvertView(ViewGroup viewGroup) {
        return this._ItemBuilder.buildConvertView(viewGroup);
    }
}
