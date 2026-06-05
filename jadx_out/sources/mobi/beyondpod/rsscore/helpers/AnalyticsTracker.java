package mobi.beyondpod.rsscore.helpers;

import android.annotation.SuppressLint;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import java.text.DecimalFormat;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.rsscore.Configuration;

/* loaded from: classes.dex */
public class AnalyticsTracker {
    private static final String CATEGORY_ANDROID_AUTO = "Android AUTO";
    private static final String CATEGORY_ANDROID_WEAR = "Android WEAR";
    private static final String CATEGORY_APPLICATION_STARTS = "Application Starts";
    private static final String CATEGORY_COMMAND = "Commands Executed";
    private static final String CATEGORY_MEDIA_PLAYBACK = "Media Playback";
    private static final String CATEGORY_PLAYER_CONTROLS = "Player Controls";
    private static final String CATEGORY_REPOSITORY = "Repository";
    private static final String CATEGORY_SHARE_PODCAST = "Share Podcast";
    private static final String CATEGORY_TASK_SCHEDULER = "Scheduled tasks";
    private static final String CATEGORY_UI_CONFIGS = "User Interface Config";
    private static final String CATEGORY_UPDATE_DOWNLOAD = "Update and Downloads";
    private static final String CATEGORY_WIDGET_COMMAND = "Widget Commands Executed";
    private static final String LABEL_VALUE = "value";
    private static final String PARAM_CARD_TYPE_ALL_PUBLISHED = "Card size All Published";
    private static final String PARAM_CARD_TYPE_MY_EPISODES = "Card size My Episodes";
    private static final String PARAM_CATEGORIES_LOADED = "Categories Loaded";
    private static final String PARAM_FEEDS_LOADED = "Feeds Loaded";
    private static final String PARAM_LICENSE_TYPE = "License type";
    private static final String PARAM_SMART_PLAY_LOADED = "SmartPlays Loaded";
    private static final String PARAM_THEME_TYPE = "Theme type";
    private static final String PARAM_TRACKS_LOADED = "tracks Loaded";
    private static final String PARAM_UPDATE_TYPE = "event type";
    private static final String TAG = "AnalyticsTracker";
    public static final int VIEW_ADD_FEED_CATEGORIES = 13;
    public static final int VIEW_ADD_FEED_INTERESTS = 15;
    public static final int VIEW_ADD_FEED_INTERNATIONAL = 14;
    public static final int VIEW_ADD_FEED_PUBLISHERS = 12;
    public static final int VIEW_ADD_FEED_RECOMMENDED = 11;
    public static final int VIEW_ADD_FEED_SEARCH = 16;
    public static final int VIEW_ADD_FEED_TRENDING = 10;
    public static final int VIEW_MASTER_MY_EPISODES_ALL_PUBLISHED = 3;
    public static final int VIEW_MASTER_MY_EPISODES_CATEGORY = 1;
    public static final int VIEW_MASTER_MY_EPISODES_FEED = 0;
    public static final int VIEW_MASTER_MY_EPISODES_VIRTUAL_FEED = 4;
    public static final int VIEW_MASTER_NAVIGATOR = 5;
    public static final int VIEW_MASTER_PLAYER_CAR_MODE = 8;
    public static final int VIEW_MASTER_PLAYER_FULL_SCREEN = 7;
    public static final int VIEW_MASTER_PLAYER_PLAYLIST_PAGER = 9;
    public static final int VIEW_MASTER_PLAYLIST = 6;
    public static final int VIEW_MASTER_WHAT_TO_PLAY = 2;
    private static DecimalFormat _PlaybackSpeedFormat = new DecimalFormat("#.#x");

    private static String getCardSizeName(int i) {
        return i == 1 ? "Full" : i == 2 ? "Medium" : "Small";
    }

    private static Tracker getAppTracker() {
        return BeyondPodApplication.getInstance().getAnalyticsTracker();
    }

    private static void onViewDisplayed(String str) {
        Tracker appTracker = getAppTracker();
        if (appTracker == null) {
            return;
        }
        appTracker.setScreenName(str);
        appTracker.send(new HitBuilders.ScreenViewBuilder().build());
    }

    public static void onViewDisplayed(int i) {
        switch (i) {
            case 0:
                onViewDisplayed("Master - feed - My Episodes");
                return;
            case 1:
                onViewDisplayed("Master - Category - My Episodes");
                return;
            case 2:
                onViewDisplayed("Master - What to Play");
                return;
            case 3:
                onViewDisplayed("Master - feed - All Published");
                return;
            case 4:
                onViewDisplayed("Master - feed Virtual - My Episodes");
                return;
            case 5:
                onViewDisplayed("Master - Navigator");
                return;
            case 6:
                onViewDisplayed("Master - Playlist");
                return;
            case 7:
                onViewDisplayed("Master - Player - Full Screen");
                return;
            case 8:
                onViewDisplayed("Master - Player - Car Mode");
                return;
            case 9:
                onViewDisplayed("Master - Player - Playlist Pager");
                return;
            case 10:
                onViewDisplayed("Add feed - Trending");
                return;
            case 11:
                onViewDisplayed("Add feed - Recommended");
                return;
            case 12:
                onViewDisplayed("Add feed - Publishers");
                return;
            case 13:
                onViewDisplayed("Add feed - Categories");
                return;
            case 14:
                onViewDisplayed("Add feed - International");
                return;
            case 15:
                onViewDisplayed("Add feed - Interests");
                return;
            case 16:
                onViewDisplayed("Add feed - Search");
                return;
            default:
                onViewDisplayed("Unknown View " + i);
                return;
        }
    }

    public static void onEvent(String str, String str2, String str3, Long l) {
        Tracker appTracker = getAppTracker();
        if (appTracker == null) {
            return;
        }
        HitBuilders.EventBuilder eventBuilder = new HitBuilders.EventBuilder();
        eventBuilder.setCategory(str);
        eventBuilder.setAction(str2);
        if (str3 != null) {
            eventBuilder.setLabel(str3);
        }
        if (l != null) {
            eventBuilder.setValue(l.longValue());
        }
        try {
            appTracker.send(eventBuilder.build());
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, "Tracker send error: " + e.getMessage());
        }
    }

    private static void onTiming(String str, long j, String str2, String str3) {
        Tracker appTracker = getAppTracker();
        if (appTracker == null) {
            return;
        }
        HitBuilders.TimingBuilder timingBuilder = new HitBuilders.TimingBuilder();
        timingBuilder.setCategory(str);
        timingBuilder.setValue(j);
        if (str2 != null) {
            timingBuilder.setVariable(str2);
        }
        if (str3 != null) {
            timingBuilder.setLabel(str3);
        }
        appTracker.send(timingBuilder.build());
    }

    @SuppressLint({"MissingPermission"})
    public static void dispatch() {
        GoogleAnalytics.getInstance(BeyondPodApplication.getInstance()).dispatchLocalHits();
    }

    public static void onApplicationStartedLocked() {
        onEvent(CATEGORY_APPLICATION_STARTS, PARAM_LICENSE_TYPE, "Trial", null);
    }

    public static void onApplicationStartedUnlocked(String str) {
        onEvent(CATEGORY_APPLICATION_STARTS, PARAM_LICENSE_TYPE, str, null);
    }

    public static void onCaptureUIConfigs() {
        onEvent(CATEGORY_UI_CONFIGS, PARAM_THEME_TYPE, Configuration.activeTheme() == 1 ? "Light theme" : "Dark Theme", null);
        onEvent(CATEGORY_UI_CONFIGS, PARAM_CARD_TYPE_ALL_PUBLISHED, getCardSizeName(Configuration.publishedEpisodeCardSize()), null);
        onEvent(CATEGORY_UI_CONFIGS, PARAM_CARD_TYPE_MY_EPISODES, getCardSizeName(Configuration.episodeCardSize()), null);
    }

    public static void onFeedShared() {
        onEvent(CATEGORY_SHARE_PODCAST, "feed Shared", null, null);
    }

    public static void onEpisodeShared() {
        onEvent(CATEGORY_SHARE_PODCAST, "Episode Shared", null, null);
    }

    public static void onAutoConnected(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            str = "Unknown";
        }
        onEvent(CATEGORY_ANDROID_AUTO, "Auto Connected", str, 1L);
    }

    public static void onWearConnected(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            str = "Unknown";
        }
        onEvent(CATEGORY_ANDROID_WEAR, "Wear Connected", str, 1L);
    }

    public static void onWearPlayEpisode() {
        onEvent(CATEGORY_ANDROID_WEAR, "Wear Play Episode", null, null);
    }

    public static void onWearPlaySmartPlay() {
        onEvent(CATEGORY_ANDROID_WEAR, "Wear Start SmartPlay", null, null);
    }

    public static void onWearPlayFromVoice() {
        onEvent(CATEGORY_ANDROID_WEAR, "Wear Play from Voice", null, null);
    }

    public static void onBatchUpdateStarted(int i) {
        onEvent(CATEGORY_UPDATE_DOWNLOAD, "feed Update", "Num Feeds", Long.valueOf(i));
    }

    public static void onBatchDownloadStarted(int i) {
        onEvent(CATEGORY_UPDATE_DOWNLOAD, "Episode Download", "Num Episodes", Long.valueOf(i));
    }

    public static void onGReaderSync(int i) {
        onEvent(CATEGORY_UPDATE_DOWNLOAD, "Feedly Sync", "Item Count", Long.valueOf(i));
    }

    public static void onChangeSync(int i) {
        onEvent(CATEGORY_UPDATE_DOWNLOAD, "Change Tracking Sync", "Change Count", Long.valueOf(i));
    }

    public static void onSystemScheduledTaskStarted(String str) {
        onEvent(CATEGORY_TASK_SCHEDULER, "System Broadcast", str, null);
    }

    public static void onBPScheduledTaskStarted(String str) {
        onEvent(CATEGORY_TASK_SCHEDULER, "Scheduled Task", null, null);
    }

    public static void onAudioPlaybackStarted(boolean z, float f) {
        onEvent(CATEGORY_MEDIA_PLAYBACK, "Audio Playback", z ? "Streaming" : "downloaded", null);
        if (z) {
            return;
        }
        onEvent(CATEGORY_MEDIA_PLAYBACK, "Playback Speed", _PlaybackSpeedFormat.format(f), null);
    }

    public static void onVideoPlaybackStarted(boolean z) {
        onEvent(CATEGORY_MEDIA_PLAYBACK, "Video Playback", z ? "Streaming" : "downloaded", null);
    }

    public static void onChromecastPlaybackStarted() {
        onEvent(CATEGORY_MEDIA_PLAYBACK, "Chromecast Playback", null, null);
    }

    public static void onCharmSleepSelected(boolean z) {
        onEvent(CATEGORY_PLAYER_CONTROLS, "Charm Sleep", "Long Press", Long.valueOf(z ? 1L : 0L));
    }

    public static void onSkipToEnd() {
        onEvent(CATEGORY_PLAYER_CONTROLS, "Skip to End", null, null);
    }

    public static void onCharmSpeedSelected(boolean z) {
        onEvent(CATEGORY_PLAYER_CONTROLS, "Charm Speed", "Long Press", Long.valueOf(z ? 1L : 0L));
    }

    public static void onWidgetCommand(String str) {
        onEvent(CATEGORY_WIDGET_COMMAND, "Widget Command", str, null);
    }

    public static void onCommand(String str, String str2) {
        onEvent(CATEGORY_COMMAND, str, str2, null);
    }

    public static void onRepositoryTracksLoaded(int i) {
        onEvent(CATEGORY_REPOSITORY, PARAM_TRACKS_LOADED, LABEL_VALUE, Long.valueOf(i));
    }

    public static void onSmartPlaylistLoaded(int i) {
        onEvent(CATEGORY_REPOSITORY, PARAM_SMART_PLAY_LOADED, LABEL_VALUE, Long.valueOf(i));
    }

    public static void onCategoriesLoaded(int i) {
        onEvent(CATEGORY_REPOSITORY, PARAM_CATEGORIES_LOADED, LABEL_VALUE, Long.valueOf(i));
    }

    public static void onRepositoryFeedsLoaded(int i) {
        onEvent(CATEGORY_REPOSITORY, PARAM_FEEDS_LOADED, LABEL_VALUE, Long.valueOf(i));
    }
}
