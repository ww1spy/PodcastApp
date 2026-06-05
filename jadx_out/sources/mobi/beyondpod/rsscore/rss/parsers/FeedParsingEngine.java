package mobi.beyondpod.rsscore.rss.parsers;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import java.util.Date;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DetectEncoding;

/* loaded from: classes.dex */
public class FeedParsingEngine {
    private static final String TAG = "FeedParsingEngine";
    private String encoding;
    private String defaultEncoding = "utf-8";
    private DetectEncoding de = new DetectEncoding(this.defaultEncoding);
    boolean error = false;

    public static void parseFeedFile(File file, FeedParseData feedParseData) {
        new FeedParsingEngine().parseFile(file, feedParseData);
    }

    private void parseFile(File file, FeedParseData feedParseData) {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            CoreHelper.writeTraceEntry(TAG, "Started level " + feedParseData.ParseLevel + " parsing of " + file.getName());
            if (this.encoding == null) {
                this.encoding = this.de.detect(file.getPath());
            }
            this.de.stripBOM(fileInputStream);
            Charset.forName(this.de.alias(this.encoding)).newDecoder().onMalformedInput(CodingErrorAction.REPORT);
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, this.encoding);
            if (this.de.isJson()) {
                parseFeedJSONInternal(inputStreamReader, feedParseData);
            } else {
                parseFeedXMLInternal(inputStreamReader, feedParseData);
            }
            feedParseData.RssFeed.LastRetrievalDate = new Date(file.lastModified());
        } catch (Exception e) {
            feedParseData.ParseException = e;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0024, code lost:
    
        if (r8.ParseException != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        r8.ParseException = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        if (r8.ParseException != null) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void parseFeedJSONInternal(java.io.InputStreamReader r7, mobi.beyondpod.rsscore.rss.parsers.FeedParseData r8) {
        /*
            java.lang.String r0 = mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine.TAG
            java.lang.String r1 = "Parsing feed JSON..."
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r1)
            r8.notifyParseStarted()
            long r0 = java.lang.System.currentTimeMillis()
            mobi.beyondpod.rsscore.rss.parsers.json.FeedlyJsonParser r2 = new mobi.beyondpod.rsscore.rss.parsers.json.FeedlyJsonParser     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r2.<init>(r8)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            com.google.gson.stream.JsonReader r3 = new com.google.gson.stream.JsonReader     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            r2.parse(r3)     // Catch: java.lang.Throwable -> L27 java.lang.Exception -> L29
            if (r7 == 0) goto L39
            r7.close()     // Catch: java.lang.Exception -> L21
            goto L39
        L21:
            r7 = move-exception
            java.lang.Exception r2 = r8.ParseException
            if (r2 != 0) goto L39
            goto L37
        L27:
            r2 = move-exception
            goto L4c
        L29:
            r2 = move-exception
            r8.ParseException = r2     // Catch: java.lang.Throwable -> L27
            if (r7 == 0) goto L39
            r7.close()     // Catch: java.lang.Exception -> L32
            goto L39
        L32:
            r7 = move-exception
            java.lang.Exception r2 = r8.ParseException
            if (r2 != 0) goto L39
        L37:
            r8.ParseException = r7
        L39:
            long r2 = java.lang.System.currentTimeMillis()
            long r4 = r2 - r0
            r8.ParseDuration = r4
            r8.notifyParseCompleted()
            java.lang.String r7 = mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine.TAG
            java.lang.String r8 = "Done Parsing feed JSON!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r7, r8)
            return
        L4c:
            if (r7 == 0) goto L59
            r7.close()     // Catch: java.lang.Exception -> L52
            goto L59
        L52:
            r7 = move-exception
            java.lang.Exception r3 = r8.ParseException
            if (r3 != 0) goto L59
            r8.ParseException = r7
        L59:
            long r3 = java.lang.System.currentTimeMillis()
            long r5 = r3 - r0
            r8.ParseDuration = r5
            r8.notifyParseCompleted()
            java.lang.String r7 = mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine.TAG
            java.lang.String r8 = "Done Parsing feed JSON!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r7, r8)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine.parseFeedJSONInternal(java.io.InputStreamReader, mobi.beyondpod.rsscore.rss.parsers.FeedParseData):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003b, code lost:
    
        if (r8.ParseException != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0066, code lost:
    
        r8.ParseException = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0064, code lost:
    
        if (r8.ParseException != null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0055, code lost:
    
        if (r8.ParseException != null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void parseFeedXMLInternal(java.io.InputStreamReader r7, mobi.beyondpod.rsscore.rss.parsers.FeedParseData r8) {
        /*
            java.lang.String r0 = mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine.TAG
            java.lang.String r1 = "Parsing feed XML..."
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r0, r1)
            r8.notifyParseStarted()
            long r0 = java.lang.System.currentTimeMillis()
            javax.xml.parsers.SAXParserFactory r2 = javax.xml.parsers.SAXParserFactory.newInstance()     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            javax.xml.parsers.SAXParser r2 = r2.newSAXParser()     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            org.xml.sax.XMLReader r2 = r2.getXMLReader()     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            mobi.beyondpod.rsscore.rss.parsers.RootParser r3 = new mobi.beyondpod.rsscore.rss.parsers.RootParser     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            r3.<init>(r2, r8)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            r2.setContentHandler(r3)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            r2.setErrorHandler(r3)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            java.lang.String r4 = "http://xml.org/sax/properties/lexical-handler"
            r2.setProperty(r4, r3)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            org.xml.sax.InputSource r3 = new org.xml.sax.InputSource     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            r3.<init>(r7)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            r2.parse(r3)     // Catch: java.lang.Throwable -> L3e java.lang.Throwable -> L40 java.lang.Exception -> L58
            if (r7 == 0) goto L68
            r7.close()     // Catch: java.lang.Exception -> L38
            goto L68
        L38:
            r7 = move-exception
            java.lang.Exception r2 = r8.ParseException
            if (r2 != 0) goto L68
            goto L66
        L3e:
            r2 = move-exception
            goto L7b
        L40:
            r2 = move-exception
            java.lang.Exception r3 = new java.lang.Exception     // Catch: java.lang.Throwable -> L3e
            java.lang.String r2 = r2.getMessage()     // Catch: java.lang.Throwable -> L3e
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L3e
            r8.ParseException = r3     // Catch: java.lang.Throwable -> L3e
            if (r7 == 0) goto L68
            r7.close()     // Catch: java.lang.Exception -> L52
            goto L68
        L52:
            r7 = move-exception
            java.lang.Exception r2 = r8.ParseException
            if (r2 != 0) goto L68
            goto L66
        L58:
            r2 = move-exception
            r8.ParseException = r2     // Catch: java.lang.Throwable -> L3e
            if (r7 == 0) goto L68
            r7.close()     // Catch: java.lang.Exception -> L61
            goto L68
        L61:
            r7 = move-exception
            java.lang.Exception r2 = r8.ParseException
            if (r2 != 0) goto L68
        L66:
            r8.ParseException = r7
        L68:
            long r2 = java.lang.System.currentTimeMillis()
            long r4 = r2 - r0
            r8.ParseDuration = r4
            r8.notifyParseCompleted()
            java.lang.String r7 = mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine.TAG
            java.lang.String r8 = "Done Parsing feed XML!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r7, r8)
            return
        L7b:
            if (r7 == 0) goto L88
            r7.close()     // Catch: java.lang.Exception -> L81
            goto L88
        L81:
            r7 = move-exception
            java.lang.Exception r3 = r8.ParseException
            if (r3 != 0) goto L88
            r8.ParseException = r7
        L88:
            long r3 = java.lang.System.currentTimeMillis()
            long r5 = r3 - r0
            r8.ParseDuration = r5
            r8.notifyParseCompleted()
            java.lang.String r7 = mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine.TAG
            java.lang.String r8 = "Done Parsing feed XML!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeTraceEntry(r7, r8)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.rss.parsers.FeedParsingEngine.parseFeedXMLInternal(java.io.InputStreamReader, mobi.beyondpod.rsscore.rss.parsers.FeedParseData):void");
    }
}
