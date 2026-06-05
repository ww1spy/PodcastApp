package mobi.beyondpod.rsscore.rss.parsers;

import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.UUID;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.MediaFile;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.rsscore.rss.parsers.ParserBase;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes.dex */
public class RssFeedParser extends ParserBase {
    public RssFeedParser(RootParser rootParser) {
        super(rootParser);
        this._handlers.put("channel", new ChannelParser(this));
    }

    FeedParseData parseData() {
        return ((RootParser) this.Parent).parseData;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase
    public void startHandlingEvents(String str, Attributes attributes) throws SAXException {
        parseData().ParsedFeedType = 1;
        super.startHandlingEvents(str, attributes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ChannelParser extends ParserBase {
        private ParserBase.SimpleElementParser.ElementHandler _PubDateHandler;
        private ParserBase.SimpleElementParser.ElementHandler _iTunesImageHandler;

        public ChannelParser(RssFeedParser rssFeedParser) {
            super(rssFeedParser);
            this._PubDateHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.ChannelParser.4
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    if (ChannelParser.this.parseData().RssFeed.PubDate == null) {
                        ChannelParser.this.parseData().RssFeed.PubDate = DateTime.tryParseRFC822Time(sb.toString(), null);
                    }
                }
            };
            this._iTunesImageHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.ChannelParser.5
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    String value = attributesImpl.getValue("", "href");
                    if (StringUtils.isNullOrEmpty(value)) {
                        return;
                    }
                    ChannelParser.this.parseData().RssFeed.FeedImageLinks.put(RssFeed.IMG_ITUNES_KEY, value);
                }
            };
            this._handlers.put(SettingsJsonConstants.PROMPT_TITLE_KEY, new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.ChannelParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    ChannelParser.this.parseData().RssFeed.Title = sb.toString();
                }
            }));
            this._handlers.put("link", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.ChannelParser.2
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    ChannelParser.this.parseData().RssFeed.Link = sb.toString();
                }
            }));
            this._handlers.put("description", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.ChannelParser.3
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    ChannelParser.this.parseData().RssFeed.Description = sb.toString();
                }
            }));
            this._handlers.put("lastBuildDate", new ParserBase.SimpleElementParser(this, this._PubDateHandler));
            this._handlers.put("pubDate", new ParserBase.SimpleElementParser(this, this._PubDateHandler));
            this._handlers.put("itunes:image", new ParserBase.SimpleElementParser(this, this._iTunesImageHandler));
            this._handlers.put("image", new ImageParser(this));
            this._handlers.put("item", new RssItemParser(this));
        }

        FeedParseData parseData() {
            return ((RssFeedParser) this.Parent).parseData();
        }
    }

    /* loaded from: classes.dex */
    private static class ImageParser extends ParserBase {
        public ImageParser(final ChannelParser channelParser) {
            super(channelParser);
            this._handlers.put("url", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.ImageParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    channelParser.parseData().RssFeed.FeedImageLinks.put(RssFeed.IMG_RSS_KEY, sb.toString());
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class RssItemParser extends ParserBase {
        RssFeedItem _Item;
        private ParserBase.SimpleElementParser.ElementHandler _enclosureHandler;
        private ParserBase.SimpleElementParser.ElementHandler _mediaThumbnailHandler;

        public RssItemParser(ChannelParser channelParser) {
            super(channelParser);
            this._enclosureHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.11
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RssEnclosure rssEnclosure = new RssEnclosure(RssItemParser.this.parseData().EnclosureDownloadPath, RssItemParser.this.parseData().ForceUniqueEnclosureNames);
                    String value = attributesImpl.getValue("", "url");
                    if (!StringUtils.isNullOrEmpty(value)) {
                        rssEnclosure.Url = value;
                    }
                    String value2 = attributesImpl.getValue("", "href");
                    if (!StringUtils.isNullOrEmpty(value2) && StringUtils.isNullOrEmpty(rssEnclosure.Url)) {
                        rssEnclosure.Url = value2;
                    }
                    String value3 = attributesImpl.getValue("", "length");
                    if (!StringUtils.isNullOrEmpty(value3)) {
                        rssEnclosure.setEnclosureFileLength(StringUtils.tryParseLongFromString(value3, 0L));
                    }
                    String value4 = attributesImpl.getValue("", "type");
                    if (!StringUtils.isNullOrEmpty(value4)) {
                        rssEnclosure.Type = value4;
                    }
                    RssItemParser.this.currentRssItem().setEnclosure(rssEnclosure);
                }
            };
            this._mediaThumbnailHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.12
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RssFeedItem.RssItemImage rssItemImage = new RssFeedItem.RssItemImage();
                    String value = attributesImpl.getValue("", "url");
                    if (!StringUtils.isNullOrEmpty(value)) {
                        rssItemImage.Url = value;
                    }
                    String value2 = attributesImpl.getValue("", SettingsJsonConstants.ICON_WIDTH_KEY);
                    if (!StringUtils.isNullOrEmpty(value2)) {
                        rssItemImage.Width = StringUtils.tryParseIntFromString(value2, 0).intValue();
                    }
                    String value3 = attributesImpl.getValue("", SettingsJsonConstants.ICON_HEIGHT_KEY);
                    if (!StringUtils.isNullOrEmpty(value3)) {
                        rssItemImage.Height = StringUtils.tryParseIntFromString(value3, 0).intValue();
                    }
                    if (rssItemImage.IsValid()) {
                        RssItemParser.this.currentRssItem().Image = rssItemImage;
                        if (RssItemParser.this.currentRssItem().parentFeed().getFeedImageLink() == null) {
                            RssItemParser.this.currentRssItem().parentFeed().FeedImageLinks.put(RssFeed.IMG_RSS_CHILD_ITEM_KEY, rssItemImage.Url);
                        }
                    }
                }
            };
            this._handlers.put(SettingsJsonConstants.PROMPT_TITLE_KEY, new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RssItemParser.this.currentRssItem().Title = sb.toString();
                }
            }));
            this._handlers.put("guid", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.2
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RssItemParser.this.currentRssItem().Guid = sb.toString().trim();
                }
            }));
            this._handlers.put("link", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.3
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RssItemParser.this.currentRssItem().Link = sb.toString();
                }
            }));
            this._handlers.put("pubDate", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.4
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RssItemParser.this.currentRssItem().OriginalPubDateString = sb.toString();
                }
            }));
            this._handlers.put("originatingFeedID", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.5
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    RssItemParser.this.currentRssItem().SetOriginatingFeedID(UUID.fromString(sb.toString()));
                }
            }));
            if (parseData().ParseLevel == 2 || parseData().ParseLevel == 0) {
                this._handlers.put("enclosure", new ParserBase.SimpleElementParser(this, this._enclosureHandler));
                this._handlers.put("media:content", new MediaRssContentParser(this));
                this._handlers.put("media:thumbnail", new ParserBase.SimpleElementParser(this, this._mediaThumbnailHandler));
                this._handlers.put("media:group", new MediaRssGroupParser(this));
                this._handlers.put("itunes:duration", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.6
                    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                    public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                        if (sb.length() <= 0 || sb.length() >= 10) {
                            return;
                        }
                        RssItemParser.this.currentRssItem().EnclosureDuration = sb.toString();
                    }
                }));
            }
            if (parseData().ParseLevel == 0) {
                this._handlers.put("description", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.7
                    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                    public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                        if (StringUtils.isNullOrEmpty(RssItemParser.this.currentRssItem().Description)) {
                            RssItemParser.this.currentRssItem().Description = sb.toString();
                        }
                    }
                }));
                this._handlers.put("content:encoded", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.8
                    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                    public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                        RssItemParser.this.currentRssItem().Description = sb.toString();
                    }
                }));
                this._handlers.put("category", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.9
                    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                    public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                        RssItemParser.this.currentRssItem().Category = sb.toString();
                    }
                }));
                this._handlers.put("author", new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.RssItemParser.10
                    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                    public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                        RssItemParser.this.currentRssItem().Author = sb.toString();
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

        public RssFeedItem currentRssItem() {
            if (this._Item == null) {
                this._Item = new RssFeedItem(parseData().RssFeed);
            }
            return this._Item;
        }

        FeedParseData parseData() {
            return ((ChannelParser) this.Parent).parseData();
        }

        public static RssItemParser rssItemFromParent(ParserBase parserBase) {
            while (parserBase != null && !(parserBase instanceof RssItemParser)) {
                parserBase = parserBase.Parent;
            }
            return (RssItemParser) parserBase;
        }
    }

    /* loaded from: classes.dex */
    public static class MediaRssGroupParser extends ParserBase {
        public MediaRssGroupParser(RssItemParser rssItemParser) {
            super(rssItemParser);
            this._handlers.put("media:content", new MediaRssContentParser(this));
        }

        FeedParseData parseData() {
            return RssItemParser.rssItemFromParent(this).parseData();
        }
    }

    /* loaded from: classes.dex */
    public static class MediaRssContentParser extends ParserBase {
        public MediaRssContentParser(ParserBase parserBase) {
            super(parserBase);
            this._handlers.put("channels:extended_encoding", new MetaChannelsExtendedEncodingParser(this));
        }

        FeedParseData parseData() {
            return RssItemParser.rssItemFromParent(this).parseData();
        }

        @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            currentRssItem().setEnclosure(parseEnclosure(parseData(), this._CurrentElementAttributes));
            super.endElement(str, str2, str3);
        }

        public static RssEnclosure parseEnclosure(FeedParseData feedParseData, AttributesImpl attributesImpl) {
            RssEnclosure rssEnclosure = new RssEnclosure(feedParseData.EnclosureDownloadPath, feedParseData.ForceUniqueEnclosureNames);
            String value = attributesImpl.getValue("", "url");
            if (!StringUtils.isNullOrEmpty(value)) {
                rssEnclosure.Url = value;
            }
            String value2 = attributesImpl.getValue("", "fileSize");
            if (!StringUtils.isNullOrEmpty(value2)) {
                rssEnclosure.setEnclosureFileLength(StringUtils.tryParseLongFromString(value2, 0L));
            }
            String value3 = attributesImpl.getValue("", "type");
            if (!StringUtils.isNullOrEmpty(value3)) {
                rssEnclosure.Type = value3;
            }
            String value4 = attributesImpl.getValue("", "media_type");
            if (!StringUtils.isNullOrEmpty(value4) && StringUtils.isNullOrEmpty(rssEnclosure.Type)) {
                rssEnclosure.Type = value4;
            }
            String value5 = attributesImpl.getValue("", "medium");
            if (!StringUtils.isNullOrEmpty(value5) && StringUtils.isNullOrEmpty(rssEnclosure.Type)) {
                rssEnclosure.Type = MediaFile.mapMediaRssMediumToMime(value5);
            }
            return rssEnclosure;
        }

        private RssFeedItem currentRssItem() {
            return RssItemParser.rssItemFromParent(this).currentRssItem();
        }
    }

    /* loaded from: classes.dex */
    public static class MetaChannelsExtendedEncodingParser extends ParserBase {
        private ParserBase.SimpleElementParser.ElementHandler _mediaChannelsStreamContentHandler;

        public MetaChannelsExtendedEncodingParser(ParserBase parserBase) {
            super(parserBase);
            this._mediaChannelsStreamContentHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.RssFeedParser.MetaChannelsExtendedEncodingParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    float f;
                    if (MetaChannelsExtendedEncodingParser.this.currentRssItem().enclosure() != null) {
                        RssEnclosure.ExtendedEncoding parseExtendedEncoding = parseExtendedEncoding(attributesImpl);
                        MetaChannelsExtendedEncodingParser.this.currentRssItem().enclosure().addExtendedEncoding(parseExtendedEncoding);
                        if (MetaChannelsExtendedEncodingParser.this.currentRssItem().enclosure().enclosureFileLength() == null && "General".equals(parseExtendedEncoding.type)) {
                            if (parseExtendedEncoding.fileSizeString.contains("MiB")) {
                                f = StringUtils.safeParseFloat(parseExtendedEncoding.fileSizeString.replace("MiB", "").trim(), -1.0f);
                                if (f > 0.0f) {
                                    f *= 1048576.0f;
                                }
                            } else if (parseExtendedEncoding.fileSizeString.contains("GiB")) {
                                f = StringUtils.safeParseFloat(parseExtendedEncoding.fileSizeString.replace("GiB", "").trim(), -1.0f);
                                if (f > 0.0f) {
                                    f *= 1.0737418E9f;
                                }
                            } else if (parseExtendedEncoding.fileSizeString.contains("KiB")) {
                                f = StringUtils.safeParseFloat(parseExtendedEncoding.fileSizeString.replace("KiB", "").trim(), -1.0f);
                                if (f > 0.0f) {
                                    f *= 1024.0f;
                                }
                            } else {
                                f = 0.0f;
                            }
                            if (f > 0.0f) {
                                MetaChannelsExtendedEncodingParser.this.currentRssItem().enclosure().setEnclosureFileLength(Long.valueOf(f));
                            }
                        }
                    }
                }

                private RssEnclosure.ExtendedEncoding parseExtendedEncoding(AttributesImpl attributesImpl) {
                    RssEnclosure.ExtendedEncoding extendedEncoding = new RssEnclosure.ExtendedEncoding();
                    extendedEncoding.type = readStringAttributeValue(attributesImpl, "stream_kind-string", "UNKNOWN");
                    extendedEncoding.fileSize = readLongAttributeValue(attributesImpl, "stream_size", -1L);
                    extendedEncoding.fileSizeString = readStringAttributeValue(attributesImpl, "file_size-string3", "N/A");
                    extendedEncoding.bitrate = readIntAttributeValue(attributesImpl, "bit_rate", -1);
                    extendedEncoding.bitrateString = readStringAttributeValue(attributesImpl, "bit_rate-string", "N/A");
                    extendedEncoding.duration = readLongAttributeValue(attributesImpl, "duration", -1L) / 1000;
                    extendedEncoding.height = readIntAttributeValue(attributesImpl, SettingsJsonConstants.ICON_HEIGHT_KEY, -1);
                    extendedEncoding.width = readIntAttributeValue(attributesImpl, SettingsJsonConstants.ICON_WIDTH_KEY, -1);
                    extendedEncoding.displayAspectRatio = readStringAttributeValue(attributesImpl, "display_aspect_ratio-string", "N/A");
                    extendedEncoding.standard = readStringAttributeValue(attributesImpl, "standard", "N/A");
                    extendedEncoding.frameRateMode = readStringAttributeValue(attributesImpl, "frame_rate_mode", "N/A");
                    extendedEncoding.bitRateMode = readStringAttributeValue(attributesImpl, "bit_rate_mode", "N/A");
                    extendedEncoding.frameRate = readStringAttributeValue(attributesImpl, "frame_rate", "N/A");
                    extendedEncoding.codecID = readStringAttributeValue(attributesImpl, "codec_id", "N/A");
                    extendedEncoding.format = readStringAttributeValue(attributesImpl, "format", "N/A");
                    extendedEncoding.mimeType = readStringAttributeValue(attributesImpl, "internet_media_type", "N/A");
                    return extendedEncoding;
                }

                private String readStringAttributeValue(AttributesImpl attributesImpl, String str, String str2) {
                    return StringUtils.tryParseStringFromString(attributesImpl.getValue("", str), str2);
                }

                private long readLongAttributeValue(AttributesImpl attributesImpl, String str, long j) {
                    return StringUtils.tryParseLongFromString(attributesImpl.getValue("", str), Long.valueOf(j)).longValue();
                }

                private int readIntAttributeValue(AttributesImpl attributesImpl, String str, int i) {
                    return StringUtils.tryParseIntFromString(attributesImpl.getValue("", str), Integer.valueOf(i)).intValue();
                }
            };
            this._handlers.put("channels:stream", new ParserBase.SimpleElementParser(this, this._mediaChannelsStreamContentHandler));
        }

        FeedParseData parseData() {
            return RssItemParser.rssItemFromParent(this).parseData();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public RssFeedItem currentRssItem() {
            return RssItemParser.rssItemFromParent(this).currentRssItem();
        }
    }
}
