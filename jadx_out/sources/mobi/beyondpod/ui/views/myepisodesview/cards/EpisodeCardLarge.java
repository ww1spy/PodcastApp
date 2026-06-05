package mobi.beyondpod.ui.views.myepisodesview.cards;

import android.content.Context;
import android.widget.TextView;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.ui.core.volley.ImageLoader;

/* loaded from: classes.dex */
public class EpisodeCardLarge extends EpisodeCardMedium {
    public EpisodeCardLarge(Context context) {
        super(context);
        this.description = (TextView) getCardRoot().findViewById(R.id.description);
    }

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardMedium
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

    @Override // mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardMedium, mobi.beyondpod.ui.views.myepisodesview.cards.EpisodeCardBase
    public void wireItemData(ImageLoader imageLoader, Track track, boolean z) {
        super.wireItemData(imageLoader, track, z);
        wireEpisodeDescription(track, z);
    }
}
