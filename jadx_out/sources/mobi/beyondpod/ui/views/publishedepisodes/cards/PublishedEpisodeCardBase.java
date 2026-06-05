package mobi.beyondpod.ui.views.publishedepisodes.cards;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Formatter;
import java.util.Locale;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.evo.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewTrack;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.base.DownloadProgressButton;
import mobi.beyondpod.ui.views.base.ProgressImageView;

/* loaded from: classes.dex */
public abstract class PublishedEpisodeCardBase {
    protected static StringBuilder sFormatBuilder = new StringBuilder();
    protected static Formatter sFormatter = new Formatter(sFormatBuilder, Locale.getDefault());
    public View CardBase;
    public ProgressImageView Image;
    public TextView Source;
    public DownloadProgressButton TBDownload;
    public ImageView TBOverflow;
    public ImageView TBPublisherOverfolw;
    public TextView Title;
    int _CardNormal;
    int _CardNotMy;
    int _CardPlayed;
    protected Context _Context;
    int _DescriptionNormal;
    int _DescriptionNotMy;
    int _DescriptionPlayed;
    int _TitleNormal;
    int _TitleNotMy;
    int _TitlePlayed;

    public abstract void buildEpisodeViewItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader, View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, View.OnClickListener onClickListener4, View.OnClickListener onClickListener5, View.OnClickListener onClickListener6);

    public abstract void buildPreviewEpisodeViewItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader);

    public abstract View getCardRoot();

    public abstract void setFaceListeners(View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener);

    public PublishedEpisodeCardBase(Context context) {
        this._Context = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.Cards);
        this._CardNormal = obtainStyledAttributes.getColor(0, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_bg_normal));
        this._CardNotMy = obtainStyledAttributes.getColor(1, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_bg_not_my));
        this._CardPlayed = obtainStyledAttributes.getColor(2, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_bg_played));
        this._TitleNormal = obtainStyledAttributes.getColor(8, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_title_normal));
        this._TitleNotMy = obtainStyledAttributes.getColor(9, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_title_not_my));
        this._TitlePlayed = obtainStyledAttributes.getColor(10, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_title_played));
        this._DescriptionNormal = obtainStyledAttributes.getColor(3, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_description_normal));
        this._DescriptionNotMy = obtainStyledAttributes.getColor(4, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_description_not_my));
        this._DescriptionPlayed = obtainStyledAttributes.getColor(5, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_description_played));
        obtainStyledAttributes.recycle();
    }

    public void buildCommonViewItem(RssFeedItem rssFeedItem) {
        this.Title.setText(rssFeedItem.Title);
        wireCommonSource(rssFeedItem);
    }

    protected void wireCommonSource(RssFeedItem rssFeedItem) {
        sFormatBuilder.setLength(0);
        String resolveOriginatingFeedTitle = rssFeedItem.resolveOriginatingFeedTitle();
        if (!StringUtils.isNullOrEmpty(resolveOriginatingFeedTitle)) {
            if (rssFeedItem.pubDate() != null) {
                this.Source.setText(sFormatter.format("%s • %s", DateTime.formatDateTime(rssFeedItem.pubDate()), resolveOriginatingFeedTitle).toString());
                return;
            } else {
                this.Source.setText(resolveOriginatingFeedTitle);
                return;
            }
        }
        if (rssFeedItem.pubDate() != null) {
            this.Source.setText(DateTime.formatDateTime(rssFeedItem.pubDate()));
        } else {
            this.Source.setText(resolveOriginatingFeedTitle);
        }
    }

    public void buildTextViewItem(RssFeedItem rssFeedItem, Feed feed, boolean z, ImageLoader imageLoader) {
        boolean z2 = !rssFeedItem.isMockItem().booleanValue() && rssFeedItem.getRead();
        buildCommonViewItem(rssFeedItem);
        if (z) {
            this.Image.setVisibility(0);
            this.Image.setErrorImageResId(FeedImageCache.getDefaultImageResId(feed));
            this.Image.setRssItem(rssFeedItem, feed, imageLoader);
            this.Image.dimImage(z2);
        } else {
            this.Image.setVisibility(8);
        }
        this.Source.setCompoundDrawablesWithIntrinsicBounds(rssFeedItem.getStarred() ? mobi.beyondpod.R.drawable.ic_marker_heart : 0, 0, 0, 0);
        if (z2) {
            this.CardBase.setBackgroundColor(this._CardNotMy);
            this.Title.setTextColor(this._TitleNotMy);
        } else {
            this.CardBase.setBackgroundColor(this._CardNormal);
            this.Title.setTextColor(this._TitleNormal);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void assignTrackPrimaryImage(Track track, Feed feed, ImageLoader imageLoader) {
        if (track == null) {
            this.Image.setVisibility(8);
            return;
        }
        this.Image.setVisibility(0);
        this.Image.setProgress((int) Math.ceil(track.playedAsFraction() * 100.0f));
        this.Image.setErrorImageResId(FadingNetworkImageViewTrack.getDefaultImage(1));
        if (track.contentType() == 3) {
            this.Image.setFeed(feed, imageLoader);
        } else if (track.exists()) {
            this.Image.setTrack(track, imageLoader);
        } else {
            this.Image.setFeed(feed, imageLoader);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wireDownloadButton(Track track) {
        if (track == null) {
            this.TBDownload.setState(0);
            return;
        }
        if (!track.hasUrl()) {
            this.TBDownload.setVisibility(8);
            return;
        }
        if (track.isFullyDownloaded()) {
            this.TBDownload.setVisibility(8);
            return;
        }
        this.TBDownload.setVisibility(0);
        int downloadStatus = track.getDownloadStatus();
        if (downloadStatus == 2 || downloadStatus == 1 || downloadStatus == 6) {
            if (track.getDownloadSize() <= 0) {
                this.TBDownload.setUnknownProgress(track.getDownloadedPortion());
                return;
            } else {
                this.TBDownload.setProgress((int) track.getDownloadPercent());
                return;
            }
        }
        if (EnclosureDownloadManager.isDownloadPending(track.getUrl())) {
            this.TBDownload.setState(1);
        } else if (track.hasDownloadStarted() && !track.isFullyDownloaded()) {
            this.TBDownload.setDownloadError((int) track.getDownloadPercent());
        } else {
            this.TBDownload.setState(0);
        }
    }
}
