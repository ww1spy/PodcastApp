package mobi.beyondpod.rsscore.rss.parsers;

import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.rss.parsers.ParserBase;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes.dex */
public class OpmlFeedParser extends ParserBase implements IParent {
    public OpmlFeedParser(RootParser rootParser) {
        super(rootParser);
        this._handlers.put("head", new OpmlHeadParser(this));
        this._handlers.put("body", new OpmlBodyParser(this));
        this._handlers.put("outline", new OpmlOutlineHandler(this));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase
    public void startHandlingEvents(String str, Attributes attributes) throws SAXException {
        parseData().ParsedFeedType = 3;
        super.startHandlingEvents(str, attributes);
    }

    FeedParseData parseData() {
        return ((RootParser) this.Parent).parseData;
    }

    @Override // mobi.beyondpod.rsscore.rss.parsers.IParent
    public Feed feed() {
        return parseData().Feed;
    }

    /* loaded from: classes.dex */
    private static class OpmlHeadParser extends ParserBase {
        private ParserBase.SimpleElementParser.ElementHandler _PubDateHandler;

        public OpmlHeadParser(OpmlFeedParser opmlFeedParser) {
            super(opmlFeedParser);
            this._PubDateHandler = new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.OpmlFeedParser.OpmlHeadParser.2
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    if (OpmlHeadParser.this.parseData().Feed.getLastModifiedDate() == null) {
                        OpmlHeadParser.this.parseData().Feed.setLastModifiedDate(DateTime.tryParseRFC822Time(sb.toString(), null));
                    }
                }
            };
            this._handlers.put(SettingsJsonConstants.PROMPT_TITLE_KEY, new ParserBase.SimpleElementParser(this, new ParserBase.SimpleElementParser.ElementHandler() { // from class: mobi.beyondpod.rsscore.rss.parsers.OpmlFeedParser.OpmlHeadParser.1
                @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase.SimpleElementParser.ElementHandler
                public void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb) {
                    OpmlHeadParser.this.parseData().Feed.setName(sb.toString());
                }
            }));
            this._handlers.put("dateModified", new ParserBase.SimpleElementParser(this, this._PubDateHandler));
        }

        FeedParseData parseData() {
            return ((OpmlFeedParser) this.Parent).parseData();
        }
    }

    /* loaded from: classes.dex */
    private static class OpmlBodyParser extends ParserBase implements IParent {
        public OpmlBodyParser(OpmlFeedParser opmlFeedParser) {
            super(opmlFeedParser);
            this._handlers.put("outline", new OpmlOutlineHandler(this));
        }

        FeedParseData parseData() {
            return ((OpmlFeedParser) this.Parent).parseData();
        }

        @Override // mobi.beyondpod.rsscore.rss.parsers.IParent
        public Feed feed() {
            return parseData().Feed;
        }
    }

    /* loaded from: classes.dex */
    private static class OpmlOutlineHandler extends ParserBase implements IParent {
        Feed _Feed;

        public OpmlOutlineHandler(ParserBase parserBase) {
            super(parserBase);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:18:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
        @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void startHandlingEvents(java.lang.String r7, org.xml.sax.Attributes r8) throws org.xml.sax.SAXException {
            /*
                r6 = this;
                super.startHandlingEvents(r7, r8)
                org.xml.sax.helpers.AttributesImpl r7 = r6._CurrentElementAttributes
                java.lang.String r8 = ""
                java.lang.String r0 = "xmlUrl"
                java.lang.String r7 = r7.getValue(r8, r0)
                boolean r8 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r7)
                if (r8 == 0) goto L1d
                org.xml.sax.helpers.AttributesImpl r7 = r6._CurrentElementAttributes
                java.lang.String r8 = ""
                java.lang.String r0 = "xmlURL"
                java.lang.String r7 = r7.getValue(r8, r0)
            L1d:
                boolean r8 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r7)
                if (r8 == 0) goto L2d
                org.xml.sax.helpers.AttributesImpl r7 = r6._CurrentElementAttributes
                java.lang.String r8 = ""
                java.lang.String r0 = "url"
                java.lang.String r7 = r7.getValue(r8, r0)
            L2d:
                boolean r8 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r7)
                if (r8 == 0) goto L3d
                org.xml.sax.helpers.AttributesImpl r7 = r6._CurrentElementAttributes
                java.lang.String r8 = ""
                java.lang.String r0 = "URL"
                java.lang.String r7 = r7.getValue(r8, r0)
            L3d:
                boolean r8 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r7)
                if (r8 == 0) goto L4d
                org.xml.sax.helpers.AttributesImpl r7 = r6._CurrentElementAttributes
                java.lang.String r8 = ""
                java.lang.String r0 = "url"
                java.lang.String r7 = r7.getValue(r8, r0)
            L4d:
                r4 = r7
                org.xml.sax.helpers.AttributesImpl r7 = r6._CurrentElementAttributes
                java.lang.String r8 = ""
                java.lang.String r0 = "title"
                java.lang.String r7 = r7.getValue(r8, r0)
                org.xml.sax.helpers.AttributesImpl r8 = r6._CurrentElementAttributes
                java.lang.String r0 = ""
                java.lang.String r1 = "text"
                java.lang.String r8 = r8.getValue(r0, r1)
                boolean r0 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r7)
                if (r0 != 0) goto L6a
            L68:
                r3 = r7
                goto L75
            L6a:
                boolean r7 = mobi.beyondpod.rsscore.helpers.StringUtils.isNullOrEmpty(r8)
                if (r7 != 0) goto L72
                r3 = r8
                goto L75
            L72:
                java.lang.String r7 = "<No name>"
                goto L68
            L75:
                mobi.beyondpod.rsscore.rss.parsers.ParserBase r7 = r6.Parent
                mobi.beyondpod.rsscore.rss.parsers.IParent r7 = (mobi.beyondpod.rsscore.rss.parsers.IParent) r7
                mobi.beyondpod.rsscore.Feed r7 = r7.feed()
                mobi.beyondpod.rsscore.Feed r8 = new mobi.beyondpod.rsscore.Feed
                java.util.UUID r1 = java.util.UUID.randomUUID()
                r5 = 4
                r0 = r8
                r2 = r7
                r0.<init>(r1, r2, r3, r4, r5)
                r6._Feed = r8
                java.util.List r7 = r7.subFeeds()
                mobi.beyondpod.rsscore.Feed r8 = r6._Feed
                r7.add(r8)
                java.util.HashMap<java.lang.String, mobi.beyondpod.rsscore.rss.parsers.ParserBase> r7 = r6._handlers
                java.lang.String r8 = "outline"
                java.lang.Object r7 = r7.get(r8)
                if (r7 != 0) goto Laa
                java.util.HashMap<java.lang.String, mobi.beyondpod.rsscore.rss.parsers.ParserBase> r7 = r6._handlers
                java.lang.String r8 = "outline"
                mobi.beyondpod.rsscore.rss.parsers.OpmlFeedParser$OpmlOutlineHandler r0 = new mobi.beyondpod.rsscore.rss.parsers.OpmlFeedParser$OpmlOutlineHandler
                r0.<init>(r6)
                r7.put(r8, r0)
            Laa:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.rss.parsers.OpmlFeedParser.OpmlOutlineHandler.startHandlingEvents(java.lang.String, org.xml.sax.Attributes):void");
        }

        @Override // mobi.beyondpod.rsscore.rss.parsers.IParent
        public Feed feed() {
            return this._Feed;
        }
    }
}
