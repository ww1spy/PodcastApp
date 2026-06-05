package mobi.beyondpod.rsscore.rss.parsers;

import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;

/* loaded from: classes.dex */
public class ParserUtils {

    /* loaded from: classes.dex */
    public static class TooManyItemsException extends Exception {
    }

    public static void handleEndOfRssFeedItem(FeedParseData feedParseData, RssFeedItem rssFeedItem) {
        RssEnclosure enclosure;
        rssFeedItem.itemID();
        if (Configuration.showContentListPostImages()) {
            rssFeedItem.itemImageUrls();
        }
        if (!StringUtils.isNullOrEmpty(rssFeedItem.EnclosureDuration) && (enclosure = rssFeedItem.enclosure()) != null && enclosure.Duration == 0) {
            enclosure.Duration = parseDuration(rssFeedItem.EnclosureDuration);
        }
        feedParseData.RssFeed.Items.add(rssFeedItem);
        feedParseData.notifyItemParsed(rssFeedItem);
    }

    public static long parseDuration(String str) {
        String[] split = str.split(":");
        long safeParseLong = 0 + StringUtils.safeParseLong(split[0], 0L);
        if (split.length <= 1) {
            return safeParseLong;
        }
        long safeParseLong2 = (safeParseLong * 60) + StringUtils.safeParseLong(split[1], 0L);
        return split.length > 2 ? (safeParseLong2 * 60) + StringUtils.safeParseLong(split[2], 0L) : safeParseLong2;
    }
}
