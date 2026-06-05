package mobi.beyondpod.rsscore.rss.parsers;

import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.rsscore.rss.parsers.ParserBase;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes.dex */
public class RdfFeedParser extends ParserBase {
    public static final String GOOGLE_ITEM_TAG = "tag:google.com,2005:reader/";

    public RdfFeedParser(RootParser rootParser) {
        super(rootParser);
        this._handlers.put("channel", new RdfChannelParser(this));
        this._handlers.put("item", new RdfItemParser(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase
    public void startHandlingEvents(String str, Attributes attributes) throws SAXException {
        parseData().ParsedFeedType = 4;
        super.startHandlingEvents(str, attributes);
    }

    FeedParseData parseData() {
        return ((RootParser) this.Parent).parseData;
    }

    /* loaded from: classes.dex */
    private static class RdfChannelParser extends ParserBase {
        public RdfChannelParser(RdfFeedParser rdfFeedParser) {
            super(rdfFeedParser);
            this._handlers.put(SettingsJsonConstants.PROMPT_TITLE_KEY, new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RdfFeedParser.RdfChannelParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RdfChannelParser.this.parseData().RssFeed.Title = sb.toString();
                }
            }));
            this._handlers.put("description", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RdfFeedParser.RdfChannelParser.2
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RdfChannelParser.this.parseData().RssFeed.Title = sb.toString();
                }
            }));
            this._handlers.put("link", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RdfFeedParser.RdfChannelParser.3
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RdfChannelParser.this.parseData().RssFeed.Link = sb.toString();
                }
            }));
        }

        FeedParseData parseData() {
            return ((RdfFeedParser) this.Parent).parseData();
        }
    }

    /* loaded from: classes.dex */
    private static class RdfItemParser extends ParserBase {
        RssFeedItem _Item;
        private ParserBase.SimpleElementParser.ElementHandler _OriginatingItemIdHandler;

        public RdfItemParser(RdfFeedParser rdfFeedParser) {
            super(rdfFeedParser);
            this._OriginatingItemIdHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RdfFeedParser.RdfItemParser.4
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RdfItemParser.this.currentRssItem().OriginatingItemId = sb.toString().replace("tag:google.com,2005:reader/", "");
                }
            };
            this._handlers.put(SettingsJsonConstants.PROMPT_TITLE_KEY, new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RdfFeedParser.RdfItemParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RdfItemParser.this.currentRssItem().Title = sb.toString();
                }
            }));
            this._handlers.put("link", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RdfFeedParser.RdfItemParser.2
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RdfItemParser.this.currentRssItem().Link = sb.toString();
                }
            }));
            this._handlers.put("id", new ParserBase.SimpleElementParser(this, this._OriginatingItemIdHandler));
            if (parseData().ParseLevel == 0) {
                this._handlers.put("description", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RdfFeedParser.RdfItemParser.3
                    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                    public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                        RdfItemParser.this.currentRssItem().Description = sb.toString();
                    }
                }));
            }
        }

        @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            handleEndOfRssFeedItem(parseData(), currentRssItem());
            this._Item = null;
            super.endElement(str, str2, str3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RssFeedItem currentRssItem() {
            if (this._Item == null) {
                this._Item = new RssFeedItem(parseData().RssFeed);
            }
            return this._Item;
        }

        FeedParseData parseData() {
            return ((RdfFeedParser) this.Parent).parseData();
        }
    }
}
