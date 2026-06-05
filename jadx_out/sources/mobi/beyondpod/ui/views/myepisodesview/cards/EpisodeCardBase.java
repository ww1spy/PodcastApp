package mobi.beyondpod.ui.views.myepisodesview.cards;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.Formatter;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.evo.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.core.volley.FadingNetworkImageViewTrack;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.base.DownloadProgressButton;
import mobi.beyondpod.ui.views.base.ProgressImageView;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public abstract class EpisodeCardBase {
    protected static StringBuilder sFormatBuilder = new StringBuilder();
    protected static Formatter sFormatter = new Formatter(sFormatBuilder, Locale.getDefault());
    public DownloadProgressButton TBDownload;
    public ImageView TBOverflow;
    public ImageView TBPlay;
    public ImageView TBPlaylist;
    public TextView TBTotal;
    protected int _CardNormal;
    protected int _CardPlayed;
    protected Context _Context;
    protected int _DescriptionNormal;
    protected int _DescriptionPlayed;
    protected int _TitleNormal;
    protected int _TitlePlayed;
    public View cardBase;
    public TextView description;
    public ProgressImageView image;
    public TextView source;
    public TextView title;

    public abstract View getCardRoot();

    public abstract void setButtonListeners(View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, View.OnClickListener onClickListener4);

    public abstract void setFaceListeners(View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener);

    protected abstract void wireItemData(ImageLoader imageLoader, Track track, boolean z);

    public EpisodeCardBase(Context context) {
        this._Context = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.Cards);
        this._CardNormal = obtainStyledAttributes.getColor(0, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_bg_normal));
        this._CardPlayed = obtainStyledAttributes.getColor(2, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_bg_played));
        this._TitleNormal = obtainStyledAttributes.getColor(8, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_title_normal));
        this._TitlePlayed = obtainStyledAttributes.getColor(10, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_title_played));
        this._DescriptionNormal = obtainStyledAttributes.getColor(3, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_description_normal));
        this._DescriptionPlayed = obtainStyledAttributes.getColor(5, ContextCompat.getColor(context, mobi.beyondpod.R.color.card_description_played));
        obtainStyledAttributes.recycle();
    }

    public void buildItem(ImageLoader imageLoader, Track track) {
        wireItemData(imageLoader, track, track.isPlayed());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wireEpisodePlayTime(Track track) {
        this.TBTotal.setText(UIUtils.formatEpisodeTimeAsRemaining(this._Context, track));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wirePlaylistButton(Track track) {
        this.TBPlaylist.setImageResource(BeyondPodApplication.getInstance().playList().hasTrack(track) ? mobi.beyondpod.R.drawable.ic_card_added_to_list : mobi.beyondpod.R.drawable.ic_card_add_to_list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wireEpisodeDescription(Track track, boolean z) {
        this.description.setText(StringUtils.isNullOrEmpty(track.trackDescription()) ? track.getParentFeed().getName() : track.trackDescription());
        this.description.setTextColor(z ? this._DescriptionPlayed : this._DescriptionNormal);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wireEpisodeTitle(Track track, boolean z) {
        this.title.setText(track.displayName());
        this.title.setTextColor(z ? this._TitlePlayed : this._TitleNormal);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wireEpisodeSource(Track track) {
        sFormatBuilder.setLength(0);
        if (Configuration.getActiveFeedFilter() == null) {
            this.source.setText(sFormatter.format("%s • %s", DateTime.formatDateTime(track.getLastModifiedDate()), track.getParentFeed().getName()).toString());
        } else {
            this.source.setText(DateTime.formatDateTime(track.getLastModifiedDate()));
        }
        this.source.setCompoundDrawablesWithIntrinsicBounds(track.locked() ? mobi.beyondpod.R.drawable.ic_marker_heart : 0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void assignTrackPrimaryImage(ImageLoader imageLoader, Track track) {
        this.image.setErrorImageResId(FadingNetworkImageViewTrack.getDefaultImage(track.contentType()));
        if (track.isFullyDownloaded()) {
            this.image.setTrack(track, imageLoader);
        } else {
            this.image.setFeed(track.getParentFeed(), imageLoader);
        }
        this.image.setProgress((int) Math.ceil(track.playedAsFraction() * 100.0f));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wirePlayPauseButton(Track track) {
        int currentPlayState = track.getCurrentPlayState();
        boolean z = (track.hasContentType() ? track.contentType() : 1) == 2;
        if (currentPlayState == 1) {
            this.TBPlay.setImageResource(mobi.beyondpod.R.drawable.ic_card_pause);
            return;
        }
        if ((currentPlayState == 3 || currentPlayState == 6) && track == BeyondPodApplication.getInstance().playList().currentTrack()) {
            this.TBPlay.setImageResource(mobi.beyondpod.R.drawable.ic_card_preparing);
            return;
        }
        if (currentPlayState == 7 || currentPlayState == 8 || currentPlayState == 9) {
            this.TBPlay.setImageResource(mobi.beyondpod.R.drawable.ic_card_play_error);
        } else if (track.isPlayed()) {
            this.TBPlay.setImageResource(z ? mobi.beyondpod.R.drawable.ic_card_played_video : mobi.beyondpod.R.drawable.ic_card_played);
        } else {
            this.TBPlay.setImageResource(z ? mobi.beyondpod.R.drawable.ic_card_play_video : mobi.beyondpod.R.drawable.ic_card_play);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void wireDownloadButton(Track track) {
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
