package mobi.beyondpod.ui.views.myepisodesview.cards;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.base.DownloadProgressButton;
import mobi.beyondpod.ui.views.base.ProgressImageView;
import mobi.beyondpod.ui.views.base.UIUtils;

/* loaded from: classes.dex */
public class EpisodeCardSmall extends EpisodeCardBase {
    private int _ToolbarHeight;

    protected int getCardlayout() {
        return R.layout.episode_card_type_1_small;
    }

    public EpisodeCardSmall(Context context) {
        super(context);
        inflateCard(getCardlayout());
        this._ToolbarHeight = context.getResources().getDimensionPixelSize(R.dimen.episode_toolbar_height);
    }

    protected void inflateCard(int i) {
        View inflate = View.inflate(this._Context, i, null);
        this.cardBase = inflate;
        this.image = (ProgressImageView) inflate.findViewById(R.id.image);
        this.image.setFadeInImage(false);
        this.image.setMaxImageSize(this._Context.getResources().getDimensionPixelSize(R.dimen.card_small_episode_image_width), this._Context.getResources().getDimensionPixelSize(R.dimen.card_small_episode_image_height));
        this.title = (TextView) inflate.findViewById(R.id.title);
        this.source = (TextView) inflate.findViewById(R.id.source);
        this.TBDownload = (DownloadProgressButton) inflate.findViewById(R.id.tb_download);
        this.TBOverflow = (ImageView) inflate.findViewById(R.id.tb_overflow);
        inflate.setTag(this);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public void setButtonListeners(View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, View.OnClickListener onClickListener4) {
        this.cardBase.setOnClickListener(onClickListener);
        this.TBDownload.setOnClickListener(onClickListener2);
        this.TBOverflow.setOnClickListener(onClickListener4);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public View getCardRoot() {
        return this.cardBase;
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public void setFaceListeners(View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        this.cardBase.setOnLongClickListener(onLongClickListener);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public void wireItemData(ImageLoader imageLoader, Track track, boolean z) {
        this.cardBase.setBackgroundColor(z ? this._CardPlayed : this._CardNormal);
        wireDateAndDuration(track);
        wireEpisodeTitle(track, z);
        assignTrackPrimaryImage(imageLoader, track);
        wireDownloadButton(track);
        adjustSourceRightPadding();
    }

    private void wireDateAndDuration(Track track) {
        String formatEpisodeTimeAsRemaining = UIUtils.formatEpisodeTimeAsRemaining(this._Context, track);
        String formatDateTimeToday = DateTime.formatDateTimeToday(track.getLastModifiedDate());
        if (StringUtils.isNullOrEmpty(formatEpisodeTimeAsRemaining)) {
            this.source.setText(formatDateTimeToday);
        } else {
            sFormatBuilder.setLength(0);
            this.source.setText(sFormatter.format("%s • %s", formatDateTimeToday, formatEpisodeTimeAsRemaining).toString());
        }
        int currentPlayState = track.getCurrentPlayState();
        int i = track == BeyondPodApplication.getInstance().playList().currentTrack() ? currentPlayState == 1 ? R.drawable.ic_marker_play : (currentPlayState == 3 || currentPlayState == 6) ? R.drawable.ic_marker_preparing : R.drawable.ic_marker_pause : 0;
        boolean hasTrack = BeyondPodApplication.getInstance().playList().hasTrack(track);
        boolean locked = track.locked();
        this.source.setCompoundDrawablesWithIntrinsicBounds(i, 0, (locked && hasTrack) ? R.drawable.ic_marker_playlist_favorite : locked ? R.drawable.ic_marker_heart : hasTrack ? R.drawable.ic_marker_playlist : 0, 0);
    }

    private void adjustSourceRightPadding() {
        int i = ((RelativeLayout.LayoutParams) this.title.getLayoutParams()).rightMargin;
        if (this.TBOverflow.getVisibility() == 0) {
            i += this._ToolbarHeight;
        }
        if (this.TBDownload.getVisibility() == 0) {
            i += this._ToolbarHeight;
        }
        ((RelativeLayout.LayoutParams) this.source.getLayoutParams()).rightMargin = i;
    }
}
