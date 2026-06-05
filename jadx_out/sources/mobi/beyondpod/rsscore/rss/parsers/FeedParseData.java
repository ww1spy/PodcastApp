package mobi.beyondpod.rsscore.rss.parsers;

import java.util.UUID;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.rsscore.rss.parsers.ParserUtils;
import org.xml.sax.SAXException;

/* loaded from: classes.dex */
public class FeedParseData {
    public static final int FeedParseLevel_Complete = 0;
    public static final int FeedParseLevel_ItemAndEnclosureEssentials = 2;
    public static final int FeedParseLevel_ItemEssentials = 1;
    public static final int FeedType_Atom = 2;
    public static final int FeedType_FEEDLY = 6;
    public static final int FeedType_HTML = 5;
    public static final int FeedType_OPML = 3;
    public static final int FeedType_RDF = 4;
    public static final int FeedType_RSS = 1;
    public static final int FeedType_UNKNOWN = -1;
    public long CachedFileSize;
    public int PageSize;
    public int ParseLevel;
    public int StartAtItem;
    private ParseListener _ParseListener;
    public int MaxItemsToParse = Configuration.DBGMaxFeedPosts();
    public String EnclosureDownloadPath = "";
    public boolean ForceUniqueEnclosureNames = false;
    public final RssFeed RssFeed = new RssFeed();
    public final Feed Feed = new Feed(UUID.randomUUID(), (Feed) null);
    public int ParsedFeedType = -1;
    public boolean LoadTempFeed = false;
    public Exception ParseException = null;
    public long ParseDuration = 0;

    /* loaded from: classes.dex */
    public interface ParseListener {
        void onItemParsed(RssFeedItem rssFeedItem);

        void onParseCompleted(RssFeed rssFeed);

        void onParseStarted(RssFeed rssFeed);
    }

    public static boolean isRssFeedType(int i) {
        return i == 1 || i == 2 || i == 4 || i == 6;
    }

    public FeedParseData(int i) {
        this.ParseLevel = 0;
        this.ParseLevel = i;
    }

    public long averageItemSize() {
        if (this.RssFeed == null || this.RssFeed.Items.size() == 0 || this.CachedFileSize == 0) {
            return 0L;
        }
        return this.CachedFileSize / this.RssFeed.Items.size();
    }

    public void setParseListener(ParseListener parseListener) {
        this._ParseListener = parseListener;
    }

    public void notifyParseStarted() {
        if (this._ParseListener != null) {
            this._ParseListener.onParseStarted(this.RssFeed);
        }
    }

    public void notifyItemParsed(RssFeedItem rssFeedItem) {
        if (this._ParseListener != null) {
            this._ParseListener.onItemParsed(rssFeedItem);
        }
    }

    public void notifyParseCompleted() {
        if (this._ParseListener != null) {
            this._ParseListener.onParseCompleted(this.RssFeed);
        }
    }

    public boolean hasParseFailed() {
        if (this.ParseException == null) {
            return false;
        }
        if (this.ParseException instanceof SAXException) {
            SAXException sAXException = (SAXException) this.ParseException;
            return sAXException.getException() == null || !(sAXException.getException() instanceof ParserUtils.TooManyItemsException);
        }
        return true;
    }
}
