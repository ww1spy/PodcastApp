package mobi.beyondpod.rsscore.rss.parsers;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.rsscore.rss.parsers.ParserUtils;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;
import org.xml.sax.helpers.AttributesImpl;

/* loaded from: classes.dex */
public class ParserBase extends DefaultHandler2 {
    private static final Pattern RTL_PATTERN = Pattern.compile("<div.*?style=\".*?direction:rtl.*?\".*?>(.*?)</div>");
    private static final String TAG = "ParserBase";
    protected ParserBase Parent;
    public XMLReader Reader;
    protected AttributesImpl _CurrentElementAttributes;
    StringBuilder _CurrentElementText;
    private String _HandlesElement;
    protected NullParser _UnhadledHandler;
    protected HashMap<String, ParserBase> _handlers;

    protected ParserBase() {
        this.Reader = null;
        this._handlers = new HashMap<>();
    }

    public ParserBase(XMLReader xMLReader) {
        this.Reader = null;
        this._handlers = new HashMap<>();
        this.Reader = xMLReader;
    }

    public ParserBase(ParserBase parserBase) {
        this(parserBase.Reader);
        this.Parent = parserBase;
    }

    private void startHandlingEvents() {
        this.Reader.setContentHandler(this);
        this.Reader.setErrorHandler(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void startHandlingEvents(String str, Attributes attributes) throws SAXException {
        this._HandlesElement = str;
        this._CurrentElementAttributes = new AttributesImpl(attributes);
        this._CurrentElementText = new StringBuilder();
        startHandlingEvents();
    }

    protected void stopHandlingEvents() {
        this.Reader.setContentHandler(this.Parent);
        this.Reader.setErrorHandler(this.Parent);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (str.startsWith("http://www.itunes.com")) {
            str2 = "itunes:" + str2;
        } else if (str.startsWith("http://purl.org/rss/1.0/modules/content")) {
            str2 = "content:" + str2;
        } else if (str.startsWith("http://www.w3.org/1999/02/22-rdf-syntax-ns#")) {
            str2 = "rdf:" + str2;
        } else if (str.startsWith("http://search.yahoo.com/mrss")) {
            str2 = "media:" + str2;
        } else if (str.startsWith("http://www.metachannels.com/channels-mrss")) {
            str2 = "channels:" + str2;
        }
        ParserBase parserBase = this._handlers.get(str2);
        if (parserBase == null) {
            parserBase = getNullHandler();
        }
        parserBase.startHandlingEvents(str2, attributes);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        stopHandlingEvents();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        if (this._CurrentElementText != null) {
            try {
                this._CurrentElementText.append(cArr, i, i2);
            } catch (Throwable th) {
                CoreHelper.logException(TAG, "SB Size: " + this._CurrentElementText.length(), th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NullParser getNullHandler() {
        if (this._UnhadledHandler == null) {
            this._UnhadledHandler = new NullParser(this);
        }
        return this._UnhadledHandler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void handleEndOfRssFeedItem(FeedParseData feedParseData, RssFeedItem rssFeedItem) throws SAXException {
        ParserUtils.handleEndOfRssFeedItem(feedParseData, rssFeedItem);
        if (feedParseData.RssFeed.Items.size() >= feedParseData.MaxItemsToParse) {
            throw new SAXException("feed has too many items! Loaded the first " + feedParseData.MaxItemsToParse, new ParserUtils.TooManyItemsException());
        }
    }

    /* loaded from: classes.dex */
    public static class SimpleElementParser extends ParserBase {
        ElementHandler _ElementHandler;

        /* loaded from: classes.dex */
        public interface ElementHandler {
            void onElement(String str, AttributesImpl attributesImpl, StringBuilder sb);
        }

        public SimpleElementParser(ParserBase parserBase, ElementHandler elementHandler) {
            super(parserBase);
            this._ElementHandler = elementHandler;
        }

        @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) throws SAXException {
            if (this._ElementHandler != null) {
                try {
                    this._ElementHandler.onElement(str2, this._CurrentElementAttributes, this._CurrentElementText);
                } catch (Exception e) {
                    throw new SAXException("Exception was thrown during feed Parsing", e);
                }
            }
            super.endElement(str, str2, str3);
        }
    }

    public static String cleanRTLDivs(String str) {
        if (str != null) {
            try {
                Matcher matcher = RTL_PATTERN.matcher(str);
                if (matcher.find()) {
                    return matcher.group(1);
                }
            } catch (IllegalStateException unused) {
            }
        }
        return str;
    }
}
