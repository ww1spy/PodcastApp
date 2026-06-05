package mobi.beyondpod.ui.views.publishedepisodes.cards;

import android.content.Context;
import mobi.beyondpod.rsscore.Configuration;

/* loaded from: classes.dex */
public class PublishedEpisodeCardFactory {
    public static PublishedEpisodeCardBase buildEpisodeCard(Context context) {
        if (Configuration.publishedEpisodeCardSize() == 2) {
            return new PublishedEpisodeCardMedium(context);
        }
        if (Configuration.publishedEpisodeCardSize() == 3) {
            return new PublishedEpisodeCardSmall(context);
        }
        return new PublishedEpisodeCardLarge(context);
    }
}
