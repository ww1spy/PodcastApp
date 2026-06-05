package mobi.beyondpod.rsscore.rss.parsers;

import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.rsscore.rss.parsers.ParserBase;
import mobi.beyondpod.rsscore.rss.parsers.RssFeedParser;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes.dex */
public class AtomFeedParser extends ParserBase {
    public static final String GOOGLE_ITEM_TAG = "tag:google.com,2005:reader/";
    private ParserBase.SimpleElementParser.ElementHandler _PubDateHandler;

    public AtomFeedParser(RootParser rootParser) {
        super(rootParser);
        this._PubDateHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.3
            @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
            public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                if (AtomFeedParser.this.parseData().RssFeed.PubDate == null) {
                    AtomFeedParser.this.parseData().RssFeed.PubDate = DateTime.tryParseRFC822Time(sb.toString(), null);
                }
            }
        };
        this._handlers.put(SettingsJsonConstants.PROMPT_TITLE_KEY, new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.1
            @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
            public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                AtomFeedParser.this.parseData().RssFeed.Title = sb.toString();
            }
        }));
        this._handlers.put("link", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.2
            @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
            public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                String value = attributesImpl.getValue("", "rel");
                String value2 = attributesImpl.getValue("", "href");
                if (value != null && "self".equals(value) && value2 != null) {
                    AtomFeedParser.this.parseData().RssFeed.IsSuspectedNotSubscribedInGoogleReader = true;
                }
                if (StringUtils.isNullOrEmpty(AtomFeedParser.this.parseData().RssFeed.Link)) {
                    if (value != null && "alternate".equals(value) && !StringUtils.isNullOrEmpty(value2)) {
                        AtomFeedParser.this.parseData().RssFeed.Link = value2;
                    } else {
                        AtomFeedParser.this.parseData().RssFeed.Link = sb.toString();
                    }
                }
            }
        }));
        this._handlers.put("updated", new ParserBase.SimpleElementParser(this, this._PubDateHandler));
        this._handlers.put("item", new AtomItemParser(this));
        this._handlers.put("entry", new AtomItemParser(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase
    public void startHandlingEvents(String str, Attributes attributes) throws SAXException {
        parseData().ParsedFeedType = 2;
        if (attributes != null) {
            String value = attributes.getValue("http://www.google.com/schemas/reader/atom/", "dir");
            parseData().RssFeed.RTL = value != null && "rtl".equals(value);
        }
        super.startHandlingEvents(str, attributes);
    }

    FeedParseData parseData() {
        return ((RootParser) this.Parent).parseData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AtomItemParser extends ParserBase {
        RssFeedItem _Item;
        private ParserBase.SimpleElementParser.ElementHandler _OriginatingItemIdHandler;
        private ParserBase.SimpleElementParser.ElementHandler _categoryHandler;
        private ParserBase.SimpleElementParser.ElementHandler _dateHandler;
        private ParserBase.SimpleElementParser.ElementHandler _linkHandler;
        private ParserBase.SimpleElementParser.ElementHandler _mediaRssContentHandler;

        public AtomItemParser(AtomFeedParser atomFeedParser) {
            super(atomFeedParser);
            this._dateHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemParser.4
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    String sb2 = sb.toString();
                    if (StringUtils.isNullOrEmpty(sb2)) {
                        return;
                    }
                    if ("updated".equals(str)) {
                        if (StringUtils.isNullOrEmpty(AtomItemParser.this.currentRssItem().OriginalPubDateString)) {
                            AtomItemParser.this.currentRssItem().OriginalPubDateString = sb2;
                            return;
                        }
                        return;
                    }
                    AtomItemParser.this.currentRssItem().OriginalPubDateString = sb2;
                }
            };
            this._OriginatingItemIdHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemParser.5
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    AtomItemParser.this.currentRssItem().OriginatingItemId = sb.toString().replace("tag:google.com,2005:reader/", "");
                    AtomItemParser.this.currentRssItem().Guid = sb.toString().trim();
                }
            };
            this._linkHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemParser.6
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    String value = attributesImpl.getValue("", "href");
                    String value2 = attributesImpl.getValue("", "rel");
                    if (StringUtils.isNullOrEmpty(value2)) {
                        return;
                    }
                    if ("alternate".equals(value2)) {
                        AtomItemParser.this.currentRssItem().Link = value;
                        return;
                    }
                    if ("enclosure".equals(value2)) {
                        if (AtomItemParser.this.parseData().ParseLevel == 0 || AtomItemParser.this.parseData().ParseLevel == 2) {
                            RssEnclosure rssEnclosure = new RssEnclosure(AtomItemParser.this.parseData().EnclosureDownloadPath, AtomItemParser.this.parseData().ForceUniqueEnclosureNames);
                            rssEnclosure.Url = value;
                            String value3 = attributesImpl.getValue("", "length");
                            if (!StringUtils.isNullOrEmpty(value3)) {
                                rssEnclosure.setEnclosureFileLength(StringUtils.tryParseLongFromString(value3, 0L));
                            }
                            String value4 = attributesImpl.getValue("", "type");
                            if (!StringUtils.isNullOrEmpty(value4)) {
                                rssEnclosure.Type = value4;
                            }
                            AtomItemParser.this.currentRssItem().setEnclosure(rssEnclosure);
                        }
                    }
                }
            };
            this._mediaRssContentHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemParser.7
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    AtomItemParser.this.currentRssItem().setEnclosure(MediaRssGroupParser.parseEnclosure(AtomItemParser.this.parseData(), attributesImpl));
                }
            };
            this._categoryHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemParser.8
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    String value = attributesImpl.getValue("", "label");
                    if (StringUtils.isNullOrEmpty(value)) {
                        return;
                    }
                    if ("read".equals(value)) {
                        AtomItemParser.this.currentRssItem().setGoogleRead();
                    } else if ("starred".equals(value)) {
                        AtomItemParser.this.currentRssItem().setGoogleStarred();
                    } else if ("reading-list".equals(value)) {
                        AtomItemParser.this.currentRssItem().setInGoogleReadingList();
                    }
                }
            };
            this._handlers.put(SettingsJsonConstants.PROMPT_TITLE_KEY, new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    AtomItemParser.this.currentRssItem().Title = AtomItemParser.this.currentRssItem().parentFeed().RTL ? ParserBase.cleanRTLDivs(sb.toString()) : sb.toString();
                }
            }));
            this._handlers.put("link", new ParserBase.SimpleElementParser(this, this._linkHandler));
            this._handlers.put("updated", new ParserBase.SimpleElementParser(this, this._dateHandler));
            this._handlers.put("published", new ParserBase.SimpleElementParser(this, this._dateHandler));
            this._handlers.put("id", new ParserBase.SimpleElementParser(this, this._OriginatingItemIdHandler));
            this._handlers.put("source", new AtomItemSourceParser(this));
            this._handlers.put("category", new ParserBase.SimpleElementParser(this, this._categoryHandler));
            if (parseData().ParseLevel == 2 || parseData().ParseLevel == 0) {
                this._handlers.put("media:content", new ParserBase.SimpleElementParser(this, this._mediaRssContentHandler));
                this._handlers.put("media:group", new MediaRssGroupParser(this));
            }
            if (parseData().ParseLevel == 0) {
                this._handlers.put("summary", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemParser.2
                    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                    public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                        AtomItemParser.this.currentRssItem().Description = sb.toString();
                    }
                }));
                this._handlers.put("content", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemParser.3
                    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                    public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                        AtomItemParser.this.currentRssItem().Description = sb.toString();
                    }
                }));
            }
        }

        @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            String value = this._CurrentElementAttributes.getValue("http://www.google.com/schemas/reader/atom/", "is-read-state-locked");
            if (!StringUtils.isNullOrEmpty(value) && "true".equals(value)) {
                currentRssItem().IsGoogleReadLocked = true;
            }
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
            return ((AtomFeedParser) this.Parent).parseData();
        }
    }

    /* loaded from: classes.dex */
    private static class AtomItemSourceParser extends ParserBase {
        public AtomItemSourceParser(AtomItemParser atomItemParser) {
            super(atomItemParser);
            this._handlers.put("id", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemSourceParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    AtomItemSourceParser.this.currentRssItem().OriginatingFeed = sb.toString().replace("tag:google.com,2005:reader/", "");
                }
            }));
            this._handlers.put(SettingsJsonConstants.PROMPT_TITLE_KEY, new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.AtomItemSourceParser.2
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    AtomItemSourceParser.this.currentRssItem().OriginatingFeedTitle = AtomItemSourceParser.this.currentRssItem().parentFeed().RTL ? ParserBase.cleanRTLDivs(sb.toString()) : sb.toString();
                }
            }));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RssFeedItem currentRssItem() {
            return ((AtomItemParser) this.Parent).currentRssItem();
        }
    }

    /* loaded from: classes.dex */
    private static class MediaRssGroupParser extends ParserBase {
        private ParserBase.SimpleElementParser.ElementHandler _mediaRssContentHandler;

        public MediaRssGroupParser(AtomItemParser atomItemParser) {
            super(atomItemParser);
            this._mediaRssContentHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.AtomFeedParser.MediaRssGroupParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    MediaRssGroupParser.this.currentRssItem().setEnclosure(MediaRssGroupParser.parseEnclosure(MediaRssGroupParser.this.parseData(), attributesImpl));
                }
            };
            this._handlers.put("media:content", new ParserBase.SimpleElementParser(this, this._mediaRssContentHandler));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RssFeedItem currentRssItem() {
            return ((AtomItemParser) this.Parent).currentRssItem();
        }

        FeedParseData parseData() {
            return ((AtomItemParser) this.Parent).parseData();
        }

        public static RssEnclosure parseEnclosure(FeedParseData feedParseData, AttributesImpl attributesImpl) {
            return RssFeedParser.MediaRssContentParser.parseEnclosure(feedParseData, attributesImpl);
        }
    }
}
