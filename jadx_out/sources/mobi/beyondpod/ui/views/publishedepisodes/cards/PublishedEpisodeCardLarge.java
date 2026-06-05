package mobi.beyondpod.ui.views.publishedepisodes.cards;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.core.volley.ImageLoader;

/* loaded from: classes.dex */
public class PublishedEpisodeCardLarge extends PublishedEpisodeCardMedium {
    public TextView Description;
    private int _DescriptionLinesEpisode;
    private int _DescriptionLinesText;
    private int _TitleLinesEpisode;
    private int _TitleLinesText;

    public PublishedEpisodeCardLarge(Context context) {
        super(context);
        this.Description = (TextView) getCardRoot().findViewById(R.id.description);
        this._TitleLinesText = context.getResources().getInteger(R.integer.card_title_text_item_maxLines);
        this._TitleLinesEpisode = context.getResources().getInteger(R.integer.card_title_maxLines);
        this._DescriptionLinesEpisode = context.getResources().getInteger(R.integer.card_description_maxLines);
        this._DescriptionLinesText = context.getResources().getInteger(R.integer.card_description_text_item_maxLines);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardMedium
    protected int getCardlayout() {
        switch (this._Context.getResources().getInteger(R.integer.card_layout_type)) {
            case 2:
                return R.layout.episode_card_type_2_large;
            case 3:
                return R.layout.episode_card_type_3_large;
            default:
                return R.layout.episode_card_type_1_large;
        }
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildCommonViewItem(RssFeedItem rssFeedItem) {
        super.buildCommonViewItem(rssFeedItem);
        this.Description.setText(rssFeedItem.shortTaglessDescription());
        this.Description.setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardMedium, mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildTextViewItem(RssFeedItem rssFeedItem, Feed feed, boolean z, ImageLoader imageLoader) {
        super.buildTextViewItem(rssFeedItem, feed, z, imageLoader);
        this.Description.setMaxLines(this._DescriptionLinesText);
        this.Title.setMaxLines(this._TitleLinesEpisode);
        if (!rssFeedItem.isMockItem().booleanValue() && rssFeedItem.getRead()) {
            this.Description.setTextColor(this._DescriptionNotMy);
        } else {
            this.Description.setTextColor(this._DescriptionNormal);
        }
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardMedium, mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildEpisodeViewItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader, View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, View.OnClickListener onClickListener4, View.OnClickListener onClickListener5, View.OnClickListener onClickListener6) {
        super.buildEpisodeViewItem(rssFeedItem, feed, imageLoader, onClickListener, onClickListener2, onClickListener3, onClickListener4, onClickListener5, onClickListener6);
        this.Description.setMaxLines(this._DescriptionLinesEpisode);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardMedium
    protected void wireEpisodeDescriptionColor(int i) {
        this.Description.setTextColor(i);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardMedium, mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildPreviewEpisodeViewItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader) {
        char c;
        buildCommonViewItem(rssFeedItem);
        if (this.Image != null) {
            this.Image.setVisibility(0);
            this.Image.setErrorImageResId(FeedImageCache.getDefaultImageResId(feed));
            this.Image.setRssItem(rssFeedItem, feed, imageLoader);
        }
        this.Image.setProgress(0);
        this.CardBase.setBackgroundColor(this._CardNormal);
        this.Title.setTextColor(this._TitleNormal);
        this.Title.setMaxLines(this._TitleLinesEpisode);
        int fileTypeForMimeType = MediaFile.getFileTypeForMimeType(rssFeedItem.enclosure().Type);
        if (MediaFile.isVideoFileType(fileTypeForMimeType)) {
            c = 2;
        } else {
            c = MediaFile.isImageFileType(fileTypeForMimeType) ? (char) 3 : (char) 1;
        }
        boolean z = c == 2;
        this.TBAddToMyEpisodes.setText(R.string.published_list_preview_episode);
        this.TBAddToMyEpisodes.setCompoundDrawablesWithIntrinsicBounds(z ? R.drawable.ic_card_play_video : R.drawable.ic_card_play, 0, 0, 0);
        this.TBAddToMyEpisodes.setBackgroundResource(0);
        this.TBPublisherPlay.setVisibility(8);
        this.TBPublisherOverfolw.setVisibility(8);
        this.EpisodeTB.setVisibility(8);
        this.PublisherTB.setVisibility(0);
        this.PublisherTB.setBackgroundResource(0);
        this.Description.setTextColor(this._DescriptionNormal);
        this.Description.setMaxLines(this._DescriptionLinesEpisode);
    }
}
