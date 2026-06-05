package mobi.beyondpod.ui.views.publishedepisodes.cards;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.base.DownloadProgressButton;
import mobi.beyondpod.ui.views.base.ProgressImageView;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class PublishedEpisodeCardMedium extends PublishedEpisodeCardBase {
    public View EpisodeTB;
    public View PublisherTB;
    public TextView TBAddToMyEpisodes;
    public ImageView TBPlay;
    public ImageView TBPlaylist;
    public ImageView TBPublisherPlay;
    public TextView TBTotal;
    private int _TitleLinesEpisode;
    private int _TitleLinesText;

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildPreviewEpisodeViewItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader) {
    }

    protected void wireEpisodeDescriptionColor(int i) {
    }

    public PublishedEpisodeCardMedium(Context context) {
        super(context);
        inflateCard(getCardlayout());
        this._TitleLinesEpisode = context.getResources().getInteger(R.integer.card_title_maxLines);
        this._TitleLinesText = context.getResources().getInteger(R.integer.card_title_text_item_maxLines_med_card);
    }

    protected void inflateCard(int i) {
        View inflate = View.inflate(this._Context, i, null);
        this.CardBase = inflate;
        this.Image = (ProgressImageView) inflate.findViewById(R.id.image);
        this.Image.setFadeInImage(false);
        this.Image.setMaxImageSize(this._Context.getResources().getDimensionPixelSize(R.dimen.card_episode_image_width), this._Context.getResources().getDimensionPixelSize(R.dimen.card_episode_image_height));
        this.Title = (TextView) inflate.findViewById(R.id.title);
        this.Source = (TextView) inflate.findViewById(R.id.source);
        this.TBTotal = (TextView) inflate.findViewById(R.id.playPosition);
        this.TBDownload = (DownloadProgressButton) inflate.findViewById(R.id.tb_download);
        this.TBPlay = (ImageView) inflate.findViewById(R.id.tb_playpause);
        this.TBPublisherPlay = (ImageView) inflate.findViewById(R.id.tb_publisher_play);
        this.TBPlaylist = (ImageView) inflate.findViewById(R.id.tb_playlist);
        this.TBOverflow = (ImageView) inflate.findViewById(R.id.tb_overflow);
        this.TBPublisherOverfolw = (ImageView) inflate.findViewById(R.id.tb_publisher_overflow);
        this.EpisodeTB = inflate.findViewById(R.id.episodeToolbar);
        this.PublisherTB = inflate.findViewById(R.id.publisherTollbar);
        this.TBAddToMyEpisodes = (TextView) inflate.findViewById(R.id.tbAddToMyEpisodes);
        inflate.setTag(this);
    }

    protected int getCardlayout() {
        switch (this._Context.getResources().getInteger(R.integer.card_layout_type)) {
            case 2:
                return R.layout.episode_card_type_2_med;
            case 3:
                return R.layout.episode_card_type_3_med;
            default:
                return R.layout.episode_card_type_1_med;
        }
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
        this.EpisodeTB.setVisibility(8);
        this.PublisherTB.setVisibility(8);
        this.Title.setMaxLines(this._TitleLinesText);
    }

    @Override // mobi.beyondpod.ui.views.publishedepisodes.cards.PublishedEpisodeCardBase
    public void buildEpisodeViewItem(RssFeedItem rssFeedItem, Feed feed, ImageLoader imageLoader, View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, View.OnClickListener onClickListener4, View.OnClickListener onClickListener5, View.OnClickListener onClickListener6) {
        char c;
        MediaFile.MediaFileType fileType;
        boolean read = rssFeedItem.getRead();
        buildCommonViewItem(rssFeedItem);
        RssEnclosure enclosure = rssFeedItem.enclosure();
        Track trackByNameOrUrl = feed.tracks().getTrackByNameOrUrl(enclosure.fileName(), enclosure.Url);
        int fileTypeForMimeType = MediaFile.getFileTypeForMimeType(enclosure.Type);
        if (fileTypeForMimeType == 0 && (fileType = MediaFile.getFileType(enclosure.fileName())) != null) {
            fileTypeForMimeType = fileType.fileType;
        }
        if (MediaFile.isVideoFileType(fileTypeForMimeType)) {
            c = 2;
        } else {
            c = MediaFile.isImageFileType(fileTypeForMimeType) ? (char) 3 : (char) 1;
        }
        boolean z = c == 2;
        int i = R.drawable.ic_marker_heart;
        if (trackByNameOrUrl == null) {
            this.EpisodeTB.setVisibility(8);
            this.PublisherTB.setVisibility(0);
            if (enclosure.isEnclosureInHistory()) {
                this.CardBase.setBackgroundColor(this._CardNotMy);
                this.Title.setTextColor(this._TitleNotMy);
                wireEpisodeDescriptionColor(this._DescriptionNotMy);
                this.TBAddToMyEpisodes.setText(R.string.published_list_redownload_episode);
                this.TBAddToMyEpisodes.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_action_pub_ep_replay, 0, 0, 0);
                this.TBPublisherOverfolw.setVisibility(8);
                this.TBPublisherPlay.setVisibility(8);
            } else {
                this.CardBase.setBackgroundColor(this._CardNormal);
                this.Title.setTextColor(this._TitleNormal);
                wireEpisodeDescriptionColor(this._DescriptionNormal);
                this.TBAddToMyEpisodes.setText(R.string.published_list_download_episode);
                this.TBAddToMyEpisodes.setCompoundDrawablesWithIntrinsicBounds(R.drawable.ic_action_pub_ep_download, 0, 0, 0);
                this.TBPublisherOverfolw.setVisibility(0);
                this.TBPublisherPlay.setVisibility(0);
                this.TBPublisherPlay.setImageResource(z ? R.drawable.ic_card_play_video : R.drawable.ic_card_play);
                this.TBPublisherPlay.setOnClickListener(onClickListener2);
            }
            TextView textView = this.Source;
            if (!rssFeedItem.getStarred()) {
                i = 0;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
        } else {
            this.EpisodeTB.setVisibility(0);
            this.PublisherTB.setVisibility(8);
            this.TBPlay.setOnClickListener(onClickListener2);
            wireDownloadButton(trackByNameOrUrl);
            wirePlayButton(trackByNameOrUrl, z, enclosure);
            this.CardBase.setBackgroundColor(trackByNameOrUrl.isPlayed() ? this._CardPlayed : this._CardNormal);
            this.Title.setTextColor(trackByNameOrUrl.isPlayed() ? this._TitlePlayed : this._TitleNormal);
            wireEpisodeDescriptionColor(trackByNameOrUrl.isPlayed() ? this._DescriptionPlayed : this._DescriptionNormal);
            TextView textView2 = this.Source;
            if (!trackByNameOrUrl.locked()) {
                i = 0;
            }
            textView2.setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
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
        this.TBDownload.setOnClickListener(onClickListener3);
        this.TBPlaylist.setOnClickListener(onClickListener4);
        this.TBOverflow.setOnClickListener(onClickListener5);
        this.TBPublisherOverfolw.setOnClickListener(onClickListener5);
        this.TBAddToMyEpisodes.setOnClickListener(onClickListener3);
    }

    private void wirePlayButton(Track track, boolean z, RssEnclosure rssEnclosure) {
        String enclosureSizeAsString;
        int currentPlayState = track.getCurrentPlayState();
        if (currentPlayState == 1) {
            this.TBPlay.setImageResource(R.drawable.ic_card_pause);
        } else if ((currentPlayState == 3 || currentPlayState == 6) && track == BeyondPodApplication.getInstance().playList().currentTrack()) {
            this.TBPlay.setImageResource(R.drawable.ic_card_preparing);
        } else if (currentPlayState == 7 || currentPlayState == 8 || currentPlayState == 9) {
            this.TBPlay.setImageResource(R.drawable.ic_card_play_error);
        } else if (track.isPlayed()) {
            this.TBPlay.setImageResource(z ? R.drawable.ic_card_played_video : R.drawable.ic_card_played);
        } else {
            this.TBPlay.setImageResource(z ? R.drawable.ic_card_play_video : R.drawable.ic_card_play);
        }
        this.TBPlaylist.setImageResource(BeyondPodApplication.getInstance().playList().hasTrack(track) ? R.drawable.ic_card_added_to_list : R.drawable.ic_card_add_to_list);
        if (track == null || track.getTotalTime() <= 0) {
            enclosureSizeAsString = (rssEnclosure.enclosureFileLength() == null || rssEnclosure.enclosureFileLength().longValue() < 102400) ? "" : rssEnclosure.enclosureSizeAsString();
            if (StringUtils.isNullOrEmpty(enclosureSizeAsString) && rssEnclosure.Duration > 0) {
                enclosureSizeAsString = CoreHelper.formatTimeAsString(rssEnclosure.Duration);
            }
        } else {
            enclosureSizeAsString = UIUtils.formatEpisodeTimeAsRemaining(this._Context, track);
        }
        this.TBTotal.setText(enclosureSizeAsString);
    }
}
