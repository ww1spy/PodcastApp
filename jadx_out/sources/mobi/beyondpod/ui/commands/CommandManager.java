package mobi.beyondpod.ui.commands;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.app.FragmentActivity;
import android.support.v4.content.ContextCompat;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.evo.ApplicationCmdEvents;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.Feed;
import mobi.beyondpod.rsscore.FeedList;
import mobi.beyondpod.rsscore.FeedSorter;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.TrackList;
import mobi.beyondpod.rsscore.TrackSorter;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.AnalyticsTracker;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.repository.FlashStorageLocation;
import mobi.beyondpod.rsscore.repository.RepositoryEvents;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.rss.ItemStateHistory;
import mobi.beyondpod.rsscore.rss.PolicyManager;
import mobi.beyondpod.rsscore.rss.RssFeedCache;
import mobi.beyondpod.rsscore.rss.entities.RssEnclosure;
import mobi.beyondpod.rsscore.rss.entities.RssFeedItem;
import mobi.beyondpod.schedulercore.OperationBase;
import mobi.beyondpod.schedulercore.OperationUpdateCategory;
import mobi.beyondpod.schedulercore.ScheduledTask;
import mobi.beyondpod.schedulercore.ScheduledTasksManager;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.services.player.smartplay.CategoryPlaylistTemplate;
import mobi.beyondpod.services.player.smartplay.SmartPlaylist;
import mobi.beyondpod.services.player.smartplay.SmartPlaylistManager;
import mobi.beyondpod.ui.commands.RefreshVirtualFeedTask;
import mobi.beyondpod.ui.core.FeedImageCache;
import mobi.beyondpod.ui.dialogs.CategoryPropertiesActivity;
import mobi.beyondpod.ui.dialogs.ClearCachesDialog;
import mobi.beyondpod.ui.dialogs.DeleteCategoryDialog;
import mobi.beyondpod.ui.dialogs.DeleteFeedDialog;
import mobi.beyondpod.ui.dialogs.DeletePodcastDialog;
import mobi.beyondpod.ui.dialogs.DisableGoogleReaderDialog;
import mobi.beyondpod.ui.dialogs.GoogleReaderLoginDialog;
import mobi.beyondpod.ui.dialogs.PurchaseUnlockKeyDialog;
import mobi.beyondpod.ui.dialogs.ScheduledUpdatesActivity;
import mobi.beyondpod.ui.settings.SettingsView;
import mobi.beyondpod.ui.views.FileViewActivity;
import mobi.beyondpod.ui.views.HtmlViewActivity;
import mobi.beyondpod.ui.views.MasterView;
import mobi.beyondpod.ui.views.MovieView;
import mobi.beyondpod.ui.views.SmartPlaylistEditorView;
import mobi.beyondpod.ui.views.UpdateAndDownloadQueueActivityDialog;
import mobi.beyondpod.ui.views.contentview.FeedItemContentViewPager;
import mobi.beyondpod.ui.views.contentview.FeedSource;
import mobi.beyondpod.ui.views.feedsettings.FeedPropertiesView;
import mobi.beyondpod.ui.views.impexp.AddFeedView;
import mobi.beyondpod.ui.views.impexp.ExportToOPMLDialog;
import mobi.beyondpod.ui.views.impexp.ImportFeedsView;
import mobi.beyondpod.ui.views.notifications.UserNotificationManager;
import mobi.beyondpod.ui.views.onboarding.GuidedTour;
import mobi.beyondpod.ui.views.publishedepisodes.FeedPreviewActivity;

/* loaded from: classes.dex */
public class CommandManager extends CommandManagerBase {
    private static final String TAG = "CommandManager";
    private static final String PER_CATEGORY = CoreHelper.loadResourceString(R.string.scheduling_method_per_category);
    private static final String SINGLE_SCHEDULE = CoreHelper.loadResourceString(R.string.scheduling_method_single_schedule);
    private static final String SELECT_UPDATE_SCHEDULE = CoreHelper.loadResourceString(R.string.scheduling_method_title);
    private static final String PICK_SCHEDULING_METHOD = CoreHelper.loadResourceString(R.string.scheduling_method_msg);
    private static final String BEYOND_POD_FEED_SEARCH = CoreHelper.loadResourceString(R.string.command_manager_beyondpod_feed_search);
    private static final String UPDATE_AND_DOWNLOAD_LOG = CoreHelper.loadResourceString(R.string.command_manager_update_and_download_log);
    private static final String THERE_IS_NOTHING_TO_PLAY = CoreHelper.loadResourceString(R.string.command_manager_there_is_nothing_to_play);
    private static final String UNABLE_TO_START_EXTERNAL_PLAYER = CoreHelper.loadResourceString(R.string.command_manager_unable_to_start_external_player);
    private static final String UNABLE_TO_START_VIDEO_PLAYER = CoreHelper.loadResourceString(R.string.command_manager_unable_to_start_video_player);

    public static void cmdShowGlobalSettings() {
        startActivity(new Intent(BeyondPodApplication.getInstance(), (Class<?>) SettingsView.class));
    }

    public static void cmdShowAdvancedSettings() {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) SettingsView.class);
        intent.setType(SettingsView.ADVANCED_PREFERENCES_KEY);
        startActivity(intent);
    }

    public static void cmdShowDeveloperSettings() {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) SettingsView.class);
        intent.setType(SettingsView.DEVELOPER_PREFERENCES_KEY);
        startActivity(intent);
    }

    public static boolean cmdPlayFeedEpisodes(Context context, Feed feed, int i) {
        if (feed == null) {
            return false;
        }
        TrackList trackList = new TrackList();
        PlayList playList = BeyondPodApplication.getInstance().playList();
        Iterator<Track> it = feed.tracksAndSubTracks().iterator();
        while (it.hasNext()) {
            Track next = it.next();
            if (!next.isPlayed() && (playList.canAddToPlaylist(next) || playList.hasTrack(next))) {
                trackList.add(next);
            }
        }
        if (trackList.size() <= 0) {
            return false;
        }
        if (i == 100) {
            Collections.shuffle(trackList, new Random(System.nanoTime()));
        } else {
            Collections.sort(trackList, new TrackSorter(i));
        }
        if (Configuration.autoPlaylistEnabled()) {
            cmdEmptyPlaylist(true, true);
        } else if (!PlayList.isEmpty()) {
            cmdAddToPlaylist(trackList);
        }
        return !PlayList.isCurrentlyPlaying() && playTracksInternal(context, trackList, trackList.get(0), true, false);
    }

    public static boolean cmdPlayAllInCategory(Context context) {
        AnalyticsTracker.onCommand("cmdPlayAllInCategory", "");
        List<Track> generatePlaylist = CategoryPlaylistTemplate.generatePlaylist(Configuration.getActiveFeedCategory(), -1, Configuration.getPodcastsSortOrder(), -2, new ArrayList());
        if (generatePlaylist.size() > 0) {
            return playTracksInternal(context, generatePlaylist, generatePlaylist.get(0), false, false);
        }
        return false;
    }

    public static boolean cmdPlayPauseTrack(Context context, Track track, List<Track> list) {
        if (track.getCurrentPlayState() == 0) {
            CommandManagerBase.cmdResumePlayback();
        } else if (track.getCurrentPlayState() == 1) {
            CommandManagerBase.cmdPauseAudioPlayback();
        } else {
            if (!PlayList.allowStreaming(track)) {
                cmdNotifyStreamingNotAllowed(context);
                return false;
            }
            if (!BeyondPodApplication.getInstance().playList().hasTrack(track) && Configuration.autoPlaylistEnabled()) {
                if (list == null || list.size() == 0) {
                    list = new TrackList();
                    list.add(track);
                }
                return playTracksInternal(context, list, track, true, false);
            }
            return cmdPlayTrack(context, track);
        }
        return false;
    }

    public static boolean cmdPlayTrack(Context context, Track track) {
        TrackList trackList = new TrackList();
        trackList.add(track);
        if (track.contentType() != 3 && !PlayList.isEmpty()) {
            BeyondPodApplication.getInstance().playList().addTracks(trackList);
        }
        return playTracksInternal(context, trackList, track, true, false);
    }

    private static boolean playTracksInternal(Context context, List<Track> list, Track track, boolean z, boolean z2) {
        if (track == null || list == null || list.size() == 0) {
            return false;
        }
        if (((track.contentType() == 1 || track.contentType() == -1) && (Configuration.playerIntegrationType() == 0 || Configuration.playerIntegrationType() == 1)) || (track.contentType() == 2 && (Configuration.playerIntegrationType() == 0 || Configuration.playerIntegrationType() == 2))) {
            int trackPosition = BeyondPodApplication.getInstance().playList().getTrackPosition(track);
            if (trackPosition >= 0 && z) {
                return cmdPlayPosition(trackPosition);
            }
            CoreHelper.writeTraceEntryInDebug(TAG, "Manually modified: " + PlayList.isManuallyModified() + ", Allow Append: " + z);
            if (!PlayList.isManuallyModified() || PlayList.isEmpty() || !z) {
                cmdLoadPlaylistAndPlayTrack(list, track, z2);
                return true;
            }
            if (!Configuration.autoPlaylistEnabled()) {
                BeyondPodApplication.getInstance().playList().addTrack(track);
                return cmdPlayPosition(BeyondPodApplication.getInstance().playList().getTrackPosition(track));
            }
            if (UserNotificationManager.isNotificationEnabledFor(10)) {
                askForReplaceAppend(context, list, track, z2);
            } else {
                cmdLoadPlaylistAndPlayTrack(list, track, z2);
            }
            return false;
        }
        if (track.contentType() == 2) {
            cmdPlayMovie(context, track);
        } else {
            cmdOpenExternalPlayer(context, track);
        }
        return false;
    }

    private static void askForReplaceAppend(final Context context, final List<Track> list, final Track track, final boolean z) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.append_replace_playlist_view, (ViewGroup) null);
        inflate.setMinimumHeight(IHttpClient.SC_MULTIPLE_CHOICES);
        final CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.remember_answer);
        ((TextView) inflate.findViewById(R.id.dlg_message)).setGravity(8388611);
        final RadioGroup radioGroup = (RadioGroup) inflate.findViewById(R.id.speedupOptions);
        radioGroup.check(R.id.soReplace);
        radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.1
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                if (i == R.id.soAppend) {
                    checkBox.setText(R.string.warn_replace_pls_donotask_append);
                } else {
                    checkBox.setText(R.string.warn_replace_pls_donotask_replace);
                }
            }
        });
        new AlertDialog.Builder(context).setTitle(R.string.warn_replace_pls_title).setView(inflate).setPositiveButton(R.string.alert_dialog_ok, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (radioGroup.getCheckedRadioButtonId() == R.id.soReplace) {
                    if (checkBox.isChecked()) {
                        UserNotificationManager.setNotificationPreferenceFor(10, false);
                        Toast.makeText(context, R.string.warn_replace_pls_donotask_tip, 1).show();
                    }
                    CommandManagerBase.cmdLoadPlaylistAndPlayTrack(list, track, z);
                    return;
                }
                if (radioGroup.getCheckedRadioButtonId() == R.id.soAppend) {
                    if (checkBox.isChecked()) {
                        Configuration.setAutoPlaylistEnabled(false);
                        Toast.makeText(context, R.string.warn_replace_pls_donotask_tip, 1).show();
                    }
                    CommandManager.cmdPlayTrack(context, track);
                }
            }
        }).setNegativeButton(R.string.alert_dialog_cancel, (DialogInterface.OnClickListener) null).create().show();
    }

    public static void cmdPlayMovie(Context context, Track track) {
        if (Configuration.playerIntegrationType() == 0 || Configuration.playerIntegrationType() == 2) {
            cmdPlayMovieInternalPlayer(context, track);
        } else {
            cmdOpenExternalPlayer(context, track);
        }
    }

    public static void cmdPlayMovieInternalPlayer(Context context, Track track) {
        try {
            cmdPauseAudioPlayback();
            if (ChromecastDevice.isConnected()) {
                TrackList trackList = new TrackList();
                trackList.add(track);
                cmdAddToPlaylist(trackList);
                cmdPlayPosition(BeyondPodApplication.getInstance().playList().getTrackPosition(track));
                return;
            }
            Intent intent = new Intent(context, (Class<?>) MovieView.class);
            intent.setAction(track.trackPath());
            intent.addFlags(268435456);
            BeyondPodApplication.getInstance().startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(BeyondPodApplication.getInstance(), UNABLE_TO_START_VIDEO_PLAYER + "\n\n" + e.getMessage(), 1).show();
        }
    }

    public static void cmdSendMediaCommandToVideoPlayer(Context context, Intent intent) {
        try {
            Intent intent2 = new Intent(context, (Class<?>) MovieView.class);
            intent2.setAction(MediaPlaybackService.SERVICECMD);
            intent2.putExtra(MediaPlaybackService.CMDNAME, intent.getStringExtra(MediaPlaybackService.CMDNAME));
            intent2.addFlags(268435456);
            BeyondPodApplication.getInstance().startActivity(intent2);
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to send Media Command to Video Player", e);
        }
    }

    public static Track prepareEnclosureForPlayback(Context context, RssFeedItem rssFeedItem, boolean z, boolean z2) {
        if (rssFeedItem == null || rssFeedItem.enclosure() == null) {
            return null;
        }
        Track localEnclosureTrack = rssFeedItem.enclosure().getLocalEnclosureTrack();
        if (localEnclosureTrack == null) {
            if (rssFeedItem.isMockItem().booleanValue()) {
                if (context != null) {
                    Toast.makeText(context, R.string.player_trying_to_play_deleted_episode, 0).show();
                }
                return null;
            }
            localEnclosureTrack = findOrCreateStreamableTrack(rssFeedItem, z);
            if (localEnclosureTrack != null) {
                rssFeedItem.setRead(false);
            }
        }
        if (localEnclosureTrack == null) {
            if (context != null) {
                cmdNotifyStreamingNotAllowed(context);
            }
            return null;
        }
        if (z2 && localEnclosureTrack.isPlayed()) {
            cmdSetPlayedState(localEnclosureTrack, false);
        }
        return localEnclosureTrack;
    }

    @Nullable
    private static Track findOrCreateStreamableTrack(RssFeedItem rssFeedItem, boolean z) {
        RssEnclosure enclosure = rssFeedItem.enclosure();
        if (enclosure == null) {
            return null;
        }
        Track localEnclosureTrack = enclosure.getLocalEnclosureTrack();
        if (localEnclosureTrack == null) {
            if (!z && Configuration.allowEpisodeStreaming() == 2) {
                return null;
            }
            Feed findFeedByIdInTempOrRepository = Configuration.findFeedByIdInTempOrRepository(enclosure.Parent.originatingFeedID());
            if (findFeedByIdInTempOrRepository != null && (localEnclosureTrack = RssFeedCache.createStreamableTrackFromEnclosure(findFeedByIdInTempOrRepository, enclosure, true)) != null && rssFeedItem.getRead()) {
                ItemStateHistory.clearItemReadStatus(rssFeedItem);
            }
        }
        return localEnclosureTrack;
    }

    public static void cmdAddRemoveToPlaylist(Context context, Track track) {
        if (track == null) {
            return;
        }
        TrackList trackList = new TrackList();
        trackList.add(track);
        PlayList playList = BeyondPodApplication.getInstance().playList();
        if (playList.hasTrack(track)) {
            cmdRemoveFromPlaylist(trackList);
        } else if (!playList.canAddToPlaylist(track)) {
            cmdNotifyStreamingNotAllowed(context);
        } else {
            cmdAddToPlaylist(trackList);
        }
    }

    public static void cmdAddToPlaylist(TrackList trackList) {
        AnalyticsTracker.onCommand("cmdAddToPlaylist", "");
        BeyondPodApplication.getInstance().playList().addTracks(trackList);
    }

    public static void cmdRemoveFromPlaylist(TrackList trackList) {
        AnalyticsTracker.onCommand("cmdRemoveFromPlaylist", "");
        BeyondPodApplication.getInstance().playList().removeTracks(trackList);
    }

    public static void cmdOpenExternalPlayer(Context context, final Track track) {
        UserNotificationManager.warnAboutPlaybackInExternalPlayer(context, new UserNotificationManager.OnContinueListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.3
            /* JADX WARN: Removed duplicated region for block: B:10:0x0049 A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:3:0x0001, B:5:0x001d, B:10:0x0049, B:11:0x004c, B:13:0x0059, B:14:0x0073, B:17:0x008c, B:19:0x00b9, B:21:0x00c5, B:24:0x00f1, B:26:0x006c, B:27:0x0029, B:30:0x0032, B:31:0x0038), top: B:2:0x0001 }] */
            /* JADX WARN: Removed duplicated region for block: B:13:0x0059 A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:3:0x0001, B:5:0x001d, B:10:0x0049, B:11:0x004c, B:13:0x0059, B:14:0x0073, B:17:0x008c, B:19:0x00b9, B:21:0x00c5, B:24:0x00f1, B:26:0x006c, B:27:0x0029, B:30:0x0032, B:31:0x0038), top: B:2:0x0001 }] */
            /* JADX WARN: Removed duplicated region for block: B:16:0x008b  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x006c A[Catch: Exception -> 0x00ff, TryCatch #0 {Exception -> 0x00ff, blocks: (B:3:0x0001, B:5:0x001d, B:10:0x0049, B:11:0x004c, B:13:0x0059, B:14:0x0073, B:17:0x008c, B:19:0x00b9, B:21:0x00c5, B:24:0x00f1, B:26:0x006c, B:27:0x0029, B:30:0x0032, B:31:0x0038), top: B:2:0x0001 }] */
            @Override // mobi.beyondpod.ui.views.notifications.UserNotificationManager.OnContinueListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onContinue() {
                /*
                    Method dump skipped, instructions count: 332
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.ui.commands.CommandManager.AnonymousClass3.onContinue():void");
            }
        });
    }

    public static void cmdTogglePlayedState(Track track) {
        cmdSetPlayedState(track, !track.isPlayed());
    }

    public static void cmdSetPlayedState(Track track, boolean z) {
        if (!z) {
            track.clearPlayed();
            ItemStateHistory.markTracksItemAsUnRead(track);
        } else {
            track.markPlayed();
            ItemStateHistory.markTracksItemAsRead(track);
        }
    }

    public static void cmdEditFeed(Feed feed, int i) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) FeedPropertiesView.class);
        intent.setType(feed.id().toString());
        intent.putExtra("FocusControl", i);
        startActivity(intent);
    }

    public static void cmdEditCategory(Context context, FeedCategory feedCategory) {
        Intent intent = new Intent(context, (Class<?>) CategoryPropertiesActivity.class);
        intent.putExtra("categoryValue", feedCategory.value());
        context.startActivity(intent);
    }

    public static void cmdAddNewCategory(Context context) {
        context.startActivity(new Intent(context, (Class<?>) CategoryPropertiesActivity.class));
    }

    public static void cmdStopAllUpdates() {
        if (UpdateAndDownloadManager.isWorking()) {
            UpdateAndDownloadManager.terminateAll();
        } else if (EnclosureDownloadManager.isDownloading()) {
            EnclosureDownloadManager.terminateAllDownloads();
        }
    }

    public static void cmdDeletePodcasts(Context context, TrackList trackList) {
        AnalyticsTracker.onCommand("CmdDeleteEpisodes", null);
        DeletePodcastDialog.showDialog(context, trackList);
    }

    public static void cmdDeleteFeed(Context context, Feed feed) {
        AnalyticsTracker.onCommand("cmdDeleteFeed", null);
        DeleteFeedDialog.showDialog(context, feed);
    }

    public static void cmdDeleteCategory(Context context, FeedCategory feedCategory) {
        AnalyticsTracker.onCommand("cmdDeleteCategory", null);
        DeleteCategoryDialog.showDialog(context, feedCategory);
    }

    public static void cmdClearCaches(Context context) {
        ClearCachesDialog.showDialog(context);
    }

    public static void cmdUnlockBeyondPod(Context context) {
        File firstDownloadedUnlockKey = CoreHelper.getFirstDownloadedUnlockKey();
        if (firstDownloadedUnlockKey == null) {
            AnalyticsTracker.onCommand("CmdOpenPurchaseKeyDialog", "");
            PurchaseUnlockKeyDialog.showDialog(context);
        } else {
            AnalyticsTracker.onCommand("CmdInstallUnlockKey", "");
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.fromFile(firstDownloadedUnlockKey), "application/vnd.android.package-archive");
            startActivity(intent);
        }
    }

    public static void cmdOpenWelcomePage(Uri uri, CharSequence charSequence) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) HtmlViewActivity.class);
        intent.setData(uri);
        intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, charSequence);
        intent.putExtra("HasBottomToolbar", true);
        startActivity(intent);
    }

    public static void cmdStartHtmlViewActivity(Uri uri, CharSequence charSequence, boolean z) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) HtmlViewActivity.class);
        intent.setData(uri);
        intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, charSequence);
        intent.putExtra("IsFeedContentLink", z);
        startActivity(intent);
    }

    public static void cmdOpenFeedSearch(String str) {
        AnalyticsTracker.onCommand("cmdOpenFeedSearch", "");
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) AddFeedView.class);
        intent.putExtra("Query", str);
        intent.putExtra(SettingsJsonConstants.PROMPT_TITLE_KEY, BEYOND_POD_FEED_SEARCH);
        startActivity(intent);
    }

    public static void cmdOpenImportFeeds(int i) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) ImportFeedsView.class);
        intent.putExtra("#TYPE#", i);
        startActivity(intent);
    }

    public static void cmdOpenAddFeedDialog() {
        startActivity(new Intent(BeyondPodApplication.getInstance(), (Class<?>) AddFeedView.class));
    }

    public static void cmdOpenGReaderLogin(Context context) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) GoogleReaderLoginDialog.class);
        intent.putExtra("LoginOnly", 1);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public static void cmdOpenOPMLExportDialog(Context context) {
        ExportToOPMLDialog.showDialog(context);
    }

    public static void cmdDisconnectAggregatorDialog() {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) DisableGoogleReaderDialog.class);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public static void cmdOpenGuidedTour(int i, FragmentActivity fragmentActivity) {
        Intent intent = new Intent(fragmentActivity, (Class<?>) GuidedTour.class);
        intent.putExtra("TourType", i);
        fragmentActivity.startActivity(intent);
    }

    public static void cmdExit() {
        BeyondPodApplication.messageBus.publishEvent(new ApplicationCmdEvents.CloseMasterViewEvent(BeyondPodApplication.getInstance()));
        if (MediaPlaybackService.ServiceIsRunning) {
            cmdStopPlayback();
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) MediaPlaybackService.class);
            intent.setAction(MediaPlaybackService.SERVICECMD);
            intent.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMD_STOP_SERVICE);
            if (CoreHelper.isOreoCompatible()) {
                ContextCompat.startForegroundService(BeyondPodApplication.getInstance(), intent);
            } else {
                BeyondPodApplication.getInstance().startService(intent);
            }
        }
        RepositoryPersistence.repositoryHandler().post(new Runnable() { // from class: mobi.beyondpod.ui.commands.CommandManager.4
            @Override // java.lang.Runnable
            public void run() {
                ItemStateHistory.saveHistorySync();
                StartupContentBuilder.backupRepositoriesSync();
                BeyondPodApplication.getInstance().shutdown();
            }
        });
    }

    public static void cmdSetUpdateSchedule(final FeedCategory feedCategory, final Context context, boolean z) {
        FeedCategory categoryByValue;
        if (context == null) {
            return;
        }
        AnalyticsTracker.onCommand("cmdSetUpdateSchedule", "");
        if (PolicyManager.checkAndNotifyIfInScheduleRestrictedMode()) {
            return;
        }
        if (!z && feedCategory != null) {
            configureUpdateScheduleFor(feedCategory, context);
            return;
        }
        if (ScheduledTasksManager.activeTaskCount() == 0) {
            if (CategoryManager.hasUserCategories()) {
                new AlertDialog.Builder(context).setMessage(PICK_SCHEDULING_METHOD).setTitle(SELECT_UPDATE_SCHEDULE).setPositiveButton(SINGLE_SCHEDULE, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.6
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        CommandManager.configureUpdateScheduleFor(CategoryManager.AllFeeds, context);
                    }
                }).setNegativeButton(PER_CATEGORY, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.5
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        if (FeedCategory.this != null) {
                            CommandManager.configureUpdateScheduleFor(FeedCategory.this, context);
                        } else {
                            CommandManagerBase.cmdOpenExternalBrowser(Configuration.scheduledUpdatesURL().toString());
                        }
                    }
                }).create().show();
                return;
            } else {
                configureUpdateScheduleFor(CategoryManager.AllFeeds, context);
                return;
            }
        }
        FeedCategory feedCategory2 = null;
        if (ScheduledTasksManager.activeTaskCount() > 0) {
            if (feedCategory != null) {
                configureUpdateScheduleFor(feedCategory, context);
                return;
            }
            Iterator<ScheduledTask> it = ScheduledTasksManager.activeTasks().iterator();
            while (it.hasNext()) {
                OperationBase operation = it.next().operation();
                if (operation != null && (operation instanceof OperationUpdateCategory) && (categoryByValue = CategoryManager.getCategoryByValue(((OperationUpdateCategory) operation).getCategoryToUpdate())) != null && (feedCategory2 == null || CategoryManager.Unassigned.equals(categoryByValue))) {
                    feedCategory2 = categoryByValue;
                }
            }
            if (feedCategory2 == null) {
                feedCategory2 = CategoryManager.AllFeeds;
            }
            configureUpdateScheduleFor(feedCategory2, context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void configureUpdateScheduleFor(FeedCategory feedCategory, Context context) {
        if (feedCategory != null) {
            Intent intent = new Intent(context, (Class<?>) ScheduledUpdatesActivity.class);
            intent.putExtra("categoryValue", feedCategory.value());
            context.startActivity(intent);
        }
    }

    public static void cmdViewFileContent(String str, boolean z) {
        try {
            Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) FileViewActivity.class);
            intent.setData(Uri.parse(str));
            intent.putExtra("ScrollToEnd", z);
            startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(BeyondPodApplication.getInstance().getApplicationContext(), e.getMessage(), 0).show();
        }
    }

    public static boolean cmdPlaySmartPlayList(int i, Context context) {
        SmartPlaylist smartPlaylist;
        AnalyticsTracker.onCommand("cmdPlaySmartPlayList", "");
        if (FeedRepository.repositoryLoadState() != 2 || (smartPlaylist = SmartPlaylistManager.getSmartPlaylist(i)) == null) {
            return false;
        }
        SmartPlaylistManager.setLastUsedSmartPlay(smartPlaylist);
        return cmdPlayPlaylist(context, smartPlaylist.generatePlaylist(), false);
    }

    public static void cmdLoadSmartPlayList(int i, Context context) {
        SmartPlaylist smartPlaylist;
        if (FeedRepository.repositoryLoadState() == 2 && (smartPlaylist = SmartPlaylistManager.getSmartPlaylist(i)) != null) {
            SmartPlaylistManager.setLastUsedSmartPlay(smartPlaylist);
            PlayList playList = BeyondPodApplication.getInstance().playList();
            playList.loadTracks(smartPlaylist.generatePlaylist(), false);
            if (playList.playlistSize() > 0) {
                playList.setCurrentTrack(0);
            }
        }
    }

    public static void cmdEditSmartPlayList(int i) {
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) SmartPlaylistEditorView.class);
        intent.putExtra("id", i);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public static void cmdUpdateSmartPlayList(String str) {
        AnalyticsTracker.onCommand("cmdUpdateSmartPlayList", "");
        Intent intent = new Intent(ScheduledTasksManager.SCHEDULER_ACTION);
        intent.setData(Uri.parse("bpscheduler:task/" + ScheduledTasksManager.buildAdHockSmartPlayUpdateTaskID(str)));
        intent.putExtra(ScheduledTasksManager.TASK_EXTRA, ScheduledTasksManager.buildAdHockSmartPlayUpdateTaskID(str));
        BeyondPodApplication.getInstance().getApplicationContext().sendBroadcast(intent);
    }

    public static boolean cmdPlayPlaylist(Context context, List<Track> list, boolean z) {
        if (list.size() == 0) {
            Toast.makeText(BeyondPodApplication.getInstance(), THERE_IS_NOTHING_TO_PLAY, 0).show();
            return false;
        }
        return playTracksInternal(context, list, list.get(0), false, z);
    }

    public static void cmdShowDownloadQueue() {
        startActivity(new Intent(BeyondPodApplication.getInstance(), (Class<?>) UpdateAndDownloadQueueActivityDialog.class));
    }

    public static void startActivity(Intent intent) {
        if (MasterView.master() != null) {
            MasterView.master().startActivity(intent);
        } else {
            intent.addFlags(268435456);
            BeyondPodApplication.getInstance().startActivity(intent);
        }
    }

    public static void cmdShowUpdateLog(Context context) {
        final ArrayList<File> updateLogs = CoreHelper.getUpdateLogs();
        if (updateLogs.size() == 0) {
            return;
        }
        if (updateLogs.size() == 1) {
            openLogFile(updateLogs.get(0));
            return;
        }
        String[] strArr = new String[updateLogs.size()];
        for (int i = 0; i != updateLogs.size(); i++) {
            strArr[i] = "Update Log for " + DateUtils.formatDateTime(context, updateLogs.get(i).lastModified(), 526865);
        }
        new AlertDialog.Builder(context).setItems(strArr, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                CommandManager.openLogFile((File) updateLogs.get(i2));
            }
        }).setTitle("Select Update Log").create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void openLogFile(File file) {
        cmdStartHtmlViewActivity(Uri.parse(Configuration.beyondPodContentUrl() + "/BeyondPodStorageRootPath/" + file.getName()), UPDATE_AND_DOWNLOAD_LOG, false);
    }

    public static void cmdOpenEpisodeNotes(Track track, TrackList trackList, View view, FragmentActivity fragmentActivity) {
        if (track == null) {
            return;
        }
        if (trackList == null) {
            trackList = new TrackList();
        }
        if (trackList.indexOf(track) < 0) {
            trackList.add(0, track);
        }
        String[] strArr = new String[trackList.size()];
        for (int i = 0; i != trackList.size(); i++) {
            strArr[i] = trackList.get(i).trackPath();
        }
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) FeedItemContentViewPager.class);
        intent.putExtra("CurrentEpisodeItemID", track.trackPath());
        intent.putExtra("EpisodeIds", strArr);
        openContentPagerInternal(fragmentActivity, view, intent);
    }

    public static void cmdLockTracks(Context context, TrackList trackList) {
        AnalyticsTracker.onCommand("CmdLockTrack", "");
        Iterator<Track> it = trackList.iterator();
        while (it.hasNext()) {
            Track next = it.next();
            if (next.allowAutoDelete()) {
                next.setLocked(true);
            }
        }
    }

    public static void cmdUnlockTracks(Context context, TrackList trackList) {
        AnalyticsTracker.onCommand("CmdUnLockTrack", "");
        Iterator<Track> it = trackList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Track next = it.next();
            if (next.getParentFeed().canDeleteTracks()) {
                next.setLocked(false);
            } else {
                z = true;
            }
        }
        if (z) {
            Toast.makeText(context, R.string.lock_podcast_unlock_parent_info, 1).show();
        }
    }

    public static void cmdNotifyStreamingNotAllowed(Context context) {
        if (Configuration.allowEpisodeStreaming() == 1) {
            Toast.makeText(context, R.string.player_streaming_wifi_only, 1).show();
        } else {
            Toast.makeText(context, R.string.player_streaming_disabled, 1).show();
        }
    }

    public static void cmdDownloadFeedItemsManually(Context context, ArrayList<RssFeedItem> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator<RssFeedItem> it = arrayList.iterator();
        while (it.hasNext()) {
            RssFeedItem next = it.next();
            if (next != null && next.enclosure() != null) {
                RssEnclosure enclosure = next.enclosure();
                Track localEnclosureTrack = enclosure.getLocalEnclosureTrack();
                if (localEnclosureTrack == null) {
                    localEnclosureTrack = findOrCreateStreamableTrack(next, true);
                    if (localEnclosureTrack != null) {
                        next.setRead(false);
                    }
                }
                if (localEnclosureTrack.isPlayed()) {
                    cmdSetPlayedState(localEnclosureTrack, false);
                }
                if (!localEnclosureTrack.isFullyDownloaded() && localEnclosureTrack.getDownloadStatus() != 2 && !EnclosureDownloadManager.isDownloadPending(enclosure)) {
                    arrayList2.add(new EnclosureDownloadManager.DownloadableEnclosure(localEnclosureTrack.getParentFeed(), enclosure));
                }
            }
        }
        if (arrayList2.size() > 0) {
            cmdDownloadEnclosuresManually(context, arrayList2);
        }
    }

    public static void cmdDownloadTrackManually(Context context, Track track) {
        if (track.getDownloadStatus() == 2 || track.getDownloadStatus() == 1 || track.getDownloadStatus() == 6) {
            cmdShowDownloadQueue();
        } else {
            if (EnclosureDownloadManager.isDownloadPending(track.getUrl())) {
                EnclosureDownloadManager.removeFromQueue(track.getUrl());
                return;
            }
            TrackList trackList = new TrackList();
            trackList.add(track);
            cmdDownloadTracksManually(context, trackList);
        }
    }

    public static void cmdDownloadTracksManually(Context context, TrackList trackList) {
        ArrayList arrayList = new ArrayList();
        Iterator<Track> it = trackList.iterator();
        while (it.hasNext()) {
            Track next = it.next();
            if (!next.isFullyDownloaded()) {
                File file = new File(next.trackPath());
                arrayList.add(new EnclosureDownloadManager.DownloadableEnclosure(next.getParentFeed(), new RssEnclosure(next.getUrl(), file.getParent(), file.getName(), next.contentMimeType(), next.rssItemID(), next.getDownloadSize(), next.getLastModifiedDate(), next.displayName())));
                if (arrayList.size() > 0) {
                    cmdDownloadEnclosuresManually(context, arrayList);
                }
            }
        }
    }

    public static void cmdDownloadEnclosuresManually(Context context, final ArrayList<EnclosureDownloadManager.DownloadableEnclosure> arrayList) {
        if ((arrayList.size() > 1 || EnclosureDownloadManager.isDownloading()) && PolicyManager.checkAndNotifyIfInDownloadRestrictedMode()) {
            return;
        }
        if (!EnclosureDownloadManager.isDownloading()) {
            boolean z = !Configuration.isCellularConnectionAllowed() && CoreHelper.getDeviceNetworkConnection().isConnectionCellular();
            boolean z2 = Configuration.downloadEnclosuresWhenChargingOnly() && !CoreHelper.isDevicePlugged();
            boolean z3 = Configuration.downloadEnclosuresOnWiFiOnly() && !CoreHelper.getDeviceNetworkConnection().isConnectionWiFi();
            if (z2 || z3 || z) {
                new AlertDialog.Builder(context).setTitle(R.string.dlg_user_warning_title).setMessage(z3 ? R.string.warn_force_download_on_wifi_not_connected_msg : z ? R.string.warn_force_download_on_mobile_data_msg : R.string.warn_force_download_on_device_not_plugged_in_msg).setPositiveButton(R.string.settings_push_globals_btn_yes, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.8
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        CommandManager.downloadEnclosuresManuallyInternal(arrayList, true);
                    }
                }).setNegativeButton(R.string.settings_push_globals_btn_no, (DialogInterface.OnClickListener) null).setCancelable(true).show();
                return;
            }
        }
        downloadEnclosuresManuallyInternal(arrayList, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void downloadEnclosuresManuallyInternal(ArrayList<EnclosureDownloadManager.DownloadableEnclosure> arrayList, boolean z) {
        Configuration.setUnableToEstablishWiFiConnectionInThisSession(false);
        Iterator<EnclosureDownloadManager.DownloadableEnclosure> it = arrayList.iterator();
        while (it.hasNext()) {
            EnclosureDownloadManager.DownloadableEnclosure next = it.next();
            next.feed.numDownloadedEnclosures = 0;
            next.feed.numEnclosuresAvailableForDownload++;
        }
        UpdateAndDownloadManager.downloadEnclosures(arrayList, false, z);
    }

    public static void cmdDownloadAllInPlaylistManually(Context context) {
        ArrayList arrayList = new ArrayList();
        for (Track track : BeyondPodApplication.getInstance().playList().getTracks()) {
            if (!track.isFullyDownloaded() && track.getDownloadStatus() != 2) {
                File file = new File(track.trackPath());
                RssEnclosure rssEnclosure = new RssEnclosure(track.getUrl(), file.getParent(), file.getName(), track.contentMimeType(), track.rssItemID(), track.getDownloadSize(), track.getLastModifiedDate(), track.displayName());
                if (!EnclosureDownloadManager.isDownloadPending(rssEnclosure)) {
                    arrayList.add(new EnclosureDownloadManager.DownloadableEnclosure(track.getParentFeed(), rssEnclosure));
                }
            }
        }
        if (arrayList.size() > 0) {
            cmdDownloadEnclosuresManually(context, arrayList);
        }
    }

    public static boolean cmdUpdateCurrentFeedOrCategory(Context context) {
        return cmdUpdateFeedOrCategory(context, Configuration.getActiveFeedFilter(), Configuration.getActiveFeedCategory());
    }

    public static boolean cmdUpdateFeedOrCategory(Context context, Feed feed, FeedCategory feedCategory) {
        if (UpdateAndDownloadManager.isWorking()) {
            cmdShowDownloadQueue();
            return false;
        }
        final FeedList feedList = new FeedList();
        if (feed != null) {
            if (!feed.hasUrl()) {
                refreshVirtualFeed(context, feed);
                return true;
            }
            feedList.add(feed);
        } else {
            Iterator<Feed> it = FeedRepository.getFeedsInCategory(feedCategory).iterator();
            while (it.hasNext()) {
                Feed next = it.next();
                if (next.hasUrl()) {
                    feedList.add(next);
                }
            }
        }
        if (feedList.size() > 0) {
            UserNotificationManager.warnAboutStartUpdateAndDownloadOnMobile(context, new UserNotificationManager.OnContinueListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.9
                @Override // mobi.beyondpod.ui.views.notifications.UserNotificationManager.OnContinueListener
                public void onContinue() {
                    Collections.sort(FeedList.this, new FeedSorter(Configuration.getFeedsSortOrder()));
                    CommandManager.cmdUpdateFeeds(FeedList.this, false);
                }
            });
        }
        return true;
    }

    public static boolean hasUpdatableFeedsInCategory(FeedCategory feedCategory) {
        Iterator<Feed> it = FeedRepository.getFeedsInCategory(feedCategory).iterator();
        while (it.hasNext()) {
            if (it.next().hasUrl()) {
                return true;
            }
        }
        return false;
    }

    private static void refreshVirtualFeed(Context context, Feed feed) {
        while (feed.isSubFeed()) {
            feed = feed.parentFeed();
        }
        final ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setIndeterminate(true);
        progressDialog.setMessage(CoreHelper.loadResourceString(R.string.feed_settings_checking_feed_information));
        progressDialog.setCancelable(false);
        final String loadResourceString = CoreHelper.loadResourceString(R.string.feed_settings_retrieving_feed);
        new RefreshVirtualFeedTask(new RefreshVirtualFeedTask.ITrackImageRefreshProgress() { // from class: mobi.beyondpod.ui.commands.CommandManager.10
            @Override // mobi.beyondpod.ui.commands.RefreshVirtualFeedTask.ITrackImageRefreshProgress
            public void onRefreshCompleted() {
                progressDialog.dismiss();
                BeyondPodApplication.messageBus.publishEvent(new ApplicationCmdEvents.LockMasterOrientationEvent(BeyondPodApplication.getInstance(), false));
            }

            @Override // mobi.beyondpod.ui.commands.RefreshVirtualFeedTask.ITrackImageRefreshProgress
            public void onRefreshStarted() {
                BeyondPodApplication.messageBus.publishEvent(new ApplicationCmdEvents.LockMasterOrientationEvent(BeyondPodApplication.getInstance(), true));
                progressDialog.show();
            }

            @Override // mobi.beyondpod.ui.commands.RefreshVirtualFeedTask.ITrackImageRefreshProgress
            public void onRefreshProgress(int i) {
                progressDialog.setMessage(loadResourceString + " " + i + " %");
            }
        }).execute(feed);
    }

    public static void cmdOpenFeedPreview(Uri uri, String str, String str2, boolean z) {
        if (uri == null) {
            return;
        }
        Feed createTransientFeed = Feed.createTransientFeed(uri.toString(), str);
        if (!StringUtils.isNullOrEmpty(str2)) {
            createTransientFeed.transientEpisodeUrl = str2;
        }
        if (z) {
            createTransientFeed.setType(5);
        }
        Configuration.TempFeedHolder.put(createTransientFeed.id(), createTransientFeed);
        RssFeedCache.deleteFeedCacheFor(createTransientFeed);
        FeedImageCache.deleteImageCacheFor(createTransientFeed);
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) FeedPreviewActivity.class);
        intent.setData(Uri.parse("feed://feed/" + createTransientFeed.id().toString()));
        startActivity(intent);
    }

    public static void cmdOpenItemContentDialog(FragmentActivity fragmentActivity, RssFeedItem rssFeedItem, View view) {
        if (rssFeedItem.enclosure() == null && (StringUtils.isNullOrEmpty(rssFeedItem.Description) || rssFeedItem.Description.length() < 10 || StringUtils.equalsIgnoreCase(rssFeedItem.shortTaglessDescription(), rssFeedItem.Title.toString()))) {
            FeedItemContentViewPager.doOpenOriginalSource(fragmentActivity, false, rssFeedItem.Link, rssFeedItem.Title);
            if (Configuration.markAsReadOnOpen() == 2 || (Configuration.markAsReadOnOpen() == 1 && rssFeedItem.enclosure() == null)) {
                rssFeedItem.setRead(true);
                BeyondPodApplication.messageBus.publishEventAsync(new RepositoryEvents.RepositoryEvent(15));
                return;
            }
            return;
        }
        Intent intent = new Intent(BeyondPodApplication.getInstance(), (Class<?>) FeedItemContentViewPager.class);
        intent.putExtra(FeedSource.CURRENT_ITEM_TAG, rssFeedItem.itemID());
        openContentPagerInternal(fragmentActivity, view, intent);
    }

    private static void openContentPagerInternal(FragmentActivity fragmentActivity, View view, Intent intent) {
        ActivityCompat.startActivityForResult(fragmentActivity, intent, FeedItemContentViewPager.ACTIVITY_REQUEST_ContentViewPager, view != null ? ActivityOptionsCompat.makeScaleUpAnimation(view, 0, 0, view.getWidth(), view.getHeight()).toBundle() : null);
    }

    public static void cmdDownloadEnclosure(Context context, RssFeedItem rssFeedItem, Feed feed, boolean z) {
        RssEnclosure enclosure = rssFeedItem.enclosure();
        if (feed == null || enclosure == null) {
            return;
        }
        if (enclosure.playableState() == 5) {
            cmdShowDownloadQueue();
            return;
        }
        if (EnclosureDownloadManager.isDownloadPending(enclosure)) {
            if (z) {
                EnclosureDownloadManager.removeFromQueue(enclosure);
                return;
            } else {
                cmdShowDownloadQueue();
                return;
            }
        }
        if (feed.ensureFeedHasDownloadPath()) {
            if (!FlashStorageLocation.checkIfSpaceIsAvailable(feed.getFeedPath(), enclosure.enclosureFileLength() == null ? 0L : enclosure.enclosureFileLength().longValue())) {
                long freeSpaceAtFeedDownloadPath = FlashStorageLocation.getFreeSpaceAtFeedDownloadPath(feed);
                Resources resources = context.getResources();
                Object[] objArr = new Object[3];
                objArr[0] = CoreHelper.getFileLengthAsString(enclosure.enclosureFileLength());
                objArr[1] = CoreHelper.getFileLengthAsString(Long.valueOf(freeSpaceAtFeedDownloadPath));
                objArr[2] = StringUtils.isNullOrEmpty(feed.getFeedPath()) ? Configuration.enclosureDownloadRoot() : feed.getFeedPath();
                String string = resources.getString(R.string.feed_content_insufficient_space_to_download_podcast, objArr);
                if (freeSpaceAtFeedDownloadPath < 0) {
                    string = context.getResources().getString(R.string.application_error_storage_card_corrupted);
                }
                Toast.makeText(context, string, 1).show();
                return;
            }
            cmdDownloadEnclosure(context, new EnclosureDownloadManager.DownloadableEnclosure(feed, enclosure));
        }
    }

    public static void cmdDownloadEnclosure(Context context, EnclosureDownloadManager.DownloadableEnclosure downloadableEnclosure) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(downloadableEnclosure);
        if (!EnclosureDownloadManager.isDownloading()) {
            downloadableEnclosure.feed.numDownloadedEnclosures = 0;
            downloadableEnclosure.feed.numEnclosuresAvailableForDownload = 1;
            Configuration.setUnableToEstablishWiFiConnectionInThisSession(false);
            boolean z = !Configuration.isCellularConnectionAllowed() && CoreHelper.getDeviceNetworkConnection().isConnectionCellular();
            boolean z2 = Configuration.downloadEnclosuresWhenChargingOnly() && !CoreHelper.isDevicePlugged();
            boolean z3 = Configuration.downloadEnclosuresOnWiFiOnly() && !CoreHelper.getDeviceNetworkConnection().isConnectionWiFi();
            if (z2 || z3 || z) {
                new AlertDialog.Builder(context).setTitle(R.string.dlg_user_warning_title).setMessage(z3 ? R.string.warn_force_download_on_wifi_not_connected_msg : z ? R.string.warn_force_download_on_mobile_data_msg : R.string.warn_force_download_on_device_not_plugged_in_msg).setPositiveButton(R.string.settings_push_globals_btn_yes, new DialogInterface.OnClickListener() { // from class: mobi.beyondpod.ui.commands.CommandManager.11
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        UpdateAndDownloadManager.downloadEnclosures(arrayList, false, true);
                    }
                }).setNegativeButton(R.string.settings_push_globals_btn_no, (DialogInterface.OnClickListener) null).setCancelable(true).show();
                return;
            }
        } else {
            if (PolicyManager.checkAndNotifyIfInDownloadRestrictedMode()) {
                return;
            }
            downloadableEnclosure.feed.numEnclosuresAvailableForDownload++;
        }
        UpdateAndDownloadManager.downloadEnclosures(arrayList, false, false);
    }
}
