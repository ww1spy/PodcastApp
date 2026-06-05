package mobi.beyondpod.rsscore.rss.parsers;

import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import org.xml.sax.XMLReader;

/* loaded from: classes.dex */
public class RootParser extends ParserBase {
    public FeedParseData parseData;

    public RootParser(XMLReader xMLReader, FeedParseData feedParseData) {
        super(xMLReader);
        this.parseData = feedParseData;
        this._handlers.put(RssFeed.IMG_RSS_KEY, new RssFeedParser(this));
        this._handlers.put("feed", new AtomFeedParser(this));
        this._handlers.put("opml", new OpmlFeedParser(this));
        this._handlers.put("rdf:RDF", new RdfFeedParser(this));
    }
}
