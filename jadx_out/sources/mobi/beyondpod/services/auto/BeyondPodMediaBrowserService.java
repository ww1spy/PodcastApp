package mobi.beyondpod.services.auto;

import android.annotation.TargetApi;
import android.app.Notification;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.media.MediaDescription;
import android.media.browse.MediaBrowser;
import android.os.AsyncTask;
import android.os.Bundle;
import android.service.media.MediaBrowserService;
import android.support.annotation.NonNull;
import android.support.v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.FeedSorter;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.PlayerUtils;
import mobi.beyondpod.services.player.TrackMetadataPublisher;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.CommandManagerBase;
import mobi.beyondpod.ui.views.base.UIUtils;

@TargetApi(21)
/* loaded from: classes.dex */
public class BeyondPodMediaBrowserService extends MediaBrowserService {
    private static final int BUILD_FROM_CATEGORY = 2;
    private static final int BUILD_FROM_FEED = 1;
    private static final int BUILD_FROM_SMARTPLAY = 0;
    private static final String TAG = "BeyondPodMediaBrowserService";
    PackageValidator _packageValidator;

    @Override // android.service.media.MediaBrowserService, android.app.Service
    @TargetApi(26)
    public void onCreate() {
        super.onCreate();
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(BeyondPodApplication.getInstance().getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(PlayList.isCurrentlyPlaying() ? R.drawable.ic_notification_pause : R.drawable.ic_notification_play).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (BeyondPodMediaBrowserService) and passing notification: " + build.toString());
            startForeground(101, build);
        }
        CoreHelper.writeTraceEntry(TAG, "==== MediaBrowserService created ====");
        PlayerUtils.lockPlayerService();
        this._packageValidator = new PackageValidator(this);
        setSessionToken(TrackMetadataPublisher.getInstance().getMediaSessionToken());
    }

    @Override // android.app.Service
    @TargetApi(26)
    public int onStartCommand(Intent intent, int i, int i2) {
        if (CoreHelper.isOreoCompatible()) {
            Notification build = NotificationHelper.getInstance().getNotificationBuilder(getApplicationContext()).setLocalOnly(true).setVisibility(-1).setCategory(NotificationCompat.CATEGORY_SERVICE).setPriority(-2).setSmallIcon(PlayList.isCurrentlyPlaying() ? R.drawable.ic_notification_pause : R.drawable.ic_notification_play).setOnlyAlertOnce(true).setAutoCancel(true).build();
            CoreHelper.writeLogEntryInProduction(TAG, "Starting foreground service (BeyondPodMediaBrowserService) and passing notification: " + build.toString());
            startForeground(101, build);
        }
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.service.media.MediaBrowserService
    public MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
        CoreHelper.writeTraceEntry(TAG, "MediaBrowserService onGetRoot from " + str);
        AnalyticsTracker.onAutoConnected(str);
        if (MediaIdHelper.maxListSize() <= 0) {
            CoreHelper.writeLogEntry(TAG, "OnGetRoot: Android Auto integration is disabled! ListSize: " + MediaIdHelper.maxListSize());
            return null;
        }
        if (!this._packageValidator.isCallerAllowed(this, str, i)) {
            if (Configuration.DBGAutoVerifyCallers()) {
                CoreHelper.writeTraceEntry(TAG, "OnGetRoot: request from untrusted package " + str);
                return null;
            }
            CoreHelper.writeTraceEntry(TAG, "Granted access from untrusted package " + str);
        }
        TrackMetadataPublisher.getInstance().enablePublishOfCurrentPlaylist(true);
        return new MediaBrowserService.BrowserRoot(MediaIdHelper.AUTO_MEDIA_ID_ROOT, null);
    }

    @Override // android.service.media.MediaBrowserService
    public void onLoadChildren(@NonNull final String str, @NonNull final MediaBrowserService.Result<List<MediaBrowser.MediaItem>> result) {
        CoreHelper.writeTraceEntry(TAG, "MediaBrowserService LoadChildren:" + str);
        result.detach();
        executeWhenRepositoryIsAvailable(new Runnable() { // from class: mobi.beyondpod.services.auto.BeyondPodMediaBrowserService.1
            /* JADX WARN: Type inference failed for: r0v2, types: [mobi.beyondpod.services.auto.BeyondPodMediaBrowserService$1$1] */
            @Override // java.lang.Runnable
            public void run() {
                if (MediaIdHelper.AUTO_MEDIA_ID_ROOT.equals(str)) {
                    CommandManagerBase.cmdLoadCurrentTrackIfNeeded();
                }
                new AsyncTask<Object, Void, Object>() { // from class: mobi.beyondpod.services.auto.BeyondPodMediaBrowserService.1.1
                    @Override // android.os.AsyncTask
                    protected Object doInBackground(Object[] objArr) {
                        return BeyondPodMediaBrowserService.this.getFolderContent(str);
                    }

                    @Override // android.os.AsyncTask
                    protected void onPostExecute(Object obj) {
                        try {
                            result.sendResult((List) obj);
                        } catch (ClassCastException unused) {
                            CoreHelper.writeTraceEntry(BeyondPodMediaBrowserService.TAG, "MediaBrowserService - failed cast from Object (mediaItems) to list<MediaBrowser.MediaItem>");
                        }
                    }
                }.execute(new Object[0]);
            }
        });
    }

    private void executeWhenRepositoryIsAvailable(Runnable runnable) {
        if (executeIfRepositoryIsAvailable(runnable)) {
            return;
        }
        loadRepositoryAndRunWhenLoaded(runnable);
    }

    private void loadRepositoryAndRunWhenLoaded(Runnable runnable) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (FeedRepository.repositoryLoadState() == -1) {
                CoreHelper.writeTraceEntry(TAG, "   === Loading feed repository from MediaBrowser service");
                if (!FeedRepository.initializeAndLoadRepository()) {
                    CoreHelper.writeLogEntry(TAG, "   === MediaBrowserService - the repository failed to load! Giving Up!");
                    return;
                }
            }
            while (System.currentTimeMillis() - currentTimeMillis < 20000) {
                if (executeIfRepositoryIsAvailable(runnable)) {
                    return;
                }
                CoreHelper.writeTraceEntry(TAG, "   === MediaBrowserService - Repository is still loading...");
                Thread.sleep(1000L);
            }
        } catch (Exception e) {
            CoreHelper.logException(TAG, "   === MediaBrowserService - failed to process Command!", e);
        }
        CoreHelper.writeLogEntry(TAG, "   === MediaBrowserService repository load is taking too long to load! Giving Up!");
    }

    private boolean executeIfRepositoryIsAvailable(Runnable runnable) {
        if (FeedRepository.repositoryLoadState() != 2) {
            return false;
        }
        runnable.run();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<MediaBrowser.MediaItem> getFolderContent(String str) {
        ArrayList arrayList = new ArrayList();
        if (MediaIdHelper.AUTO_MEDIA_ID_ROOT.equals(str)) {
            if (!PolicyManager.ifAutoRestricted()) {
                return buildRootHierarchy();
            }
            return buildTrialExpired();
        }
        if (str.startsWith(MediaIdHelper.AUTO_MEDIA_ID_SMARTPLAYS)) {
            return getSmartPlayTracks(MediaIdHelper.getSmartplayIdFromMediaId(str));
        }
        if (MediaIdHelper.AUTO_MEDIA_ID_FEEDS.equals(str)) {
            return getAllFeeds();
        }
        if (str.startsWith(MediaIdHelper.AUTO_MEDIA_ID_FEEDS)) {
            return getFeedTracks(str.replace(MediaIdHelper.AUTO_MEDIA_ID_FEEDS, ""));
        }
        if (MediaIdHelper.AUTO_MEDIA_ID_CATEGORIES.equals(str)) {
            return getAllCategories();
        }
        return str.startsWith(MediaIdHelper.AUTO_MEDIA_ID_CATEGORIES) ? getCategoryTracks(str.replace(MediaIdHelper.AUTO_MEDIA_ID_CATEGORIES, "")) : arrayList;
    }

    private List<MediaBrowser.MediaItem> buildRootHierarchy() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(getAllSmartPlaylists());
        if (CategoryManager.hasUserCategories()) {
            arrayList.add(buildFeedsCategories(getResources().getString(R.string.android_auto_categories_folder), MediaIdHelper.AUTO_MEDIA_ID_CATEGORIES));
        }
        arrayList.add(buildFeedsCategories(getResources().getString(R.string.android_auto_feeds_folder), MediaIdHelper.AUTO_MEDIA_ID_FEEDS));
        return arrayList;
    }

    private List<MediaBrowser.MediaItem> buildTrialExpired() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new MediaBrowser.MediaItem(new MediaDescription.Builder().setMediaId(MediaIdHelper.AUTO_MEDIA_ID_TRIAL_EXPIRED).setTitle(getResources().getString(R.string.android_auto_trial_expired)).setIconBitmap(BitmapFactory.decodeResource(BeyondPodApplication.getInstance().getResources(), R.drawable.ic_media_browser_trial_expired)).build(), 2));
        return arrayList;
    }

    private MediaBrowser.MediaItem buildFeedsCategories(String str, String str2) {
        return new MediaBrowser.MediaItem(new MediaDescription.Builder().setMediaId(str2).setTitle(str).setIconBitmap(BitmapFactory.decodeResource(getResources(), MediaIdHelper.AUTO_MEDIA_ID_CATEGORIES.equals(str2) ? R.drawable.ic_media_browser_categories : R.drawable.ic_media_browser_feeds)).build(), 1);
    }

    private List<MediaBrowser.MediaItem> getAllCategories() {
        ArrayList arrayList = new ArrayList();
        Iterator<FeedCategory> it = CategoryManager.getCategoriesUserDefined().iterator();
        while (it.hasNext()) {
            MediaDescription createMediaDescriptionFromCategory = createMediaDescriptionFromCategory(it.next());
            if (createMediaDescriptionFromCategory != null) {
                arrayList.add(new MediaBrowser.MediaItem(createMediaDescriptionFromCategory, MediaIdHelper.allowBrowsingFeedsAndCategories() ? 1 : 2));
            }
            if (arrayList.size() >= MediaIdHelper.maxListSize()) {
                break;
            }
        }
        return arrayList;
    }

    private List<MediaBrowser.MediaItem> getAllFeeds() {
        ArrayList arrayList = new ArrayList();
        FeedList feedsInCategory = FeedRepository.getFeedsInCategory(CategoryManager.AllFeeds);
        Collections.sort(feedsInCategory, new FeedSorter(Configuration.getFeedsSortOrder()));
        Iterator<Feed> it = feedsInCategory.iterator();
        while (it.hasNext()) {
            MediaDescription createMediaDescriptionFromFeed = createMediaDescriptionFromFeed(it.next());
            if (createMediaDescriptionFromFeed != null) {
                arrayList.add(new MediaBrowser.MediaItem(createMediaDescriptionFromFeed, MediaIdHelper.allowBrowsingFeedsAndCategories() ? 1 : 2));
            }
            if (arrayList.size() >= MediaIdHelper.maxListSize()) {
                break;
            }
        }
        return arrayList;
    }

    private List<MediaBrowser.MediaItem> getAllSmartPlaylists() {
        ArrayList arrayList = new ArrayList();
        Iterator<SmartPlaylist> it = SmartPlaylistManager.getPlaylistsForDiaplay().iterator();
        while (it.hasNext()) {
            SmartPlaylist next = it.next();
            if (createMediaItemFromSmartplay(next) != null) {
                arrayList.add(new MediaBrowser.MediaItem(createMediaItemFromSmartplay(next), (!MediaIdHelper.allowBrowsingFeedsAndCategories() || Configuration.autoPlaySmartPlaylists()) ? 2 : 1));
            }
        }
        return arrayList;
    }

    private MediaDescription createMediaDescriptionFromCategory(FeedCategory feedCategory) {
        int size = getCategoryTracks(feedCategory).size();
        if (size == 0) {
            return null;
        }
        return new MediaDescription.Builder().setMediaId(MediaIdHelper.AUTO_MEDIA_ID_CATEGORIES + feedCategory.value()).setTitle(feedCategory.name()).setSubtitle(getFeedCategorySubtitle(size)).setIconBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.ic_media_browser_category)).build();
    }

    private String getFeedCategorySubtitle(int i) {
        String quantityString = getResources().getQuantityString(R.plurals.media_browser_episodes, i, Integer.valueOf(i));
        if (i <= MediaIdHelper.maxListSize() || !MediaIdHelper.allowBrowsingFeedsAndCategories()) {
            return quantityString;
        }
        return quantityString.replace(Integer.toString(i), MediaIdHelper.maxListSize() + "+");
    }

    private MediaDescription createMediaDescriptionFromFeed(Feed feed) {
        int size = feed.tracksAndSubTracks().size();
        if (size == 0) {
            return null;
        }
        return new MediaDescription.Builder().setMediaId(MediaIdHelper.AUTO_MEDIA_ID_FEEDS + String.valueOf(feed.id())).setTitle(feed.getName()).setSubtitle(getFeedCategorySubtitle(size)).setIconBitmap(UIUtils.getMediaBrowserFeedImage(feed)).build();
    }

    private MediaDescription createMediaItemFromSmartplay(SmartPlaylist smartPlaylist) {
        int size = smartPlaylist.generatePlaylist().size();
        if (size == 0) {
            return null;
        }
        return new MediaDescription.Builder().setMediaId(MediaIdHelper.buildSmartplayMediaId(String.valueOf(smartPlaylist.id()), "")).setTitle(smartPlaylist.name()).setSubtitle(getFeedCategorySubtitle(size)).setIconBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.ic_media_browser_smartplay)).build();
    }

    private List<MediaBrowser.MediaItem> getCategoryTracks(String str) {
        return createMediaItemFromTracks(str, getCategoryTracks(CategoryManager.getCategoryByValue(str)), 2);
    }

    private List<Track> getCategoryTracks(FeedCategory feedCategory) {
        ArrayList arrayList = new ArrayList();
        Iterator<Feed> it = FeedRepository.getFeedsInCategory(feedCategory).iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().tracksAndSubTracks());
        }
        return arrayList;
    }

    private List<MediaBrowser.MediaItem> getFeedTracks(String str) {
        TrackList tracksAndSubTracks = FeedRepository.getFeedById(UUID.fromString(str)).tracksAndSubTracks();
        if (tracksAndSubTracks != null) {
            return createMediaItemFromTracks(str, tracksAndSubTracks, 1);
        }
        return null;
    }

    private List<MediaBrowser.MediaItem> getSmartPlayTracks(String str) {
        int parseInt = Integer.parseInt(str);
        SmartPlaylist smartPlaylist = SmartPlaylistManager.getSmartPlaylist(parseInt);
        if (smartPlaylist != null) {
            return createMediaItemFromTracks(String.valueOf(parseInt), smartPlaylist.generatePlaylist(), 0);
        }
        return null;
    }

    private List<MediaBrowser.MediaItem> createMediaItemFromTracks(String str, List<Track> list, int i) {
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        if (size > MediaIdHelper.maxListSize()) {
            size = MediaIdHelper.maxListSize();
        }
        switch (i) {
            case 1:
                TrackSorter trackSorter = new TrackSorter();
                trackSorter.SortOrder = FeedRepository.getFeedById(UUID.fromString(str)).getLocalOrInheritedTrackSortOrder();
                Collections.sort(list, trackSorter);
                break;
            case 2:
                Collections.sort(list, new TrackSorter(Configuration.getPodcastsSortOrder()));
                break;
        }
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(createMediaItemFromTrack(str, list.get(i2), i));
        }
        return arrayList;
    }

    private MediaBrowser.MediaItem createMediaItemFromTrack(String str, Track track, int i) {
        return new MediaBrowser.MediaItem(createTrackMediaDescription(str, track, i), 2);
    }

    private MediaDescription createTrackMediaDescription(String str, Track track, int i) {
        String str2 = "";
        switch (i) {
            case 0:
                str2 = MediaIdHelper.buildSmartplayMediaId(str, track.trackPath());
                break;
            case 1:
                str2 = MediaIdHelper.buildFeedMediaId(str, track.trackPath());
                break;
            case 2:
                str2 = MediaIdHelper.buildCategoryMediaId(str, track.trackPath());
                break;
        }
        return new MediaDescription.Builder().setMediaId(str2).setTitle(track.displayName()).setSubtitle(UIUtils.buildTrackSubtitle(BeyondPodApplication.getInstance(), track)).setDescription(track.trackDescription()).setIconBitmap(UIUtils.getMediaBrowserEpisodeAlbumArt(track)).build();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        PlayerUtils.unlockPlayerService();
        CoreHelper.writeTraceEntry(TAG, "--- MediaBrowserService destroyed! ---");
        TrackMetadataPublisher.getInstance().enablePublishOfCurrentPlaylist(false);
    }
}
