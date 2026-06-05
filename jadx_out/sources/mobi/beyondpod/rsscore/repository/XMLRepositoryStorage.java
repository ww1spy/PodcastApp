package mobi.beyondpod.rsscore.repository;

import com.google.android.gms.analytics.ecommerce.Promotion;
import java.io.FileInputStream;
import javax.xml.parsers.SAXParserFactory;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackDictionary;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.FileUtils;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.XmlTextWriter;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* loaded from: classes.dex */
public class XMLRepositoryStorage implements IRepositoryStorage {
    private static final String TAG = "XMLRepositoryStorage";

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteFeed(Feed feed) {
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteTask(ScheduledTask scheduledTask) {
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteTrack(Track track) {
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteTracks(TrackList trackList) {
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void saveRepository() {
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x009e A[LOOP:0: B:5:0x0098->B:7:0x009e, LOOP_END] */
    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadRepository() {
        /*
            r4 = this;
            mobi.beyondpod.rsscore.repository.FeedRepository.onRepositoryLoadStart()
            mobi.beyondpod.rsscore.Feed r0 = mobi.beyondpod.rsscore.repository.FeedRepository.getRootFeed()
            java.util.List r0 = r0.subFeeds()
            r0.clear()
            mobi.beyondpod.rsscore.repository.FeedRepository.clearTrackDictionary()
            java.lang.String r0 = "XMLRepositoryStorage"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Trying to load repository from the long term XML backup: "
            r1.append(r2)
            java.lang.String r2 = mobi.beyondpod.rsscore.Configuration.trackStateBackupPath()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r0, r1)
            java.lang.String r0 = mobi.beyondpod.rsscore.Configuration.trackStateBackupPath()
            boolean r0 = mobi.beyondpod.rsscore.helpers.FileUtils.exists(r0)
            r1 = 0
            if (r0 == 0) goto L82
            java.lang.String r0 = mobi.beyondpod.rsscore.Configuration.trackStateBackupPath()     // Catch: java.lang.Throwable -> L77
            mobi.beyondpod.rsscore.TrackDictionary r0 = r4.loadRepositoryInternal(r0)     // Catch: java.lang.Throwable -> L77
            r1 = 3
            mobi.beyondpod.rsscore.repository.FeedRepository.RepositoryLoadKind = r1     // Catch: java.lang.Throwable -> L76
            java.lang.String r1 = "XMLRepositoryStorage"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L76
            r2.<init>()     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = "Loaded "
            r2.append(r3)     // Catch: java.lang.Throwable -> L76
            mobi.beyondpod.rsscore.Feed r3 = mobi.beyondpod.rsscore.repository.FeedRepository.getRootFeed()     // Catch: java.lang.Throwable -> L76
            java.util.List r3 = r3.subFeeds()     // Catch: java.lang.Throwable -> L76
            int r3 = r3.size()     // Catch: java.lang.Throwable -> L76
            r2.append(r3)     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = " feeds  and "
            r2.append(r3)     // Catch: java.lang.Throwable -> L76
            int r3 = r0.size()     // Catch: java.lang.Throwable -> L76
            r2.append(r3)     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = " tracks from the XML backup file"
            r2.append(r3)     // Catch: java.lang.Throwable -> L76
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L76
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r1, r2)     // Catch: java.lang.Throwable -> L76
            r1 = r0
            goto L89
        L76:
            r1 = r0
        L77:
            r0 = 0
            mobi.beyondpod.rsscore.repository.FeedRepository.RepositoryLoadKind = r0
            java.lang.String r0 = "XMLRepositoryStorage"
            java.lang.String r2 = "failed to load from the long term XML repository backup file! Giving up!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r0, r2)
            goto L89
        L82:
            java.lang.String r0 = "XMLRepositoryStorage"
            java.lang.String r2 = "Long term XML repository backup file does not exist! Giving up!"
            mobi.beyondpod.rsscore.helpers.CoreHelper.writeLogEntry(r0, r2)
        L89:
            mobi.beyondpod.rsscore.helpers.CoreHelper.keepDeviceAwake()
            mobi.beyondpod.rsscore.Feed r0 = mobi.beyondpod.rsscore.repository.FeedRepository.getRootFeed()
            java.util.List r0 = r0.subFeeds()
            java.util.Iterator r0 = r0.iterator()
        L98:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto La8
            java.lang.Object r2 = r0.next()
            mobi.beyondpod.rsscore.Feed r2 = (mobi.beyondpod.rsscore.Feed) r2
            mobi.beyondpod.rsscore.repository.RepositoryPersistence.buildFeedList(r2, r1)
            goto L98
        La8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.repository.XMLRepositoryStorage.loadRepository():void");
    }

    public void backupRepositoryToFile(String str) {
        XmlTextWriter xmlTextWriter;
        synchronized (FeedRepository._TrackDictionary) {
            FeedRepository.onRepositorySaveStart();
            XmlTextWriter xmlTextWriter2 = null;
            try {
                try {
                    try {
                        try {
                            xmlTextWriter = new XmlTextWriter(str);
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                    }
                } catch (Throwable th) {
                    th = th;
                    xmlTextWriter = xmlTextWriter2;
                }
                try {
                    xmlTextWriter.writeStartDocument();
                    xmlTextWriter.writeStartElement("store");
                    xmlTextWriter.writeStartElement("categories");
                    xmlTextWriter.writeString(CategoryManager.serialize());
                    xmlTextWriter.writeEndElement("categories");
                    ScheduledTasksManager.saveTasks(xmlTextWriter);
                    xmlTextWriter.writeStartElement(DatabaseHelper.DB_TABLE_TRACKS);
                    xmlTextWriter.writeAttributeString("versionId", DateTime.toLongString(LicenseManager.trialStartDate()));
                    for (Track track : FeedRepository._TrackDictionary.values()) {
                        xmlTextWriter.writeStartElement("track");
                        xmlTextWriter.writeAttributeString("path", track.trackPath());
                        xmlTextWriter.writeAttributeString("totalTime", StringUtils.longToInvariantCultureString(track.getTotalTime()));
                        xmlTextWriter.writeAttributeString("playedTime", StringUtils.longToInvariantCultureString(track.getPlayedTime()));
                        xmlTextWriter.writeAttributeString("name", track.getName());
                        xmlTextWriter.writeAttributeString("contentType", track.contentMimeType());
                        xmlTextWriter.writeAttributeString("played", track.isPlayed() ? NotificationPreferences.YES : NotificationPreferences.NO);
                        xmlTextWriter.writeAttributeString("protocol", track.getProtocol());
                        xmlTextWriter.writeAttributeString("imagePath", track.trackImagePath());
                        xmlTextWriter.writeAttributeString("description", track.trackDescription());
                        xmlTextWriter.writeAttributeString("postTitle", track.trackPostTitle());
                        xmlTextWriter.writeAttributeString("postUrl", track.trackPostUrl());
                        xmlTextWriter.writeAttributeString("locked", track.locked() ? NotificationPreferences.YES : NotificationPreferences.NO);
                        xmlTextWriter.writeAttributeString("url", track.getUrl());
                        xmlTextWriter.writeAttributeString("downloadSize", StringUtils.longToInvariantCultureString(track.getDownloadSize()));
                        xmlTextWriter.writeAttributeString("downloadPortion", StringUtils.longToInvariantCultureString(track.getDownloadedPortion()));
                        xmlTextWriter.writeAttributeString("pubDate", track.getLastModifiedDate() != null ? DateTime.toLongString(track.getLastModifiedDate()) : "");
                        xmlTextWriter.writeEndElement("track");
                    }
                    xmlTextWriter.writeEndElement(DatabaseHelper.DB_TABLE_TRACKS);
                    xmlTextWriter.writeStartElement(DatabaseHelper.DB_TABLE_FEEDS);
                    for (Feed feed : FeedRepository.getRootFeed().subFeeds()) {
                        xmlTextWriter.writeStartElement("feed");
                        xmlTextWriter.writeAttributeString("id", feed.id().toString());
                        xmlTextWriter.writeAttributeString("path", feed.getRawFeedPath());
                        xmlTextWriter.writeAttributeString("name", feed.getName());
                        xmlTextWriter.writeAttributeString("autodelete", Integer.toString(feed.getAllowAutoTrackDeletions()));
                        xmlTextWriter.writeAttributeString(Promotion.ACTION_VIEW, Integer.toString(feed.getPreferredEnclosureIndex()));
                        xmlTextWriter.writeAttributeString("type", Integer.toString(feed.getType()));
                        xmlTextWriter.writeAttributeString("url", feed.getFeedUrl());
                        xmlTextWriter.writeAttributeString("imageUrl", feed.getFeedImageUrl());
                        xmlTextWriter.writeAttributeString("hasUnread", Integer.toString(feed.numUnreadItems()));
                        xmlTextWriter.writeAttributeString("pubDate", feed.getLastModifiedDate() != null ? DateTime.toLongString(feed.getLastModifiedDate()) : "");
                        xmlTextWriter.writeAttributeString("srvPubDate", feed.getLastServerModifiedDate() != null ? DateTime.toLongString(feed.getLastServerModifiedDate()) : "");
                        xmlTextWriter.writeAttributeString("category", feed.getCategories().serialize());
                        xmlTextWriter.writeAttributeString("custDownload", Integer.toString(feed.getPodcastDownloadAction()));
                        xmlTextWriter.writeAttributeString("forceUniqueNames", feed.getForceUniqueTrackNames() ? NotificationPreferences.YES : NotificationPreferences.NO);
                        xmlTextWriter.writeAttributeString("savePlayedPosition", feed.getShouldRememberPlayedPosition() ? NotificationPreferences.YES : NotificationPreferences.NO);
                        xmlTextWriter.writeAttributeString("fingerprintType", Integer.toString(feed.getItemFingerprintAlgorithm()));
                        xmlTextWriter.writeAttributeString("leftTruncateLongTrackNames", feed.getLeftTruncateLongTrackNames() ? NotificationPreferences.YES : NotificationPreferences.NO);
                        xmlTextWriter.writeAttributeString("forceItemSort", Integer.toString(feed.getForceFeedItemSort()));
                        if (feed.getLastItemID() != null) {
                            xmlTextWriter.writeAttributeString("lastItemId", feed.getLastItemID());
                        }
                        if (feed.getTrackSortOrder() != Configuration.getPodcastsSortOrder()) {
                            xmlTextWriter.writeAttributeString("trackSort", Integer.toString(feed.getTrackSortOrder()));
                        }
                        xmlTextWriter.writeAttributeString("feedPlayer", Integer.toString(feed.getFeedPlayer()));
                        if (!StringUtils.isNullOrEmpty(feed.getUserName())) {
                            xmlTextWriter.writeAttributeString("username", feed.getUserName());
                        }
                        xmlTextWriter.writeAttributeString("maxDownload", Integer.toString(feed.getMaxNumberPodcastToDownload()));
                        if (feed.getMaxNumGReaderItemsToGet() > 0) {
                            xmlTextWriter.writeAttributeString("maxGReaderItems", Integer.toString(feed.getMaxNumGReaderItemsToGet()));
                        }
                        if (feed.getKeepAtMostPodcasts() != Configuration.getGlobalDefaultKeepAtMostPodcasts()) {
                            xmlTextWriter.writeAttributeString("maxTracks", Integer.toString(feed.getKeepAtMostPodcasts()));
                        }
                        if (feed.getMaximumPodcastAge() != Configuration.getGlobalDefaultMaximumPodcastAge()) {
                            xmlTextWriter.writeAttributeString("maxTrackAge", Integer.toString((int) feed.getMaximumPodcastAge().getTotalDays()));
                        }
                        xmlTextWriter.writeEndElement("feed");
                    }
                    xmlTextWriter.writeEndElement(DatabaseHelper.DB_TABLE_FEEDS);
                    xmlTextWriter.writeEndElement("store");
                    xmlTextWriter.close();
                } catch (Exception unused3) {
                    xmlTextWriter2 = xmlTextWriter;
                    CoreHelper.writeTraceEntry(TAG, "failed to save feed repository to XML file! ");
                    if (xmlTextWriter2 != null) {
                        xmlTextWriter2.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (xmlTextWriter != null) {
                        try {
                            xmlTextWriter.close();
                        } catch (Exception unused4) {
                        }
                    }
                    throw th;
                }
                if (xmlTextWriter != null) {
                    xmlTextWriter.close();
                }
            } finally {
                FeedRepository.onRepositorySaveComplete();
            }
        }
    }

    private TrackDictionary loadRepositoryInternal(String str) throws Throwable {
        FileInputStream fileInputStream;
        TrackDictionary trackDictionary = new TrackDictionary();
        CoreHelper.writeLogEntryInProduction(TAG, "Reading Repository XML...");
        XMLReader xMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        xMLReader.setContentHandler(new RepositoryHandler(trackDictionary, FeedRepository.getRootFeed()));
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            xMLReader.parse(new InputSource(fileInputStream));
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            FeedRepository.onRepositoryScanningForChanges();
            return trackDictionary;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
    }

    @Override // mobi.beyondpod.rsscore.repository.IRepositoryStorage
    public void deleteRepositoryFiles() {
        FileUtils.deleteFileIfExists(Configuration.trackStateBackupPath());
    }
}
