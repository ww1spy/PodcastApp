package mobi.beyondpod.ui.views.myepisodesview.cards;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.ui.core.volley.ImageLoader;
import mobi.beyondpod.ui.views.base.DownloadProgressButton;
import mobi.beyondpod.ui.views.base.ProgressImageView;

/* loaded from: classes.dex */
public class EpisodeCardMedium extends EpisodeCardBase {
    public EpisodeCardMedium(Context context) {
        super(context);
        inflateCard(getCardlayout());
    }

    protected void inflateCard(int i) {
        View inflate = View.inflate(this._Context, i, null);
        this.cardBase = inflate;
        this.image = (ProgressImageView) inflate.findViewById(R.id.image);
        this.image.setFadeInImage(false);
        this.image.setMaxImageSize(this._Context.getResources().getDimensionPixelSize(R.dimen.card_episode_image_width), this._Context.getResources().getDimensionPixelSize(R.dimen.card_episode_image_height));
        this.title = (TextView) inflate.findViewById(R.id.title);
        this.source = (TextView) inflate.findViewById(R.id.source);
        this.TBTotal = (TextView) inflate.findViewById(R.id.playPosition);
        this.TBDownload = (DownloadProgressButton) inflate.findViewById(R.id.tb_download);
        this.TBPlay = (ImageView) inflate.findViewById(R.id.tb_playpause);
        this.TBPlaylist = (ImageView) inflate.findViewById(R.id.tb_playlist);
        this.TBOverflow = (ImageView) inflate.findViewById(R.id.tb_overflow);
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

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public void setButtonListeners(View.OnClickListener onClickListener, View.OnClickListener onClickListener2, View.OnClickListener onClickListener3, View.OnClickListener onClickListener4) {
        this.TBPlay.setOnClickListener(onClickListener);
        this.TBDownload.setOnClickListener(onClickListener2);
        this.TBPlaylist.setOnClickListener(onClickListener3);
        this.TBOverflow.setOnClickListener(onClickListener4);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public View getCardRoot() {
        return this.cardBase;
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public void setFaceListeners(View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        this.cardBase.setOnClickListener(onClickListener);
        this.cardBase.setOnLongClickListener(onLongClickListener);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public void wireItemData(ImageLoader imageLoader, Track track, boolean z) {
        this.cardBase.setBackgroundColor(z ? this._CardPlayed : this._CardNormal);
        wireEpisodeSource(track);
        wireEpisodeTitle(track, z);
        wirePlaylistButton(track);
        wireEpisodePlayTime(track);
        assignTrackPrimaryImage(imageLoader, track);
        wirePlayPauseButton(track);
        wireDownloadButton(track);
    }
}
