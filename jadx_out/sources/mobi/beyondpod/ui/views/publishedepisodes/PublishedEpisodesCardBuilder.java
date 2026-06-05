package mobi.beyondpod.ui.views.publishedepisodes;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import java.util.ArrayList;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.commands.CommandManager;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase;
import mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardFactory;
import mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardLarge;

/* loaded from: classes.dex */
public class PublishedEpisodesCardBuilder {
    private static final String TAG = PublishedEpisodesListViewAdapter.class.getSimpleName();
    private Context _Context;
    private IPublishedEpisodesCardBuilder _Owner;
    private View.OnClickListener _cardFaceListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PublishedEpisodesCardBuilder.this._Owner.onItemSelected(view, (RssFeedItem) view.getTag(R.id.card_episode));
        }
    };
    private View.OnClickListener _cardPlayButtonFaceRedirectListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RssFeedItem findEpisodeInParent = PublishedEpisodesCardBuilder.this.findEpisodeInParent(view);
            if (findEpisodeInParent != null) {
                PublishedEpisodesCardBuilder.this._Owner.onItemSelected(view, findEpisodeInParent);
            }
        }
    };
    private View.OnLongClickListener _cardFaceLongClickListener = new View.OnLongClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.3
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            if (PublishedEpisodesCardBuilder.this._Owner.isMultiSelecting() || PublishedEpisodesCardBuilder.this._Owner.isInPreviewMode()) {
                return false;
            }
            RssFeedItem findEpisodeInParent = PublishedEpisodesCardBuilder.this.findEpisodeInParent(view);
            if (findEpisodeInParent != null) {
                PublishedEpisodesCardBuilder.this._Owner.onItemLongPressed(findEpisodeInParent);
                ((Checkable) view).setChecked(true);
            }
            return true;
        }
    };
    private View.OnClickListener _playPauseListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RssFeedItem findEpisodeInParent = PublishedEpisodesCardBuilder.this.findEpisodeInParent(view);
            if (PublishedEpisodesCardBuilder.this._Owner.isMultiSelecting()) {
                PublishedEpisodesCardBuilder.this._Owner.onItemSelected(view, findEpisodeInParent);
            } else if (findEpisodeInParent != null) {
                PublishedEpisodesCardBuilder.this._Owner.onPlayPause(findEpisodeInParent);
            }
        }
    };
    private View.OnClickListener _downloadListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RssFeedItem findEpisodeInParent = PublishedEpisodesCardBuilder.this.findEpisodeInParent(view);
            if (PublishedEpisodesCardBuilder.this._Owner.isMultiSelecting()) {
                PublishedEpisodesCardBuilder.this._Owner.onItemSelected(view, findEpisodeInParent);
            } else if (findEpisodeInParent != null) {
                PublishedEpisodesCardBuilder.this._Owner.onDownload(findEpisodeInParent);
            }
        }
    };
    private View.OnClickListener _playlistListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.6
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RssFeedItem findEpisodeInParent = PublishedEpisodesCardBuilder.this.findEpisodeInParent(view);
            if (PublishedEpisodesCardBuilder.this._Owner.isMultiSelecting()) {
                PublishedEpisodesCardBuilder.this._Owner.onItemSelected(view, findEpisodeInParent);
            } else if (findEpisodeInParent != null) {
                PublishedEpisodesCardBuilder.this._Owner.onAddRemovePlaylist(findEpisodeInParent);
            }
        }
    };
    private View.OnClickListener _overflowListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.7
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RssFeedItem findEpisodeInParent = PublishedEpisodesCardBuilder.this.findEpisodeInParent(view);
            if (PublishedEpisodesCardBuilder.this._Owner.isMultiSelecting()) {
                PublishedEpisodesCardBuilder.this._Owner.onItemSelected(view, findEpisodeInParent);
            } else {
                if (findEpisodeInParent == null) {
                    return;
                }
                PublishedEpisodesCardBuilder.this._Owner.showCardMenu(view, findEpisodeInParent);
            }
        }
    };
    private View.OnClickListener _addToMyEpisodesListener = new View.OnClickListener() { // from class: mobi.beyondpod.ui.views.publishedepisodes.PublishedEpisodesCardBuilder.8
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            RssFeedItem findEpisodeInParent = PublishedEpisodesCardBuilder.this.findEpisodeInParent(view);
            if (PublishedEpisodesCardBuilder.this._Owner.isMultiSelecting()) {
                PublishedEpisodesCardBuilder.this._Owner.onItemSelected(view, findEpisodeInParent);
                return;
            }
            if (findEpisodeInParent == null || findEpisodeInParent.enclosure() == null) {
                return;
            }
            if (Configuration.allowEpisodeStreaming() == 2) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(findEpisodeInParent);
                CommandManager.cmdDownloadFeedItemsManually(PublishedEpisodesCardBuilder.this._Context, arrayList);
                return;
            }
            CommandManager.prepareEnclosureForPlayback(null, findEpisodeInParent, true, true);
        }
    };

    /* loaded from: classes.dex */
    public interface IPublishedEpisodesCardBuilder {
        boolean canDownloadRemoteImages();

        Feed currentFeed();

        ImageLoader getImageLoader();

        boolean isInPreviewMode();

        boolean isItemSelected(RssFeedItem rssFeedItem);

        boolean isMultiSelecting();

        void onAddRemovePlaylist(RssFeedItem rssFeedItem);

        void onDownload(RssFeedItem rssFeedItem);

        void onItemLongPressed(RssFeedItem rssFeedItem);

        void onItemSelected(View view, RssFeedItem rssFeedItem);

        void onPlayPause(RssFeedItem rssFeedItem);

        void showCardMenu(View view, RssFeedItem rssFeedItem);
    }

    public PublishedEpisodesCardBuilder(Context context, IPublishedEpisodesCardBuilder iPublishedEpisodesCardBuilder) {
        this._Owner = iPublishedEpisodesCardBuilder;
        this._Context = context;
    }

    public View buildViewFor(RssFeedItem rssFeedItem, View view, Feed feed, ViewGroup viewGroup) {
        if (view == null) {
            view = buildConvertView(viewGroup);
        }
        view.setTag(R.id.card_episode, rssFeedItem);
        PublishedEpisodeCardBase publishedEpisodeCardBase = (PublishedEpisodeCardBase) view.getTag();
        publishedEpisodeCardBase.setFaceListeners(this._cardFaceListener, this._cardFaceLongClickListener);
        if (rssFeedItem.itemID() != null) {
            if (rssFeedItem.enclosure() == null) {
                publishedEpisodeCardBase.buildTextViewItem(rssFeedItem, feed, canDownloadRemoteImages(), this._Owner.getImageLoader());
            } else if (feed.isTransient) {
                publishedEpisodeCardBase.buildPreviewEpisodeViewItem(rssFeedItem, feed, this._Owner.getImageLoader());
            } else {
                publishedEpisodeCardBase.buildEpisodeViewItem(rssFeedItem, feed, this._Owner.getImageLoader(), this._cardPlayButtonFaceRedirectListener, this._playPauseListener, this._downloadListener, this._playlistListener, this._overflowListener, this._addToMyEpisodesListener);
            }
        }
        if (this._Owner.isItemSelected(rssFeedItem)) {
            ((Checkable) view).setChecked(true);
        } else {
            ((Checkable) view).setChecked(false);
        }
        return view;
    }

    private boolean canDownloadRemoteImages() {
        return this._Owner.canDownloadRemoteImages();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RssFeedItem findEpisodeInParent(View view) {
        do {
            Object tag = view.getTag(R.id.card_episode);
            if (tag == null) {
                Object parent = view.getParent();
                view = (parent == null || !(parent instanceof View)) ? null : (View) parent;
            } else {
                return (RssFeedItem) tag;
            }
        } while (view != null);
        return null;
    }

    public View buildConvertView(ViewGroup viewGroup) {
        PublishedEpisodeCardBase buildEpisodeCard;
        Feed currentFeed = this._Owner.currentFeed();
        if (currentFeed != null && currentFeed.isTransient) {
            buildEpisodeCard = new PublishedEpisodeCardLarge(this._Context);
        } else {
            buildEpisodeCard = PublishedEpisodeCardFactory.buildEpisodeCard(this._Context);
        }
        return buildEpisodeCard.getCardRoot();
    }
}
