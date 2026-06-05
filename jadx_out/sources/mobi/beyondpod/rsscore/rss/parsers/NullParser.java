package mobi.beyondpod.rsscore.rss.parsers;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;

/* loaded from: classes.dex */
public class NullParser extends ParserBase {
    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
    }

    public NullParser(ParserBase parserBase) {
        super(parserBase);
    }

    @Override // mobi.beyondpod.rsscore.rss.parsers.ParserBase, org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        getNullHandler().startHandlingEvents(str2, attributes);
    }
}
