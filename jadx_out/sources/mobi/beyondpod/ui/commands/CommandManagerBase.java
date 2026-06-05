package mobi.beyondpod.ui.commands;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.widget.Toast;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.aggregators.AggregatorLoginHelper;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.DateTime;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.sync.ChangeSyncManager;

/* loaded from: classes.dex */
public class CommandManagerBase {
    private static final String TAG = "CommandManagerBase";
    private static final String UNABLE_TO_OPEN_URL = CoreHelper.loadResourceString(R.string.command_manager_unable_to_open_url);

    public static boolean cmdPlayPosition(int i) {
        if (i < 0 || i >= BeyondPodApplication.getInstance().playList().playlistSize()) {
            return false;
        }
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
        intent.setAction(MediaPlaybackService.SERVICECMD);
        intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDOPEN_AND_PLAY);
        intent.putExtra(MediaPlaybackService.TRACKPOS, i);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            return true;
        }
        BeyondPodApplication.getInstance().startService(intent);
        return true;
    }

    public static void cmdStopPlayback() {
        if (BeyondPodApplication.getInstance().playList().currentTrack() != null) {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDSTOP);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }
    }

    public static void cmdLoadCurrentTrack() {
        loadCurrentTrackIfNeeded(true);
    }

    public static void cmdLoadCurrentTrackIfNeeded() {
        loadCurrentTrackIfNeeded(false);
    }

    private static void loadCurrentTrackIfNeeded(boolean z) {
        if (BeyondPodApplication.getInstance().playList().currentTrack() != null) {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMD_LOAD_CURRENT_TRACK);
            intent.putExtra(MediaPlaybackService.CMD_FORCE_LOAD_ON_LOAD, z);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }
    }

    public static void cmdSwitchPlayerForCurrentTrack(boolean z) {
        if (BeyondPodApplication.getInstance().playList().currentTrack() != null) {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMD_LOAD_CURRENT_TRACK);
            intent.putExtra(MediaPlaybackService.CMD_START_PLAYBACK_ON_LOAD, z);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }
    }

    public static void cmdPlayNextTrack() {
        if (BeyondPodApplication.getInstance().playList().currentTrack() != null) {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMD_PLAY_NEXT);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }
    }

    public static void cmdPlayPreviousTrack() {
        if (BeyondPodApplication.getInstance().playList().currentTrack() != null) {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMD_PLAY_PREVIOUS);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }
    }

    public static void cmdUpdateFeeds(final FeedList feedList, final boolean z) {
        if (feedList.size() <= 1 || !PolicyManager.checkAndNotifyIfInDownloadRestrictedMode()) {
            Configuration.setUnableToEstablishWiFiConnectionInThisSession(false);
            try {
                AggregatorLoginHelper.syncItemStatus(new AggregatorLoginHelper.GSyncStatusResult() { // from class: mobi.beyondpod.ui.commands.CommandManagerBase.1
                    @Override // mobi.beyondpod.aggregators.AggregatorLoginHelper.GSyncStatusResult
                    public void syncCompleted(boolean z2, int i, int i2) {
                        try {
                            ChangeSyncManager.syncChanges(new ChangeSyncManager.ChangeSyncStatusResult() { // from class: mobi.beyondpod.ui.commands.CommandManagerBase.1.1
                                @Override // mobi.beyondpod.sync.ChangeSyncManager.ChangeSyncStatusResult
                                public void syncCompleted(boolean z3) {
                                    UpdateAndDownloadManager.startUpdateDownload(FeedList.this, z);
                                }
                            });
                        } catch (Exception e) {
                            CoreHelper.logException(CommandManagerBase.TAG, "Unable to start Episode Sync!", e);
                            UpdateAndDownloadManager.startUpdateDownload(FeedList.this, z);
                        }
                    }
                });
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Unable to start Reader Sync!", e);
                UpdateAndDownloadManager.startUpdateDownload(feedList, z);
            }
        }
    }

    public static void cmdResumePlayback() {
        if (BeyondPodApplication.getInstance().playList().currentTrack() == null || BeyondPodApplication.getInstance().playList().currentTrack().getCurrentPlayState() != 0) {
            return;
        }
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
        intent.setAction(MediaPlaybackService.SERVICECMD);
        intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDRESUME);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
        } else {
            BeyondPodApplication.getInstance().startService(intent);
        }
    }

    public static void cmdPauseAudioPlayback() {
        if (BeyondPodApplication.getInstance().playList().currentTrack() == null || BeyondPodApplication.getInstance().playList().currentTrack().getCurrentPlayState() != 1) {
            return;
        }
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
        intent.setAction(MediaPlaybackService.SERVICECMD);
        intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDPAUSE);
        if (CoreHelper.isOreoCompatible()) {
            ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
        } else {
            BeyondPodApplication.getInstance().startService(intent);
        }
    }

    public static boolean CmdPlaySmartPlayList(int i, Context context) {
        BeyondPodApplication.getInstance().executeCommandPlaySmartPlayList(i, context);
        return true;
    }

    public static void cmdSuggestFeature(Context context) {
        cmdSendEMail(context, "support@beyondpod.mobi", "I want to suggest a Feature in BeyondPod", "My device is running BeyondPod " + Configuration.productVersion() + LicenseManager.getShortLicenseKind() + " on " + Build.MANUFACTURER + " " + Build.MODEL + " with Android " + Build.VERSION.RELEASE + "\n\nIt would be nice if BeyondPod...\n\n\n\n", null, true);
    }

    public static void cmdSendEMail(Context context, String str, CharSequence charSequence, CharSequence charSequence2, String str2, boolean z) {
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent buildShareIntent = buildShareIntent(context, str, charSequence, charSequence2, str2, z);
            if (buildShareIntent.resolveActivity(packageManager) != null) {
                context.startActivity(Intent.createChooser(buildShareIntent, null));
            }
        } catch (Exception unused) {
            Toast.makeText(context, "Unable to find an application that can send e-mail!", 1).show();
        }
    }

    public static Intent buildShareIntent(Context context, String str, CharSequence charSequence, CharSequence charSequence2, String str2, boolean z) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(z ? "plain/text" : "text/plain");
        String[] strArr = new String[0];
        if (!StringUtils.isNullOrEmpty(str)) {
            strArr = str.split(",\\s+");
        }
        intent.putExtra("android.intent.extra.EMAIL", strArr);
        intent.putExtra("android.intent.extra.SUBJECT", charSequence);
        intent.putExtra("android.intent.extra.TEXT", charSequence2);
        intent.setFlags(268435456);
        if (!StringUtils.isNullOrEmpty(str2)) {
            Uri uriForFile = FileProvider.getUriForFile(context, "mobi.beyondpod.evo.BackupRestoreFragment", new File(str2));
            intent.addFlags(1);
            intent.putExtra("android.intent.extra.STREAM", uriForFile);
        }
        return intent;
    }

    public static void cmdEmptyPlaylist(boolean z, boolean z2) {
        PlayList playList = BeyondPodApplication.getInstance().playList();
        ArrayList arrayList = new ArrayList();
        for (Track track : playList.getTracks()) {
            if (z || (track.getCurrentPlayState() != 1 && track.getCurrentPlayState() != 3 && track.getCurrentPlayState() != 6)) {
                if (z2 || playList.currentTrack() != track) {
                    arrayList.add(track);
                }
            }
        }
        if (arrayList.size() > 0) {
            playList.removeTracks(arrayList);
        }
    }

    public static Intent buildShareEpisodeIntent(Context context, Track track) {
        String str = null;
        if (context == null || track == null || !track.hasUrl()) {
            return null;
        }
        String defaultSendToMailAddress = Configuration.getDefaultSendToMailAddress();
        String displayName = track.displayName();
        String buildEpisodeShareBody = buildEpisodeShareBody(track);
        if (Configuration.attachDownloadedPodcastsWhenSharing() && track.isFullyDownloaded()) {
            str = track.trackPath();
        }
        return buildShareIntent(context, defaultSendToMailAddress, displayName, buildEpisodeShareBody, str, false);
    }

    public static void cmdSharePodcast(Context context, Track track) {
        if (context == null || track == null || !track.hasUrl()) {
            return;
        }
        cmdSendEMail(context, Configuration.getDefaultSendToMailAddress(), track.displayName(), buildEpisodeShareBody(track), (Configuration.attachDownloadedPodcastsWhenSharing() && track.isFullyDownloaded()) ? track.trackPath() : null, false);
        AnalyticsTracker.onEpisodeShared();
    }

    public static void cmdSharePost(Context context, Feed feed, RssFeedItem rssFeedItem) {
        if (context == null || rssFeedItem == null) {
            return;
        }
        cmdSendEMail(context, Configuration.getDefaultSendToMailAddress(), rssFeedItem.Title.toString(), buildEpisodeShareBody(feed, rssFeedItem), null, false);
        AnalyticsTracker.onEpisodeShared();
    }

    public static void cmdShareFeed(Context context, Feed feed) {
        if (context == null || feed == null) {
            return;
        }
        cmdSendEMail(context, Configuration.getDefaultSendToMailAddress(), feed.getName(), buildFeedShareBody(feed), null, false);
        AnalyticsTracker.onFeedShared();
    }

    private static String buildFeedShareBody(Feed feed) {
        return feed.getName() + " - " + feed.getFeedUrl();
    }

    private static String buildEpisodeShareBody(Track track) {
        StringBuilder sb = new StringBuilder(track.trackDescription());
        sb.append("\n\n");
        if (!StringUtils.isNullOrEmpty(track.totalTimeAsString())) {
            sb.append("* duration: ");
            sb.append(track.totalTimeAsString());
        }
        if (track.isPartialyPlayed()) {
            sb.append(", Played: ");
            sb.append(track.playedTimeAsString());
        }
        if (track.getLastModifiedDate() != null) {
            sb.append("\n\n* Published: ");
            sb.append(DateTime.toShortString(track.getLastModifiedDate()));
        }
        sb.append("\n\n* Episode Download Link");
        if (track.getDownloadSize() > 30720) {
            sb.append(" (");
            sb.append(CoreHelper.getFileLengthAsString(Long.valueOf(track.getDownloadSize())));
            sb.append(")");
        }
        sb.append(": ");
        sb.append(track.getUrl());
        if (!StringUtils.isNullOrEmpty(track.trackPostUrl())) {
            sb.append("\n\n* Show Notes: ");
            sb.append(track.trackPostUrl());
        }
        sb.append("\n\n* Episode feed: ");
        sb.append(track.getParentFeed().getName());
        sb.append(" - ");
        sb.append(track.getParentFeed().getFeedUrl());
        return sb.toString();
    }

    private static String buildEpisodeShareBody(Feed feed, RssFeedItem rssFeedItem) {
        StringBuilder sb = new StringBuilder(rssFeedItem.shortTaglessDescription());
        sb.append("\n\n");
        if (rssFeedItem.pubDate() != null) {
            sb.append("* Published: ");
            sb.append(DateTime.toShortString(rssFeedItem.pubDate()));
        }
        if (rssFeedItem.enclosure() != null) {
            sb.append("\n\n* Episode Download Link");
            if (rssFeedItem.enclosure().enclosureFileLength() != null && rssFeedItem.enclosure().enclosureFileLength().longValue() > 30720) {
                sb.append(" (");
                sb.append(rssFeedItem.enclosure().enclosureSizeAsString());
                sb.append(")");
            }
            sb.append(": ");
            sb.append(rssFeedItem.enclosure().Url);
        }
        if (!StringUtils.isNullOrEmpty(rssFeedItem.Link)) {
            if (rssFeedItem.enclosure() != null) {
                sb.append("\n\n* Show Notes: ");
            } else {
                sb.append("\n\n* Post Link: ");
            }
        }
        sb.append(rssFeedItem.Link);
        if (rssFeedItem.enclosure() != null) {
            sb.append("\n\n* Episode feed: ");
        } else {
            sb.append("\n\n* feed: ");
        }
        sb.append(feed.getName());
        sb.append(" - ");
        sb.append(feed.getFeedUrl());
        return sb.toString();
    }

    public static void cmdOpenExternalBrowser(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.setFlags(268435456);
            BeyondPodApplication.getInstance().startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(BeyondPodApplication.getInstance(), UNABLE_TO_OPEN_URL + "\n\n" + e.getMessage(), 1).show();
        }
    }

    public static void cmdStartPurchaseUnlockKeyIntent() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Configuration.getUnlocKeyAppStoreIntent());
        intent.addFlags(268435456);
        BeyondPodApplication.getInstance().startActivity(intent);
    }

    public static void cmdLoadPlaylistAndPlayTrack(List<Track> list, Track track, boolean z) {
        BeyondPodApplication.getInstance().playList().loadTracks(list, z);
        cmdPlayPosition(BeyondPodApplication.getInstance().playList().getTrackPosition(track));
    }

    public static void cmdSkipToEnd() {
        AnalyticsTracker.onSkipToEnd();
        if (BeyondPodApplication.getInstance().playList().currentTrack() != null) {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMD_SKIP_TO_END);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }
    }
}
