package mobi.beyondpod.downloadengine;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.ContextCompat;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.RssFeedUpdateManager;
import mobi.beyondpod.downloadengine.UpdateAndDownloadEvents;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.FlashStorageLocation;
import mobi.beyondpod.services.download.DownloadHolderService;
import mobi.beyondpod.ui.core.TrackMetadataParser;

/* loaded from: classes.dex */
public class DownloadEngineNotificationManager {
    private static final String TAG = "DownloadEngineNotificationManager";
    private static boolean _WiFiTurnedOnAtStart = false;
    private static final String PODCASTS = CoreHelper.loadResourceString(R.string.download_engine_notification_podcasts);
    private static final String PODCAST = CoreHelper.loadResourceString(R.string.download_engine_notification_podcast);
    private static final String FEEDS2 = CoreHelper.loadResourceString(R.string.download_engine_notification_feeds);
    private static final String LEFT_TO_DOWNLOAD = CoreHelper.loadResourceString(R.string.download_engine_notification_left_to_download);
    private static final String LEFT_TO_UPDATE = CoreHelper.loadResourceString(R.string.download_engine_notification_left_to_update);
    private static final String THE_PHONE_IS_IN_AIRPLANE_MODE = CoreHelper.loadResourceString(R.string.update_engine_notification_the_phone_is_in_airplane_mode);
    private static final String UNABLE_TO_ESTABLISH_NETWORK_CONNECTION = CoreHelper.loadResourceString(R.string.update_engine_notification_unable_to_establish_network_connection);
    private static final String FEED_UPDATE_FAILED = CoreHelper.loadResourceString(R.string.update_engine_notification__feed_update_failed);
    private static final String NO_NETWORK_CONNECTION = CoreHelper.loadResourceString(R.string.update_engine_notification_no_network_connection);
    private static final String FEED_UPDATE_COMPLETED = CoreHelper.loadResourceString(R.string.update_engine_notification__feed_update_completed);
    private static final String NO_NEW_PODCASTS = CoreHelper.loadResourceString(R.string.update_engine_notification_no_new_podcasts);
    private static final String PODCASTS_FAILED = CoreHelper.loadResourceString(R.string.update_engine_notification__podcasts_failed);
    private static final String FEEDS_FAILED = CoreHelper.loadResourceString(R.string.update_engine_notification_feeds_failed);
    private static final String NO_NEW_POSTS = CoreHelper.loadResourceString(R.string.update_engine_notification_no_new_posts);
    private static final String UPDATED = CoreHelper.loadResourceString(R.string.update_engine_notification_updated);
    private static final String THERE_WERE_ERRORS_DURING_THE_LAST_UPDATE = CoreHelper.loadResourceString(R.string.update_engine_notification_there_were_errors_during_the_last_update);
    private static final String LOOKING_FOR_NEW_PODCASTS_ACROSS_S_FEEDS = CoreHelper.loadResourceString(R.string.download_engine_notification_looking_for_new_podcasts_across);
    private static final String NEW_PODCASTS = CoreHelper.loadResourceString(R.string.download_engine_notification_new_podcasts);
    private static final String FOUND = CoreHelper.loadResourceString(R.string.download_engine_notification_found);
    private static final String DOWNLOADED = CoreHelper.loadResourceString(R.string.download_engine_notification_downloaded);
    private static final String NEW = CoreHelper.loadResourceString(R.string.download_engine_notification_new);
    private static final String DOWNLOADING = CoreHelper.loadResourceString(R.string.download_engine_notification_downloading);
    private static final String RETRYING = CoreHelper.loadResourceString(R.string.download_engine_notification_retrying);
    private static final String OF = CoreHelper.loadResourceString(R.string.download_engine_notification_of);
    private static final String UPDATING = CoreHelper.loadResourceString(R.string.download_engine_notification_updating);
    private static final String CONNECTING = CoreHelper.loadResourceString(R.string.download_engine_notification_connecting);
    private static final String FEED2 = CoreHelper.loadResourceString(R.string.download_engine_notification_feed);
    private static final String FEEDS = CoreHelper.loadResourceString(R.string.download_engine_notification_feeds);
    private static final String MORE = CoreHelper.loadResourceString(R.string.download_engine_notification_more);
    private static StringBuilder sFormatBuilder = new StringBuilder();
    private static Formatter sFormatter = new Formatter(sFormatBuilder, Locale.getDefault());
    private static RssFeedUpdateManager.FeedBatchUpdateListener _RssFeedUpdateListener = new RssFeedUpdateManager.FeedBatchUpdateListener() { // from class: mobi.beyondpod.downloadengine.DownloadEngineNotificationManager.1
        String _FeedsLeftToUpdate;

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onAnotherUpdateIsInProgress() {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateCanceled() {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateUnableToEstablishNetworkConnection() {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateCompleted(Feed feed) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateStarted(Feed feed) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onInsufficientSpaceAtDownloadLocation(FlashStorageLocation flashStorageLocation) {
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateCompleted() {
            VersionCheckManager.checkForNewVersionIfNeeded();
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedBatchUpdateStarted(Feed feed) {
            String str;
            if (RssFeedUpdateManager.queueCount() > 1) {
                Object[] objArr = new Object[4];
                objArr[0] = Integer.valueOf(RssFeedUpdateManager.queueCount() - 1);
                objArr[1] = DownloadEngineNotificationManager.MORE;
                objArr[2] = RssFeedUpdateManager.queueCount() - 1 > 1 ? DownloadEngineNotificationManager.FEEDS : DownloadEngineNotificationManager.FEED2;
                objArr[3] = DownloadEngineNotificationManager.LEFT_TO_UPDATE;
                str = String.format("%s %s %s %s", objArr);
            } else {
                str = "";
            }
            this._FeedsLeftToUpdate = str;
            DownloadEngineNotificationManager.setNotification(2, "", feed.getName(), DownloadEngineNotificationManager.CONNECTING + ", " + this._FeedsLeftToUpdate, 0);
        }

        @Override // mobi.beyondpod.downloadengine.RssFeedUpdateManager.FeedBatchUpdateListener
        public void onFeedUpdateProgress(Feed feed) {
            String formatter;
            DownloadEngineNotificationManager.sFormatBuilder.setLength(0);
            if (feed.getUpdateSize() <= 0) {
                formatter = DownloadEngineNotificationManager.sFormatter.format("%s %s, %s", DownloadEngineNotificationManager.UPDATING, CoreHelper.getFileLengthAsString(Long.valueOf(feed.getUpdatedPortion())), this._FeedsLeftToUpdate).toString();
            } else {
                formatter = DownloadEngineNotificationManager.sFormatter.format("%s %s%% %s %s, %s", DownloadEngineNotificationManager.UPDATING, Integer.valueOf(feed.updatePercent()), DownloadEngineNotificationManager.OF, CoreHelper.getFileLengthAsString(Long.valueOf(feed.getUpdateSize())), this._FeedsLeftToUpdate).toString();
            }
            DownloadEngineNotificationManager.setNotification(4, "", feed.getName(), formatter, feed.updatePercent());
        }
    };
    private static EnclosureDownloadManager.EnclosureBatchDownloadListener _EnclosureBatchUpdateListener = new EnclosureDownloadManager.EnclosureBatchDownloadListener() { // from class: mobi.beyondpod.downloadengine.DownloadEngineNotificationManager.2
        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onAnotherDownloadIsInProgress() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadCanceled() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadCompleted() {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadCanceled(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadFailed(Track track, Exception exc) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadTerminated(Track track) {
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchDownloadStarted() {
            AnalyticsTracker.onBatchDownloadStarted(EnclosureDownloadManager.queueCount());
        }

        private String remainingPodcastsText() {
            DownloadEngineNotificationManager.sFormatBuilder.setLength(0);
            if (EnclosureDownloadManager.queueCount() <= 1) {
                return "";
            }
            Formatter formatter = DownloadEngineNotificationManager.sFormatter;
            Object[] objArr = new Object[4];
            objArr[0] = Integer.valueOf(EnclosureDownloadManager.queueCount() - 1);
            objArr[1] = DownloadEngineNotificationManager.MORE;
            objArr[2] = EnclosureDownloadManager.queueCount() - 1 > 1 ? DownloadEngineNotificationManager.PODCASTS : DownloadEngineNotificationManager.PODCAST;
            objArr[3] = DownloadEngineNotificationManager.LEFT_TO_DOWNLOAD;
            return formatter.format(", %s %s %s %s", objArr).toString();
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureBatchEnclosureDownloadStarting(Track track, boolean z) {
            if (track == null) {
                return;
            }
            String name = track.getParentFeed().getName();
            StringBuilder sb = new StringBuilder();
            sb.append(z ? DownloadEngineNotificationManager.RETRYING : DownloadEngineNotificationManager.DOWNLOADING);
            sb.append(remainingPodcastsText());
            DownloadEngineNotificationManager.setNotification(2, "", name, sb.toString(), 0);
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadProgress(Track track) {
            String str;
            if (track.getDownloadStatus() != 2) {
                return;
            }
            DownloadEngineNotificationManager.sFormatBuilder.setLength(0);
            if (track.getDownloadSize() <= 0) {
                str = DownloadEngineNotificationManager.DOWNLOADED + " " + CoreHelper.getFileLengthAsString(Long.valueOf(track.getDownloadedPortion())) + remainingPodcastsText();
            } else {
                str = DownloadEngineNotificationManager.DOWNLOADED + " " + ((int) track.getDownloadPercent()) + "% " + DownloadEngineNotificationManager.OF + " " + CoreHelper.getFileLengthAsString(Long.valueOf(track.getDownloadSize())) + remainingPodcastsText();
            }
            DownloadEngineNotificationManager.setNotification(4, "", track.getParentFeed().getName(), str, (int) track.getDownloadPercent());
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadCompleted(Track track) {
            TrackMetadataParser.loadMetadataFor(track);
            if (Configuration.sharePodcasts()) {
                TrackMetadataParser.addToAndroidMediaDatabase(track);
            }
            BeyondPodApplication.messageBus.publishEvent(new UpdateAndDownloadEvents.UpdateAndDownloadEvent(DownloadEngineNotificationManager.class, UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_COMPLETED, track));
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onEnclosureDownloadStarted(Track track) {
            BeyondPodApplication.messageBus.publishEvent(new UpdateAndDownloadEvents.UpdateAndDownloadEvent(DownloadEngineNotificationManager.class, UpdateAndDownloadEvents.UpdateAndDownloadEvent.ENCLOSURE_DOWNLOAD_STARTED, track));
        }

        @Override // mobi.beyondpod.downloadengine.EnclosureDownloadManager.EnclosureBatchDownloadListener
        public void onUnableToEstablishNetworkConnection() {
            DownloadEngineNotificationManager.notifyUnableToEstablishNetworkConnection();
        }
    };
    private static UpdateAndDownloadManager.UpdateAndDownloadListener _UpdateAndDownloadListener = new UpdateAndDownloadManager.UpdateAndDownloadListener() { // from class: mobi.beyondpod.downloadengine.DownloadEngineNotificationManager.3
        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void processingCanceled(int i) {
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void processingCompleted(int i) {
            DownloadEngineNotificationManager.setNotification(6, "", String.format("%s %s %s", DownloadEngineNotificationManager.FOUND, Integer.valueOf(i), DownloadEngineNotificationManager.NEW_PODCASTS), "", -1);
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void processingStarted(int i) {
            DownloadEngineNotificationManager.setNotification(5, "", String.format("%s %s %s", DownloadEngineNotificationManager.LOOKING_FOR_NEW_PODCASTS_ACROSS_S_FEEDS, Integer.valueOf(i), DownloadEngineNotificationManager.FEEDS2), "", -1);
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void updateAndDownloadBatchStarted() {
            AnalyticsTracker.onBatchUpdateStarted(UpdateAndDownloadManager.queueCount());
            CoreHelper.writeTraceEntry(DownloadEngineNotificationManager.TAG, "Update and download batch Started!");
            BeyondPodApplication.getInstance().startDownloadServiceHolder();
            DownloadEngineNotificationManager.turnWiFiOnIfNeeded();
            BeyondPodApplication.messageBus.publishEvent(new UpdateAndDownloadEvents.UpdateAndDownloadEvent(DownloadEngineNotificationManager.class, UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_STARTED));
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void updateAndDownloadBatchCompleted() {
            String str;
            String str2;
            String str3;
            String str4;
            CoreHelper.writeTraceEntry(DownloadEngineNotificationManager.TAG, "Update and download batch completed!");
            FeedRepository.saveRepositoryAsync();
            BeyondPodApplication.messageBus.publishEvent(new UpdateAndDownloadEvents.UpdateAndDownloadEvent(DownloadEngineNotificationManager.class, UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_COMPLETED));
            DownloadEngineNotificationManager.turnWiFiOffIfNeeded();
            if (Configuration.clearStatusNotificationAtTheEndOfUpdate() || (RssFeedUpdateManager.feedsWithNewContentCount() == 0 && EnclosureDownloadManager.successfulDownloadsCount() == 0 && RssFeedUpdateManager.feedsFailedCount() == 0 && EnclosureDownloadManager.failedDownloadsCount() == 0 && UpdateAndDownloadManager.numStreamableEnclosures() == 0)) {
                DownloadEngineNotificationManager.clearNotification();
            } else {
                if (RssFeedUpdateManager.feedsFailedCount() > 0 || EnclosureDownloadManager.failedDownloadsCount() > 0) {
                    str = DownloadEngineNotificationManager.THERE_WERE_ERRORS_DURING_THE_LAST_UPDATE;
                } else {
                    String str5 = DownloadEngineNotificationManager.NO_NEW_PODCASTS;
                    if (EnclosureDownloadManager.successfulDownloadsCount() > 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(DownloadEngineNotificationManager.DOWNLOADED);
                        sb.append(" ");
                        sb.append(EnclosureDownloadManager.successfulDownloadsCount());
                        sb.append(" ");
                        sb.append(EnclosureDownloadManager.successfulDownloadsCount() > 1 ? DownloadEngineNotificationManager.PODCASTS : DownloadEngineNotificationManager.PODCAST);
                        str5 = sb.toString();
                    } else if (UpdateAndDownloadManager.numStreamableEnclosures() > 0) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(UpdateAndDownloadManager.numStreamableEnclosures());
                        sb2.append(" ");
                        sb2.append(DownloadEngineNotificationManager.NEW);
                        sb2.append(" ");
                        sb2.append(UpdateAndDownloadManager.numStreamableEnclosures() > 1 ? DownloadEngineNotificationManager.PODCASTS : DownloadEngineNotificationManager.PODCAST);
                        str5 = sb2.toString();
                    }
                    Object[] objArr = new Object[4];
                    if (RssFeedUpdateManager.feedsWithNewContentCount() > 0) {
                        str2 = DownloadEngineNotificationManager.UPDATED + " " + RssFeedUpdateManager.feedsWithNewContentCount() + " " + DownloadEngineNotificationManager.FEEDS;
                    } else {
                        str2 = DownloadEngineNotificationManager.NO_NEW_POSTS;
                    }
                    objArr[0] = str2;
                    if (RssFeedUpdateManager.feedsFailedCount() > 0) {
                        str3 = " (" + RssFeedUpdateManager.feedsFailedCount() + " " + DownloadEngineNotificationManager.FEEDS_FAILED + ")";
                    } else {
                        str3 = "";
                    }
                    objArr[1] = str3;
                    objArr[2] = str5;
                    if (EnclosureDownloadManager.failedDownloadsCount() > 0) {
                        str4 = "(" + EnclosureDownloadManager.failedDownloadsCount() + " " + DownloadEngineNotificationManager.PODCASTS_FAILED + ")";
                    } else {
                        str4 = "";
                    }
                    objArr[3] = str4;
                    str = String.format("%s%s. %s %s", objArr);
                }
                DownloadEngineNotificationManager.setNotification((RssFeedUpdateManager.feedsFailedCount() > 0 || EnclosureDownloadManager.failedDownloadsCount() > 0) ? 8 : 7, "", DateTime.formatTime(new Date()) + " - " + DownloadEngineNotificationManager.FEED_UPDATE_COMPLETED, str, -1);
                RssFeedUpdateManager.resetUpdateCounters();
            }
            BeyondPodApplication.getInstance().stopDownloadServiceHolder();
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void onAnotherDownloadIsInProgress() {
            BeyondPodApplication.messageBus.publishEvent(new UpdateAndDownloadEvents.UpdateAndDownloadEvent(DownloadEngineNotificationManager.class, UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_COMPLETED));
        }

        @Override // mobi.beyondpod.downloadengine.UpdateAndDownloadManager.UpdateAndDownloadListener
        public void onUnableToEstablishNetworkConnection() {
            DownloadEngineNotificationManager.notifyUnableToEstablishNetworkConnection();
            BeyondPodApplication.messageBus.publishEvent(new UpdateAndDownloadEvents.UpdateAndDownloadEvent(DownloadEngineNotificationManager.class, UpdateAndDownloadEvents.UpdateAndDownloadEvent.UPDATE_AND_DOWNLOAD_COMPLETED));
        }
    };

    static {
        EnclosureDownloadManager.addEnclosureBatchDownloadListener(_EnclosureBatchUpdateListener);
        UpdateAndDownloadManager.addUpdateAndDownloadListener(_UpdateAndDownloadListener);
        RssFeedUpdateManager.addFeedBatchUpdateListener(_RssFeedUpdateListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyUnableToEstablishNetworkConnection() {
        if (Configuration.clearStatusNotificationAtTheEndOfUpdate()) {
            clearNotification();
        } else {
            String str = NO_NETWORK_CONNECTION;
            String str2 = DateTime.formatTime(new Date()) + " - " + FEED_UPDATE_FAILED;
            StringBuilder sb = new StringBuilder();
            sb.append(UNABLE_TO_ESTABLISH_NETWORK_CONNECTION);
            sb.append(BeyondPodApplication.getInstance().isInAirplaneMode() ? THE_PHONE_IS_IN_AIRPLANE_MODE : "");
            setNotification(8, str, str2, sb.toString(), -1);
        }
        BeyondPodApplication.getInstance().stopDownloadServiceHolder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void turnWiFiOffIfNeeded() {
        if (_WiFiTurnedOnAtStart) {
            BeyondPodApplication.toggleWiFi(false, TAG);
        }
        _WiFiTurnedOnAtStart = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void turnWiFiOnIfNeeded() {
        if (Configuration.turnWiFiDuringUpdate()) {
            _WiFiTurnedOnAtStart = BeyondPodApplication.toggleWiFi(true, TAG);
        }
    }

    public static void clearNotification() {
        NotificationHelper.getInstance().clearNotification(Configuration.getAppContext(), NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setNotification(int i, String str, String str2, String str3, int i2) {
        Context applicationContext = BeyondPodApplication.getInstance().getApplicationContext();
        Intent intent = new Intent(applicationContext, (Class<?>) DownloadHolderService.class);
        intent.putExtra(NotificationHelper.NOTIFICATION_TYPE_EXTRA, i);
        intent.putExtra(NotificationHelper.NOTIFICATION_TICKER_EXTRA, str);
        intent.putExtra(NotificationHelper.NOTIFICATION_LINE1_EXTRA, str2);
        intent.putExtra(NotificationHelper.NOTIFICATION_LINE2_EXTRA, str3);
        intent.putExtra(NotificationHelper.NOTIFICATION_PROGRESS, i2);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(applicationContext, intent);
        } else {
            applicationContext.startService(intent);
        }
    }
}
