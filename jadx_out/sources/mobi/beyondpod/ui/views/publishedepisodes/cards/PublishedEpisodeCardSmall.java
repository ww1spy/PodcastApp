package mobi.beyondpod.ui.views.publishedepisodes.cards;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.base.DownloadProgressButton;
import mobi.beyondpod.ui.views.base.ProgressImageView;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class PublishedEpisodeCardSmall extends PublishedEpisodeCardBase {
    public ImageView TBAddToMyEpisodes;
    private int _TitleLinesEpisode;
    private int _TitleLinesText;
    private int _ToolbarHeight;

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildPreviewEpisodeViewItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader) {
    }

    protected int getCardlayout() {
        return R.layout.episode_card_type_1_small;
    }

    public PublishedEpisodeCardSmall(Context context) {
        super(context);
        inflateCard(getCardlayout());
        this._ToolbarHeight = context.getResources().getDimensionPixelSize(R.dimen.episode_toolbar_height);
        this._TitleLinesEpisode = context.getResources().getInteger(R.integer.card_title_maxLines);
        this._TitleLinesText = context.getResources().getInteger(R.integer.card_title_text_item_maxLines);
    }

    protected void inflateCard(int i) {
        View inflate = View.inflate(this._Context, i, null);
        this.CardBase = inflate;
        this.Image = (ProgressImageView) inflate.findViewById(R.id.image);
        this.Image.setFadeInImage(false);
        this.Image.setMaxImageSize(this._Context.getResources().getDimensionPixelSize(R.dimen.card_small_episode_image_width), this._Context.getResources().getDimensionPixelSize(R.dimen.card_small_episode_image_height));
        this.Title = (TextView) inflate.findViewById(R.id.title);
        this.Source = (TextView) inflate.findViewById(R.id.source);
        this.TBDownload = (DownloadProgressButton) inflate.findViewById(R.id.tb_download);
        this.TBOverflow = (ImageView) inflate.findViewById(R.id.tb_overflow);
        this.TBAddToMyEpisodes = (ImageView) inflate.findViewById(R.id.addToMyEpisopdes);
        inflate.setTag(this);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public View getCardRoot() {
        return this.CardBase;
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void setFaceListeners(View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        this.CardBase.setOnClickListener(onClickListener);
        this.CardBase.setOnLongClickListener(onLongClickListener);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildTextViewItem(RssFeedItem rssFeedItem, Feed feed, boolean z, ImageLoader imageLoader) {
        super.buildTextViewItem(rssFeedItem, feed, z, imageLoader);
        this.Title.setMaxLines(this._TitleLinesText);
        this.TBDownload.setVisibility(8);
        this.TBOverflow.setVisibility(8);
        this.TBAddToMyEpisodes.setVisibility(8);
        adjustSourceRightPadding();
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildEpisodeViewItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader, View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, View.OnClickListener onClickListener4, View.OnClickListener onClickListener5, View.OnClickListener onClickListener6) {
        boolean read = rssFeedItem.getRead();
        buildCommonViewItem(rssFeedItem);
        RssEnclosure enclosure = rssFeedItem.enclosure();
        Track trackByNameOrUrl = feed.tracks().getTrackByNameOrUrl(enclosure.fileName(), enclosure.Url);
        this.TBDownload.setOnClickListener(onClickListener3);
        this.TBOverflow.setOnClickListener(onClickListener5);
        if (trackByNameOrUrl == null) {
            if (enclosure.isEnclosureInHistory()) {
                this.CardBase.setBackgroundColor(this._CardNotMy);
                this.Title.setTextColor(this._TitleNotMy);
                this.TBDownload.setVisibility(8);
                this.TBOverflow.setVisibility(8);
                this.TBAddToMyEpisodes.setOnClickListener(onClickListener3);
                this.TBAddToMyEpisodes.setVisibility(0);
                this.TBAddToMyEpisodes.setImageResource(R.drawable.ic_action_pub_ep_replay);
            } else {
                this.CardBase.setBackgroundColor(this._CardNormal);
                this.Title.setTextColor(this._TitleNormal);
                this.TBOverflow.setVisibility(0);
                this.TBDownload.setVisibility(0);
                this.TBAddToMyEpisodes.setVisibility(8);
                wireDownloadButton(null);
                this.CardBase.setOnClickListener(onClickListener2);
            }
            this.Source.setCompoundDrawablesWithIntrinsicBounds(0, 0, rssFeedItem.getStarred() ? R.drawable.ic_marker_heart : 0, 0);
        } else {
            this.TBDownload.setVisibility(0);
            this.TBOverflow.setVisibility(0);
            this.TBAddToMyEpisodes.setVisibility(8);
            this.CardBase.setBackgroundColor(trackByNameOrUrl.isPlayed() ? this._CardPlayed : this._CardNormal);
            this.Title.setTextColor(trackByNameOrUrl.isPlayed() ? this._TitlePlayed : this._TitleNormal);
            wireDownloadButton(trackByNameOrUrl);
            wireDateAndDuration(trackByNameOrUrl);
            this.CardBase.setOnClickListener(onClickListener2);
        }
        this.Title.setMaxLines(this._TitleLinesEpisode);
        if (Configuration.enableLoggingInProduction() || CoreHelper.isDebugBuild()) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.Source.getText().toString());
            sb.append(" (");
            sb.append(read ? "R" : "");
            sb.append(enclosure.isEnclosureInHistory() ? ",D" : "");
            sb.append(")");
            this.Source.setText(sb.toString());
        }
        assignTrackPrimaryImage(trackByNameOrUrl, feed, imageLoader);
        adjustSourceRightPadding();
    }

    private void wireDateAndDuration(Track track) {
        String formatEpisodeTimeAsRemaining = UIUtils.formatEpisodeTimeAsRemaining(this._Context, track);
        String formatDateTimeToday = DateTime.formatDateTimeToday(track.getLastModifiedDate());
        if (StringUtils.isNullOrEmpty(formatEpisodeTimeAsRemaining)) {
            this.Source.setText(formatDateTimeToday);
        } else {
            sFormatBuilder.setLength(0);
            this.Source.setText(sFormatter.format("%s • %s", formatDateTimeToday, formatEpisodeTimeAsRemaining).toString());
        }
        int currentPlayState = track.getCurrentPlayState();
        int i = track == BeyondPodApplication.getInstance().playList().currentTrack() ? currentPlayState == 1 ? R.drawable.ic_marker_play : (currentPlayState == 3 || currentPlayState == 6) ? R.drawable.ic_marker_preparing : R.drawable.ic_marker_pause : 0;
        boolean hasTrack = BeyondPodApplication.getInstance().playList().hasTrack(track);
        boolean locked = track.locked();
        this.Source.setCompoundDrawablesWithIntrinsicBounds(i, 0, (locked && hasTrack) ? R.drawable.ic_marker_playlist_favorite : locked ? R.drawable.ic_marker_heart : hasTrack ? R.drawable.ic_marker_playlist : 0, 0);
    }

    private void adjustSourceRightPadding() {
        int i = ((RelativeLayout.LayoutParams) this.Title.getLayoutParams()).rightMargin;
        if (this.TBOverflow.getVisibility() == 0) {
            i += this._ToolbarHeight;
        }
        if (this.TBDownload.getVisibility() == 0) {
            i += this._ToolbarHeight;
        }
        ((RelativeLayout.LayoutParams) this.Source.getLayoutParams()).rightMargin = i;
    }
}
