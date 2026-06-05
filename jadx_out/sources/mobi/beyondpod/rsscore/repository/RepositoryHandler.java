package mobi.beyondpod.rsscore.repository;

import com.google.android.gms.analytics.ecommerce.Promotion;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackDictionary;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategories;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

/* loaded from: classes.dex */
public class RepositoryHandler extends DefaultHandler {
    private static final String TAG = "RepositoryParser";
    private Feed _Feed;
    private TrackDictionary _Tracks;
    private boolean _IsInCategories = false;
    private StringBuilder _Categories = new StringBuilder();

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
    }

    public RepositoryHandler(TrackDictionary trackDictionary, Feed feed) {
        this._Tracks = trackDictionary;
        this._Feed = feed;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3.equals("categories") != false) goto L21;
     */
    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startElement(java.lang.String r2, java.lang.String r3, java.lang.String r4, org.xml.sax.Attributes r5) throws org.xml.sax.SAXException {
        /*
            r1 = this;
            r2 = 0
            r1._IsInCategories = r2
            int r4 = r3.hashCode()
            r0 = 1
            switch(r4) {
                case -865716088: goto L33;
                case 3138974: goto L29;
                case 3552645: goto L1f;
                case 110621003: goto L15;
                case 1296516636: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L3d
        Lc:
            java.lang.String r4 = "categories"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L3d
            goto L3e
        L15:
            java.lang.String r2 = "track"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L3d
            r2 = 2
            goto L3e
        L1f:
            java.lang.String r2 = "task"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L3d
            r2 = 4
            goto L3e
        L29:
            java.lang.String r2 = "feed"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L3d
            r2 = 3
            goto L3e
        L33:
            java.lang.String r2 = "tracks"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L3d
            r2 = r0
            goto L3e
        L3d:
            r2 = -1
        L3e:
            switch(r2) {
                case 0: goto L67;
                case 1: goto L53;
                case 2: goto L4f;
                case 3: goto L4b;
                case 4: goto L42;
                default: goto L41;
            }
        L41:
            goto L69
        L42:
            org.xml.sax.helpers.AttributesImpl r2 = new org.xml.sax.helpers.AttributesImpl
            r2.<init>(r5)
            mobi.beyondpod.schedulercore.ScheduledTasksManager.loadTask(r2)
            goto L69
        L4b:
            r1.readFeed(r5)
            goto L69
        L4f:
            r1.readTrack(r5)
            goto L69
        L53:
            java.util.HashMap r2 = r1.getAttributeValue(r5)
            java.lang.String r3 = "versionId"
            java.lang.Object r2 = r2.get(r3)
            java.lang.String r2 = (java.lang.String) r2
            java.util.Date r2 = mobi.beyondpod.rsscore.helpers.DateTime.tryParseDateTime(r2)
            mobi.beyondpod.rsscore.rss.LicenseManager.setTrialStartDate(r2)
            goto L69
        L67:
            r1._IsInCategories = r0
        L69:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.RepositoryHandler.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        if (this._IsInCategories) {
            try {
                String sb = this._Categories.toString();
                if (StringUtils.isNullOrEmpty(sb)) {
                    return;
                }
                CategoryManager.deserialize(sb);
            } catch (Exception e) {
                CoreHelper.writeLogEntry(TAG, "Unable to read categories! reason: " + e.getMessage());
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        if (this._IsInCategories) {
            this._Categories.append(new String(cArr, i, i2));
        }
    }

    private HashMap<String, String> getAttributeValue(Attributes attributes) {
        HashMap<String, String> hashMap = new HashMap<>(attributes.getLength());
        for (int i = 0; i < attributes.getLength(); i++) {
            hashMap.put(attributes.getLocalName(i), attributes.getValue(i));
        }
        return hashMap;
    }

    private void readTrack(Attributes attributes) {
        HashMap<String, String> attributeValue = getAttributeValue(attributes);
        try {
            String tryParseStringFromString = StringUtils.tryParseStringFromString(attributeValue.get("path"), "");
            String tryParseStringFromString2 = StringUtils.tryParseStringFromString(attributeValue.get("name"), "");
            String tryParseStringFromString3 = StringUtils.tryParseStringFromString(attributeValue.get("protocol"), "");
            String tryParseStringFromString4 = StringUtils.tryParseStringFromString(attributeValue.get("description"), "");
            String tryParseStringFromString5 = StringUtils.tryParseStringFromString(attributeValue.get("imagePath"), "");
            String tryParseStringFromString6 = StringUtils.tryParseStringFromString(attributeValue.get("postTitle"), "");
            String tryParseStringFromString7 = StringUtils.tryParseStringFromString(attributeValue.get("postUrl"), "");
            String tryParseStringFromString8 = StringUtils.tryParseStringFromString(attributeValue.get("url"), "");
            String tryParseStringFromString9 = StringUtils.tryParseStringFromString(attributeValue.get("contentType"), "");
            long longValue = StringUtils.tryParseLongFromString(attributeValue.get("totalTime"), 0L).longValue();
            long longValue2 = StringUtils.tryParseLongFromString(attributeValue.get("playedTime"), 0L).longValue();
            boolean tryParseBooleanFromString = StringUtils.tryParseBooleanFromString(attributeValue.get("played"), false);
            long longValue3 = StringUtils.tryParseLongFromString(attributeValue.get("downloadSize"), 0L).longValue();
            long longValue4 = StringUtils.tryParseLongFromString(attributeValue.get("downloadPortion"), 0L).longValue();
            int intValue = StringUtils.tryParseIntFromString(attributeValue.get("locked"), 0).intValue();
            Date tryParseDateTime = DateTime.tryParseDateTime(attributeValue.get("pubDate"));
            Track track = new Track(tryParseStringFromString, (Feed) null);
            track.setName(tryParseStringFromString2);
            track.setContentMimeType(tryParseStringFromString9);
            track.initializePlayedTimes(longValue2, longValue, tryParseBooleanFromString);
            track.setProtocol(tryParseStringFromString3);
            track.setTrackDescription(tryParseStringFromString4);
            track.setTrackImagePath(tryParseStringFromString5);
            track.setTrackPostTitle(tryParseStringFromString6);
            track.setTrackPostUrl(tryParseStringFromString7);
            track.setUrl(tryParseStringFromString8);
            track.setDownloadedPortion(longValue4);
            track.setDownloadSize(longValue3);
            track.setLastModifiedDate(tryParseDateTime);
            boolean z = true;
            if (intValue != 1) {
                z = false;
            }
            track.setLocked(z);
            try {
                this._Tracks.put(track.trackPath(), track);
            } catch (Throwable th) {
                th = th;
                CoreHelper.writeLogEntry(TAG, "Unable to read track! " + th.getMessage());
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void readFeed(Attributes attributes) {
        HashMap<String, String> attributeValue = getAttributeValue(attributes);
        try {
            UUID tryParseUUIDFromString = StringUtils.tryParseUUIDFromString(attributeValue.get("id"), UUID.randomUUID());
            String tryParseStringFromString = StringUtils.tryParseStringFromString(attributeValue.get("name"), "");
            String tryParseStringFromString2 = StringUtils.tryParseStringFromString(attributeValue.get("path"), "");
            String tryParseStringFromString3 = StringUtils.tryParseStringFromString(attributeValue.get("url"), "");
            String tryParseStringFromString4 = StringUtils.tryParseStringFromString(attributeValue.get("imageUrl"), "");
            String tryParseStringFromString5 = StringUtils.tryParseStringFromString(attributeValue.get("category"), "");
            String tryParseStringFromString6 = StringUtils.tryParseStringFromString(attributeValue.get("username"), "");
            int intValue = StringUtils.tryParseIntFromString(attributeValue.get("autodelete"), 0).intValue();
            int intValue2 = StringUtils.tryParseIntFromString(attributeValue.get(Promotion.ACTION_VIEW), 0).intValue();
            int intValue3 = StringUtils.tryParseIntFromString(attributeValue.get("type"), 0).intValue();
            int intValue4 = StringUtils.tryParseIntFromString(attributeValue.get("maxTracks"), Integer.valueOf(Configuration.getGlobalDefaultKeepAtMostPodcasts())).intValue();
            int intValue5 = StringUtils.tryParseIntFromString(attributeValue.get("maxTrackAge"), Integer.valueOf(Configuration.DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS)).intValue();
            int intValue6 = StringUtils.tryParseIntFromString(attributeValue.get("maxDownload"), Integer.valueOf(Configuration.getGlobalDefaultNumberPodcastsToDownload())).intValue();
            int intValue7 = StringUtils.tryParseIntFromString(attributeValue.get("maxGReaderItems"), 0).intValue();
            int intValue8 = StringUtils.tryParseIntFromString(attributeValue.get("hasUnread"), 0).intValue();
            int intValue9 = StringUtils.tryParseIntFromString(attributeValue.get("custDownload"), 0).intValue();
            boolean tryParseBooleanFromString = StringUtils.tryParseBooleanFromString(attributeValue.get("forceUniqueNames"), false);
            boolean tryParseBooleanFromString2 = StringUtils.tryParseBooleanFromString(attributeValue.get("savePlayedPosition"), true);
            int intValue10 = StringUtils.tryParseIntFromString(attributeValue.get("fingerprintType"), 1).intValue();
            boolean tryParseBooleanFromString3 = StringUtils.tryParseBooleanFromString(attributeValue.get("leftTruncateLongTrackNames"), false);
            int intValue11 = StringUtils.tryParseIntFromString(attributeValue.get("forceItemSort"), -1).intValue();
            int intValue12 = StringUtils.tryParseIntFromString(attributeValue.get("trackSort"), -1).intValue();
            int intValue13 = StringUtils.tryParseIntFromString(attributeValue.get("feedPlayer"), -1).intValue();
            Date tryParseDateTime = DateTime.tryParseDateTime(attributeValue.get("pubDate"));
            Date tryParseDateTime2 = DateTime.tryParseDateTime(attributeValue.get("srvPubDate"));
            String tryParseStringFromString7 = StringUtils.tryParseStringFromString(attributeValue.get("lastItemId"), null);
            Feed feed = new Feed(tryParseUUIDFromString, this._Feed);
            try {
                feed.setName(tryParseStringFromString);
                feed.setFeedUrl(tryParseStringFromString3);
                feed.setFeedImageUrl(tryParseStringFromString4);
                feed.setAllowAutoTrackDeletions(intValue);
                feed.setPreferredEnclosureIndex(intValue2);
                feed.setType(intValue3);
                feed.setFeedPath(tryParseStringFromString2);
                feed.setNumUnreadItems(intValue8);
                feed.setLastModifiedDate(tryParseDateTime);
                feed.setLastServerModifiedDate(tryParseDateTime2);
                feed.setCategories(FeedCategories.deserialize(tryParseStringFromString5));
                feed.setForceFeedItemSort(intValue11);
                feed.setForceUniqueTrackNames(tryParseBooleanFromString);
                feed.setShouldRememberPlayedPosition(tryParseBooleanFromString2);
                feed.setItemFingerprintAlgorithm(intValue10);
                feed.setLeftTruncateLongTrackNames(tryParseBooleanFromString3);
                feed.setLastItemID(tryParseStringFromString7);
                feed.setFeedPlayer(intValue13);
                feed.setUserName(tryParseStringFromString6);
                feed.setTrackSortOrder(intValue12);
                if (intValue7 > 0) {
                    feed.setMaxNumGReaderItemsToGet(intValue7);
                }
                feed.setPodcastDownloadAction(intValue9);
                feed.setMaxNumberPodcastsToDownload(intValue6);
                feed.setKeepAtMostPodcasts(intValue4);
                feed.setMaximumPodcastAge(new TimeSpan(intValue5, 0L, 0L, 0L));
            } catch (Throwable th) {
                CoreHelper.writeLogEntry(TAG, "Unable to read feed! " + th.getMessage());
            }
            this._Feed.subFeeds().add(feed);
        } catch (Throwable th2) {
            CoreHelper.writeLogEntry(TAG, "Unable to read feed! " + th2.getMessage());
        }
    }
}
