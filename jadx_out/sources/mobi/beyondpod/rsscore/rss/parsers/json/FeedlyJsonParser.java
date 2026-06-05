package mobi.beyondpod.rsscore.rss.parsers.json;

import com.google.gson.stream.JsonReader;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.rsscore.rss.parsers.FeedParseData;
import mobi.beyondpod.rsscore.rss.parsers.ParserBase;
import mobi.beyondpod.rsscore.rss.parsers.ParserUtils;

/* loaded from: classes.dex */
public class FeedlyJsonParser {
    private TimeSpan _LockCutOff = TimeSpan.fromDays(31.0d);
    private FeedParseData _ParseData;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class AlternateLink {
        public String href;
        public String type;

        private AlternateLink() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Tag {
        public String id;
        public String label;

        private Tag() {
        }
    }

    public FeedlyJsonParser(FeedParseData feedParseData) {
        this._ParseData = feedParseData;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0019. Please report as an issue. */
    private void readRootObject(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        this._ParseData.ParsedFeedType = 6;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            switch (nextName.hashCode()) {
                case -1408024454:
                    if (nextName.equals("alternate")) {
                        c = 3;
                        break;
                    }
                    break;
                case -962590849:
                    if (nextName.equals("direction")) {
                        c = 1;
                        break;
                    }
                    break;
                case -234430277:
                    if (nextName.equals("updated")) {
                        c = 2;
                        break;
                    }
                    break;
                case 100526016:
                    if (nextName.equals("items")) {
                        c = 4;
                        break;
                    }
                    break;
                case 110371416:
                    if (nextName.equals(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this._ParseData.RssFeed.Title = jsonReader.nextString();
                    break;
                case 1:
                    String nextString = jsonReader.nextString();
                    this._ParseData.RssFeed.RTL = nextString != null && "rtl".equals(nextString);
                    break;
                case 2:
                    this._ParseData.RssFeed.PubDate = new Date(jsonReader.nextLong());
                    break;
                case 3:
                    ArrayList<AlternateLink> readAlternateLinks = readAlternateLinks(jsonReader);
                    if (readAlternateLinks.size() <= 0) {
                        break;
                    } else {
                        this._ParseData.RssFeed.Link = readAlternateLinks.get(0).href;
                        break;
                    }
                case 4:
                    readFeedItems(jsonReader);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
    }

    private void readFeedItems(JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            readItem(jsonReader);
        }
        jsonReader.endArray();
    }

    private void readItem(JsonReader jsonReader) throws IOException {
        RssFeedItem rssFeedItem = new RssFeedItem(this._ParseData.RssFeed);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                rssFeedItem.Title = ParserBase.cleanRTLDivs(jsonReader.nextString());
            } else if (nextName.equals("published")) {
                rssFeedItem.setPubDate(new Date(jsonReader.nextLong()));
            } else if (nextName.equals("updated") && rssFeedItem.pubDate() == null) {
                rssFeedItem.setPubDate(new Date(jsonReader.nextLong()));
            } else if (nextName.equals("alternate")) {
                ArrayList<AlternateLink> readAlternateLinks = readAlternateLinks(jsonReader);
                if (readAlternateLinks.size() > 0) {
                    rssFeedItem.Link = readAlternateLinks.get(0).href;
                }
            } else if (nextName.equals("tags")) {
                if (isStarred(readTags(jsonReader))) {
                    rssFeedItem.setGoogleStarred();
                }
            } else if (nextName.equals("id")) {
                rssFeedItem.OriginatingItemId = jsonReader.nextString();
                rssFeedItem.Guid = rssFeedItem.OriginatingItemId;
            } else if (nextName.equals("origin")) {
                readItemOrigin(jsonReader, rssFeedItem);
            } else if (nextName.equals("unread")) {
                if (!jsonReader.nextBoolean()) {
                    rssFeedItem.setGoogleRead();
                }
            } else if (nextName.equals("summary") && this._ParseData.ParseLevel == 0) {
                readItemContent(jsonReader, rssFeedItem, true);
            } else if (nextName.equals("content") && this._ParseData.ParseLevel == 0) {
                readItemContent(jsonReader, rssFeedItem, false);
            } else if (nextName.equals("enclosure") && (this._ParseData.ParseLevel == 2 || this._ParseData.ParseLevel == 0)) {
                readEnclosures(jsonReader, rssFeedItem);
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        setReadLockedIfNeeded(rssFeedItem);
        rssFeedItem.setInGoogleReadingList();
        ParserUtils.handleEndOfRssFeedItem(this._ParseData, rssFeedItem);
    }

    private void setReadLockedIfNeeded(RssFeedItem rssFeedItem) {
        if (rssFeedItem.pubDate() != null && rssFeedItem.isGoogleRead() && rssFeedItem.pubDate().before(this._LockCutOff.subtractFrom(new Date()))) {
            rssFeedItem.IsGoogleReadLocked = true;
        }
    }

    private void readEnclosures(JsonReader jsonReader, RssFeedItem rssFeedItem) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            readEnclosure(jsonReader, rssFeedItem);
        }
        jsonReader.endArray();
    }

    private void readEnclosure(JsonReader jsonReader, RssFeedItem rssFeedItem) throws IOException {
        RssEnclosure rssEnclosure = new RssEnclosure(this._ParseData.EnclosureDownloadPath, this._ParseData.ForceUniqueEnclosureNames);
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != -1106363674) {
                if (hashCode != 3211051) {
                    if (hashCode == 3575610 && nextName.equals("type")) {
                        c = 2;
                    }
                } else if (nextName.equals("href")) {
                    c = 0;
                }
            } else if (nextName.equals("length")) {
                c = 1;
            }
            switch (c) {
                case 0:
                    rssEnclosure.Url = jsonReader.nextString();
                    break;
                case 1:
                    rssEnclosure.setEnclosureFileLength(Long.valueOf(jsonReader.nextLong()));
                    break;
                case 2:
                    rssEnclosure.Type = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        rssFeedItem.setEnclosure(rssEnclosure);
    }

    private void readItemOrigin(JsonReader jsonReader, RssFeedItem rssFeedItem) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 110371416) {
                if (hashCode == 1790933179 && nextName.equals("streamId")) {
                    c = 0;
                }
            } else if (nextName.equals(SettingsJsonConstants.PROMPT_TITLE_KEY)) {
                c = 1;
            }
            switch (c) {
                case 0:
                    rssFeedItem.OriginatingFeed = jsonReader.nextString();
                    break;
                case 1:
                    rssFeedItem.OriginatingFeedTitle = ParserBase.cleanRTLDivs(jsonReader.nextString());
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
    }

    private void readItemContent(JsonReader jsonReader, RssFeedItem rssFeedItem, boolean z) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            if (jsonReader.nextName().equals("content")) {
                String nextString = jsonReader.nextString();
                if (!StringUtils.isNullOrEmpty(nextString)) {
                    if (z) {
                        if (StringUtils.isNullOrEmpty(rssFeedItem.Description)) {
                            rssFeedItem.Description = nextString;
                        }
                    } else {
                        rssFeedItem.Description = nextString;
                    }
                }
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
    }

    private ArrayList<AlternateLink> readAlternateLinks(JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        ArrayList<AlternateLink> arrayList = new ArrayList<>();
        while (jsonReader.hasNext()) {
            arrayList.add(readAlternateLink(jsonReader));
        }
        jsonReader.endArray();
        return arrayList;
    }

    private AlternateLink readAlternateLink(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        AlternateLink alternateLink = new AlternateLink();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 3211051) {
                if (hashCode == 3575610 && nextName.equals("type")) {
                    c = 1;
                }
            } else if (nextName.equals("href")) {
                c = 0;
            }
            switch (c) {
                case 0:
                    alternateLink.href = jsonReader.nextString();
                    break;
                case 1:
                    alternateLink.type = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return alternateLink;
    }

    private ArrayList<Tag> readTags(JsonReader jsonReader) throws IOException {
        jsonReader.beginArray();
        ArrayList<Tag> arrayList = new ArrayList<>();
        while (jsonReader.hasNext()) {
            arrayList.add(readTag(jsonReader));
        }
        jsonReader.endArray();
        return arrayList;
    }

    private Tag readTag(JsonReader jsonReader) throws IOException {
        jsonReader.beginObject();
        Tag tag = new Tag();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            char c = 65535;
            int hashCode = nextName.hashCode();
            if (hashCode != 3355) {
                if (hashCode == 102727412 && nextName.equals("label")) {
                    c = 1;
                }
            } else if (nextName.equals("id")) {
                c = 0;
            }
            switch (c) {
                case 0:
                    tag.id = jsonReader.nextString();
                    break;
                case 1:
                    tag.label = jsonReader.nextString();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return tag;
    }

    private boolean isStarred(ArrayList<Tag> arrayList) {
        Iterator<Tag> it = arrayList.iterator();
        while (it.hasNext()) {
            if (it.next().id.endsWith("global.saved")) {
                return true;
            }
        }
        return false;
    }

    protected static void handleEndOfRssFeedItem(FeedParseData feedParseData, RssFeedItem rssFeedItem) throws IOException {
        ParserUtils.handleEndOfRssFeedItem(feedParseData, rssFeedItem);
        if (feedParseData.RssFeed.Items.size() >= feedParseData.MaxItemsToParse) {
            throw new IOException("feed has too many items! Loaded the first " + feedParseData.MaxItemsToParse, new ParserUtils.TooManyItemsException());
        }
    }

    public void parse(JsonReader jsonReader) throws IOException {
        readRootObject(jsonReader);
    }
}
