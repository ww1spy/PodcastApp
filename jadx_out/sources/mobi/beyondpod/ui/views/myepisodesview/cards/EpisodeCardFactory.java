package mobi.beyondpod.ui.views.myepisodesview.cards;

import android.content.Context;
import mobi.beyondpod.rsscore.Configuration;

/* loaded from: classes.dex */
public class EpisodeCardFactory {
    public static EpisodeCardBase buildEpisodeCard(Context context) {
        if (Configuration.episodeCardSize() == 2) {
            return new EpisodeCardMedium(context);
        }
        if (Configuration.episodeCardSize() == 3) {
            return new EpisodeCardSmall(context);
        }
        return new EpisodeCardLarge(context);
    }
}
