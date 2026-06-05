package mobi.beyondpod.htmlbuilder;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.DatabaseHelper;
import mobi.beyondpod.rsscore.rss.entities.RssFeed;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.ui.views.FeedContentDataSource;

/* loaded from: classes.dex */
public class FeedHtmlContentProvider extends ContentProvider {
    public static final String BP_Provider_Authority = "beyondpod";
    private static final String TAG = "FeedHtmlContentProvider";
    static int _CalculatedPageSize;
    static Feed _CurrentFeed;
    static RssFeed _CurrentRssFeed;
    static File _DefaultDocument;
    static FeedContentItemTemplate _FeedContentItemTemplate = new FeedContentItemTemplate();
    static File _InfoDocument;
    static long _LastParseDuration;
    static long _LastTemplateTransformationDuration;
    static Exception _ParseException;

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    public static RssFeed CurrentRssFeed() {
        return _CurrentRssFeed;
    }

    public static Feed CurrentFeed() {
        return _CurrentFeed;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.size() > 1 && "BeyondPodStorageRootPath".equals(pathSegments.get(0))) {
            String str2 = pathSegments.get(1);
            if (!StringUtils.isNullOrEmpty(str2)) {
                File file = new File(Configuration.beyondPodPublicStorageRootPath(), str2);
                if (file.exists()) {
                    return ParcelFileDescriptor.open(file, 268435456);
                }
            }
            RssTemplatingEngine.transformFeedLoadError(str2, "Unable to find the requested resource", infoDocument());
            return ParcelFileDescriptor.open(infoDocument(), 268435456);
        }
        if (pathSegments.size() > 1 && "BeyondPodImagePath".equals(pathSegments.get(0))) {
            String str3 = pathSegments.get(1);
            if (!StringUtils.isNullOrEmpty(str3)) {
                File file2 = new File(Configuration.rssImageCachePath(), str3);
                if (file2.exists()) {
                    return ParcelFileDescriptor.open(file2, 268435456);
                }
            }
            RssTemplatingEngine.transformFeedLoadError(str3, "Unable to find the requested resource", infoDocument());
            return ParcelFileDescriptor.open(infoDocument(), 268435456);
        }
        if (pathSegments.size() > 1 && "rssItemId".equals(pathSegments.get(0))) {
            String str4 = pathSegments.get(1);
            if (!StringUtils.isNullOrEmpty(str4)) {
                if (str4.endsWith(".html")) {
                    str4 = str4.substring(0, str4.length() - 5);
                }
                constructItemDocument(str4, true);
                return ParcelFileDescriptor.open(infoDocument(), 268435456);
            }
        }
        return super.openFile(uri, str);
    }

    public static String constructItemDocumentWithTemplate(String str, boolean z, int i) {
        _FeedContentItemTemplate.switchTemplateResourceTo(i);
        return constructItemDocument(str, z);
    }

    public static String constructEpisodeDocument(RssFeedItem rssFeedItem) {
        if (rssFeedItem == null) {
            return "";
        }
        if (rssFeedItem.enclosure() == null) {
            return constructItemDocument(rssFeedItem, false);
        }
        Track localEnclosureTrack = rssFeedItem.enclosure().getLocalEnclosureTrack();
        if (localEnclosureTrack != null) {
            try {
                String showNotes = localEnclosureTrack.getShowNotes();
                if (StringUtils.isNullOrEmpty(showNotes)) {
                    DatabaseHelper databaseHelper = new DatabaseHelper(BeyondPodApplication.getInstance().getApplicationContext());
                    try {
                        try {
                            String loadTrackShowNotes = databaseHelper.loadTrackShowNotes(localEnclosureTrack.rowID());
                            databaseHelper.cleanup();
                            showNotes = loadTrackShowNotes;
                        } catch (Exception e) {
                            CoreHelper.writeTraceEntry(TAG, "failed to load show notes for track: " + localEnclosureTrack.getName() + "! reason: " + e.getMessage());
                        }
                        if (StringUtils.isNullOrEmpty(showNotes)) {
                            showNotes = localEnclosureTrack.trackDescription() == null ? "" : localEnclosureTrack.trackDescription();
                        }
                    } finally {
                        databaseHelper.cleanup();
                    }
                }
                FeedContentItemTemplate feedContentItemTemplate = _FeedContentItemTemplate;
                if (showNotes == null) {
                    showNotes = "";
                }
                feedContentItemTemplate.itemContent = showNotes;
                _FeedContentItemTemplate.itemPubDate = localEnclosureTrack.getLastModifiedDate() != null ? DateTime.formatDateTime(localEnclosureTrack.getLastModifiedDate()) : "";
                _FeedContentItemTemplate.itemTitle = localEnclosureTrack.displayName();
                _FeedContentItemTemplate.originatingFeed = localEnclosureTrack.getParentFeed().getName();
                _FeedContentItemTemplate.itemLink = localEnclosureTrack.trackPostUrl();
                return _FeedContentItemTemplate.toHtml();
            } catch (Exception e2) {
                RssTemplatingEngine.transformFeedLoadError(localEnclosureTrack.getName(), e2.getMessage(), infoDocument());
            }
        }
        return constructItemDocument(rssFeedItem, false);
    }

    public static String constructItemDocument(String str, boolean z) {
        return constructItemDocument(FeedContentDataSource.getItemById(str), z);
    }

    public static String constructItemDocument(RssFeedItem rssFeedItem, boolean z) {
        if (rssFeedItem == null) {
            return "";
        }
        try {
            _FeedContentItemTemplate.itemContent = StringUtils.isNullOrEmpty(rssFeedItem.Description) ? "" : rssFeedItem.Description;
            _FeedContentItemTemplate.itemPubDate = rssFeedItem.pubDate() != null ? DateTime.formatDateTime(rssFeedItem.pubDate()) : "";
            _FeedContentItemTemplate.itemTitle = rssFeedItem.Title;
            _FeedContentItemTemplate.originatingFeed = StringUtils.isNullOrEmpty(rssFeedItem.OriginatingFeedTitle) ? rssFeedItem.parentFeed().Title : rssFeedItem.OriginatingFeedTitle;
            _FeedContentItemTemplate.itemLink = rssFeedItem.Link;
            if (z) {
                _FeedContentItemTemplate.saveAsHtml(infoDocument());
                return infoDocument().getAbsolutePath();
            }
            return _FeedContentItemTemplate.toHtml();
        } catch (Exception e) {
            RssTemplatingEngine.transformFeedLoadError(rssFeedItem.Title.toString(), e.getMessage(), infoDocument());
            return "";
        }
    }

    static File infoDocument() {
        if (_InfoDocument == null) {
            _InfoDocument = new File(Configuration.rssCachePath(), "BeyondPodInfo.html");
        }
        return _InfoDocument;
    }
}
