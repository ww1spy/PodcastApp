package mobi.beyondpod.rsscore;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.support.annotation.Nullable;
import android.support.graphics.drawable.PathInterpolatorCompat;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.tagmanager.Container;
import com.google.android.gms.tagmanager.ContainerHolder;
import com.google.android.gms.tagmanager.TagManager;
import io.fabric.sdk.android.services.network.UrlUtils;
import java.io.File;
import java.io.StringReader;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Properties;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.R;
import mobi.beyondpod.htmlbuilder.FeedHtmlContentProvider;
import mobi.beyondpod.rsscore.categories.CategoryManager;
import mobi.beyondpod.rsscore.categories.FeedCategory;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.Path;
import mobi.beyondpod.rsscore.helpers.PermissionUtil;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.helpers.TimeSpan;
import mobi.beyondpod.rsscore.helpers.Version;
import mobi.beyondpod.rsscore.repository.DatabaseHelper;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public class Configuration {
    private static final String BEYONDPOD_DATABASE_AUTOBAK = "beyondpod.db.autobak";
    public static final String BEYOND_POD_HISTORY_AUTOBAK = "BeyondPodHistory.bin.autobak";
    public static final String BEYOND_POD_ITEM_HISTORY_AUTOBAK = "BeyondPodItemHistory.bin.autobak";
    public static final String BEYOND_POD_SETTINGS_AUTOBAK = "Settings.xml.autobak";
    public static String BP_USER_AGENT = "Mozilla/5.0 (Linux; U; en-us; BeyondPod 4)";
    public static final int CONFIG_ERROR_INVALID_BEYONDPOD_ROOT = -3;
    public static final int CONFIG_ERROR_INVALID_PODCAST_ROOT = -2;
    public static final int CONFIG_ERROR_INVALID_SD_CARD_ROOT = -1;
    public static final int CONFIG_ERROR_NONE = 0;
    public static final int CONFIG_ERROR_ROOT_NEEDS_PERMISSION = -4;
    public static final int CONTENT_THEME_BG_COLOR_BLACK = -16777216;
    public static final int CONTENT_THEME_BG_COLOR_SEPIA = -1057859;
    public static final int CONTENT_THEME_BG_COLOR_WHITE = -1;
    public static String ConfigurationInitErrorMsg = null;
    public static int ConfigurationInitErrorType = 0;
    private static final String DEFAULT_CONTENT_VIEW_COLOR = "#6699CC";
    public static final int DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS = 99999;
    public static String IE_USER_AGENT = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; .NET CLR 1.0.3705)";
    private static final String INTERNAL_PLAYER_SUPPORTED_EXTENSIONS = "3gp,mp4,m4v,h264.mp4,m4a,mp3,mid,xmf,mxmf,rtttl,rtx,ota,imy,ogg,wav,jpg,gif,png,bmp";
    public static String IT_USER_AGENT = "iTunes/10.6.1 (Windows; Microsoft Windows 7 Enterprise Edition Service Pack 1 (Build 7601)) AppleWebKit/534.54.16";
    private static final int MAX_RECENT_FEEDS = 3;
    public static String MA_USER_AGENT = "Mozilla/5.0 (Linux; U; Android 1.5; en-us; T-Mobile G1 Build/CRB43) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1";
    public static String MO_USER_AGENT = "Mozilla/5.0 (Linux; U; Windows NT 6.1; en-us; dream)";
    private static final String PLAY_LIST_BIN_AUTOBAK = "PlayList.bin.autobak";
    public static final String SETTINGS_NAME = "Settings";
    public static final int SKIP_TO_END_BUTTON_TYPE_HIDDEN = 3;
    public static final int SKIP_TO_END_BUTTON_TYPE_LONG_CLICK = 2;
    public static final int SKIP_TO_END_BUTTON_TYPE_SHORT_CLICK = 1;
    public static final String SMART_PLAY_LIST_AUTOBAK = "SmartPlayList.bin.autobak";
    private static final String TAG = "Configuration";
    private static final String TAG_MANAGER_CONTAINER_ID = "GTM-WXFRNW";
    public static final String TRACK_STATE_AUTOBAK = "TrackState.xml.autobak";
    private static FeedCategory _ActiveFeedCategory = null;
    private static File _BeyondPodBackupManagerBackupRoot = null;
    private static File _BeyondPodPrivateStorageRoot = null;
    private static File _BeyondPodPublicStorageRoot = null;
    public static Context _Context = null;
    private static Version _CurrentVersion = null;
    private static String _EnclosureDownloadRootPath = null;
    private static String _GReaderAuthValue = null;
    private static String _GReaderCookie = null;
    private static boolean _IsExpirationWarningShownInThisSession = false;
    private static boolean _IsFirstRun = false;
    private static Feed _LastSelectedFeed = null;
    private static ContainerHolder _TagManagerContainerHolder = null;
    private static String _TagManagerContainerVersion = "N/A";
    private static boolean _UnableToEstablishWiFiConnectionInThisSession = false;
    public static SharedPreferences _preferences;
    public static HashMap<UUID, Feed> TempFeedHolder = new HashMap<>();
    private static Pattern _SleepTimes = Pattern.compile("\\d+");
    public static String[] contentFontSizes = {"x-large", "large", "medium", "small", "x-small"};
    public static String[] contentThemes = {".theme { background-color: #FFFFFF; color:#000 } a:link {color: #FF6339; text-decoration:none;}", ".theme { background-color: #EFDBBD; color:#635142 } a:link {color: #996600;}", ".theme { background-color: #000000; color:#A5B2B5 } a:link {color: #FF6339; text-decoration:none;}"};
    static Pattern colorRegex = Pattern.compile("background-color: (#[A-Z_0-9]*);", 10);

    public static String GCMSenderID() {
        return "1049497099258";
    }

    public static String beyondPodContentUrl() {
        return "content://beyondpodevo";
    }

    public static String beyondPodPublicAPIRoot() {
        return "http://www.beyondpod.mobi/api";
    }

    public static String beyondPodPublicWebSite() {
        return "http://www.beyondpod.mobi";
    }

    public static int currentAppStore() {
        return 1;
    }

    public static boolean isBetaVersion() {
        return false;
    }

    public static float playbackSpeedNormal() {
        return 1.0f;
    }

    public static boolean shouldAutoOpenPlayer(boolean z) {
        return true;
    }

    public static Context getAppContext() {
        return BeyondPodApplication.getInstance().getApplicationContext();
    }

    public static boolean initialize(Context context) throws Resources.NotFoundException {
        _LastSelectedFeed = null;
        _ActiveFeedCategory = null;
        ConfigurationInitErrorType = 0;
        ConfigurationInitErrorMsg = null;
        _Context = context;
        _preferences = context.getSharedPreferences(SETTINGS_NAME, 0);
        if (!initializeStorageFolders()) {
            return false;
        }
        if (!DatabaseHelper.dataBaseExists()) {
            _IsFirstRun = true;
        }
        new StartupContentBuilder().checkAndCreateStartupContent(_IsFirstRun);
        CoreHelper.truncateLogFileIfNecessary();
        initializeTagManager(context);
        return true;
    }

    @SuppressLint({"MissingPermission"})
    private static void initializeTagManager(Context context) {
        TagManager.getInstance(context).loadContainerPreferNonDefault(DBGTagContainerID(), R.raw.gtm_default_container).setResultCallback(new ResultCallback<ContainerHolder>() { // from class: mobi.beyondpod.rsscore.Configuration.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(ContainerHolder containerHolder) {
                CoreHelper.writeTraceEntry(Configuration.TAG, "Tag Container loaded! " + containerHolder.getStatus());
                if (containerHolder.getStatus().isSuccess()) {
                    ContainerHolder unused = Configuration._TagManagerContainerHolder = containerHolder;
                    containerHolder.setContainerAvailableListener(new ContainerHolder.ContainerAvailableListener() { // from class: mobi.beyondpod.rsscore.Configuration.1.1
                        @Override // com.google.android.gms.tagmanager.ContainerHolder.ContainerAvailableListener
                        public void onContainerAvailable(ContainerHolder containerHolder2, String str) {
                            String unused2 = Configuration._TagManagerContainerVersion = str;
                            CoreHelper.writeTraceEntry(Configuration.TAG, "New tag container available! Version: " + str);
                        }
                    });
                } else {
                    CoreHelper.writeTraceEntry(Configuration.TAG, "failed to load container");
                }
            }
        }, 2L, TimeUnit.SECONDS);
    }

    public static void refreshTagManager() {
        if (_TagManagerContainerHolder != null) {
            CoreHelper.writeTraceEntry(TAG, "Refreshing tag container...");
            _TagManagerContainerHolder.refresh();
        }
    }

    public static String tagManagerVersion() {
        return _TagManagerContainerHolder != null ? String.format("%s v%s", _TagManagerContainerHolder.getContainer().getContainerId(), _TagManagerContainerVersion) : "N/A";
    }

    private static boolean initializeStorageFolders() {
        File externalStorageDirectory = CoreHelper.externalStorageDirectory();
        if (externalStorageDirectory == null || !externalStorageDirectory.exists()) {
            ConfigurationInitErrorType = -1;
            ConfigurationInitErrorMsg = CoreHelper.loadResourceString(R.string.error_SDCardError) + "\n\n Unable to find path: " + externalStorageDirectory;
            return false;
        }
        _BeyondPodPublicStorageRoot = constructBeyondPodRootIn(externalStorageDirectory.getAbsolutePath());
        if (PermissionUtil.needsStoragePermissionForPath(_BeyondPodPublicStorageRoot.getAbsolutePath())) {
            ConfigurationInitErrorType = -4;
            ConfigurationInitErrorMsg = BeyondPodApplication.getInstance().getString(R.string.error_root_needs_permission, new Object[]{_BeyondPodPublicStorageRoot.getAbsolutePath()});
            return false;
        }
        if (!_BeyondPodPublicStorageRoot.exists()) {
            _BeyondPodPublicStorageRoot.mkdirs();
        }
        if (!_BeyondPodPublicStorageRoot.exists()) {
            ConfigurationInitErrorType = -3;
            ConfigurationInitErrorMsg = CoreHelper.loadResourceString(R.string.error_CantCreateRootFolder) + "\n\n Unable to create folder: " + _BeyondPodPublicStorageRoot.getAbsolutePath() + CoreHelper.loadResourceString(R.string.error_CantCreateRootFolderWorkaround);
            return false;
        }
        File constructEnclosureDownloadRoot = constructEnclosureDownloadRoot(_BeyondPodPublicStorageRoot);
        if (!constructEnclosureDownloadRoot.exists()) {
            constructEnclosureDownloadRoot.mkdirs();
        }
        if (!constructEnclosureDownloadRoot.exists()) {
            ConfigurationInitErrorType = -2;
            ConfigurationInitErrorMsg = CoreHelper.loadResourceString(R.string.error_CantCreateRootFolder) + "\n\n Unable to create folder: " + constructEnclosureDownloadRoot.getAbsolutePath() + CoreHelper.loadResourceString(R.string.error_CantCreateRootFolderWorkaround);
            return false;
        }
        setEnclosureDownloadRoot(constructEnclosureDownloadRoot.getPath());
        File file = new File(rssImageCachePath());
        if (!file.exists()) {
            file.mkdirs();
        }
        setLastSDCardRootPath(externalStorageDirectory.getAbsolutePath());
        return true;
    }

    @Nullable
    public static File findAndroidReportedExternalStorage() {
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            for (File file : BeyondPodApplication.getInstance().getExternalFilesDirs(null)) {
                if (file != null && !file.getAbsolutePath().startsWith(externalStorageDirectory.getAbsolutePath())) {
                    return file;
                }
            }
        } catch (Exception e) {
            CoreHelper.writeLogEntry(TAG, "Unable to get Android reported SD card! reason: " + e.getMessage());
        }
        return null;
    }

    public static Uri getUnlocKeyAppStoreIntent() {
        if (CoreHelper.isRunningOnARC()) {
            return unlockURL();
        }
        if (currentAppStore() == 2) {
            return Uri.parse("http://www.amazon.com/gp/mas/dl/android?p=mobi.beyondpod.unlockkey");
        }
        return Uri.parse("market://details?id=mobi.beyondpod.unlockkey");
    }

    public static boolean isSpeedAlterationSupportedOnAppStore() {
        return isSonicSpeedAlterationSupported() || currentAppStore() == 1;
    }

    public static boolean isSonicSpeedAlterationSupported() {
        return CoreHelper.apiLevel() > 7;
    }

    public static File constructBeyondPodRootIn(String str) {
        return new File(str, "BeyondPod");
    }

    public static File constructEnclosureDownloadRoot(File file) {
        return new File(file, "Podcasts");
    }

    public static boolean isFirstRun() {
        return _IsFirstRun;
    }

    public static void clearIsFirstRun() {
        _IsFirstRun = false;
    }

    public static void setEnclosureDownloadRoot(String str) {
        _EnclosureDownloadRootPath = str;
    }

    public static String beyondPodPublicStorageRootPath() {
        return _BeyondPodPublicStorageRoot.getPath();
    }

    public static String beyondPodPrivateStorageRootPath() {
        if (_BeyondPodPrivateStorageRoot == null) {
            _BeyondPodPrivateStorageRoot = _Context.getDir(FeedHtmlContentProvider.BP_Provider_Authority, 0);
        }
        return _BeyondPodPrivateStorageRoot.getAbsolutePath();
    }

    public static String backupManagerBackupPath() {
        if (_BeyondPodBackupManagerBackupRoot == null) {
            _BeyondPodBackupManagerBackupRoot = _Context.getFilesDir();
        }
        return _BeyondPodBackupManagerBackupRoot.getAbsolutePath();
    }

    public static String defaultBackupsStorageRoot() {
        return beyondPodPublicStorageRootPath() + "/Backups";
    }

    public static String trackStateBackupPath() {
        return Path.combine(beyondPodPublicStorageRootPath(), TRACK_STATE_AUTOBAK);
    }

    public static String trackStateBackupManagerPath() {
        return Path.combine(backupManagerBackupPath(), TRACK_STATE_AUTOBAK);
    }

    public static String enclosureDownloadHistoryFilePath() {
        return beyondPodPrivateStorageRootPath() + "/BeyondPodHistory.bin";
    }

    public static String enclosureDownloadQueueFilePath() {
        return beyondPodPrivateStorageRootPath() + "/EnclosureDownloadQueue.bin";
    }

    public static String smartPlaylistFilePath() {
        return beyondPodPrivateStorageRootPath() + "/SmartPlayList.bin";
    }

    public static String smartPlaylistBackupFilePath() {
        return beyondPodPublicStorageRootPath() + "/" + SMART_PLAY_LIST_AUTOBAK;
    }

    public static String smartPlaylistBackupManagerFilePath() {
        return backupManagerBackupPath() + "/" + SMART_PLAY_LIST_AUTOBAK;
    }

    public static String playlistFilePath() {
        return beyondPodPrivateStorageRootPath() + "/PlayList.bin";
    }

    public static String playlistBackupFilePath() {
        return beyondPodPublicStorageRootPath() + "/" + PLAY_LIST_BIN_AUTOBAK;
    }

    public static String playlistBackupManagerFilePath() {
        return backupManagerBackupPath() + "/" + PLAY_LIST_BIN_AUTOBAK;
    }

    public static String playlistM3UFilePath() {
        return beyondPodPublicStorageRootPath() + "/BeyondPod.m3u";
    }

    public static String dnsFilePath() {
        return beyondPodPrivateStorageRootPath() + "/DNSCache.bin";
    }

    public static String feedUpdateQueueFilePath() {
        return beyondPodPrivateStorageRootPath() + "/FeedUpdateQueue.bin";
    }

    public static String enclosureDownloadHistoryBackupFilePath() {
        return beyondPodPublicStorageRootPath() + "/" + BEYOND_POD_HISTORY_AUTOBAK;
    }

    public static String enclosureDownloadHistoryBackupManagerFilePath() {
        return backupManagerBackupPath() + "/" + BEYOND_POD_HISTORY_AUTOBAK;
    }

    public static String itemHistoryFilePath() {
        return beyondPodPrivateStorageRootPath() + "/BeyondPodItemHistory.bin";
    }

    public static String itemHistoryBackupFilePath() {
        return beyondPodPublicStorageRootPath() + "/" + BEYOND_POD_ITEM_HISTORY_AUTOBAK;
    }

    public static String settingsFilePath() {
        return _Context.getFilesDir().getParent() + "/shared_prefs/" + SETTINGS_NAME + ".xml";
    }

    public static String settingsBackupManagerFilePath() {
        return backupManagerBackupPath() + "/" + BEYOND_POD_SETTINGS_AUTOBAK;
    }

    public static String itemHistoryBackupManagerFilePath() {
        return backupManagerBackupPath() + "/" + BEYOND_POD_ITEM_HISTORY_AUTOBAK;
    }

    public static String databaseBackupFilePath() {
        return beyondPodPublicStorageRootPath() + "/" + BEYONDPOD_DATABASE_AUTOBAK;
    }

    public static String databaseBackupManagerFilePath() {
        return backupManagerBackupPath() + "/" + BEYONDPOD_DATABASE_AUTOBAK;
    }

    public static String logFilePath() {
        return beyondPodPublicStorageRootPath() + "/BeyondPodLog.txt";
    }

    public static String syncLogFilePath() {
        return beyondPodPublicStorageRootPath() + "/BeyondPodSyncLog.txt";
    }

    public static String feedUpdateLogFilePath() {
        return beyondPodPublicStorageRootPath() + "/FeedUpdateLog.htm";
    }

    public static String logcatFilePath() {
        return beyondPodPublicStorageRootPath() + "/LogcatLog.txt";
    }

    public static String defaultDownloadPath() {
        return Path.combine(beyondPodPublicStorageRootPath(), "/Downloads");
    }

    public static String rssCachePath() {
        return Path.combine(beyondPodPublicStorageRootPath(), "RSSCache");
    }

    public static String rssImageCachePath() {
        return Path.combine(rssCachePath(), "img");
    }

    public static String versionInfoPath() {
        return Path.combine(rssCachePath(), "VerInfo.bin");
    }

    public static Uri helpFileURL() {
        return buildHelpURL("HelpHome");
    }

    public static Uri voiceHelpURL() {
        return buildHelpURL("VoiceHelp");
    }

    private static Uri buildHelpURL(String str) {
        String str2 = "NA";
        try {
            str2 = URLEncoder.encode(Build.MANUFACTURER + " " + Build.MODEL + " (" + Build.PRODUCT + ")", UrlUtils.UTF8);
        } catch (Exception unused) {
        }
        String str3 = "NA";
        try {
            str3 = URLEncoder.encode(Build.VERSION.RELEASE, UrlUtils.UTF8);
        } catch (Exception unused2) {
        }
        return Uri.parse(beyondPodPublicWebSite() + String.format("/Android/HelpDispatcher.aspx?t=%s&k=%s&v=%s&l=%s&a=%s&d=%s", str, BeyondPodApplication.getInstance().appKind(), productVersion(), LicenseManager.getShortLicenseKind(), str3, str2));
    }

    public static Uri updateAndDownloadHelpFileURL() {
        return buildHelpURL("UpdateAndDownload");
    }

    public static Uri helpFileCDSURL() {
        return buildHelpURL("CDSHelp");
    }

    public static Uri backupRestoreFileURL() {
        return buildHelpURL(BackupRestore.PREFERENCE_KEY);
    }

    public static Uri faqFileURL() {
        return buildHelpURL("FAQ");
    }

    public static Uri faqLiteProURL() {
        return buildHelpURL("GoPro");
    }

    public static Uri unlockURL() {
        return buildHelpURL("Unlock");
    }

    public static Uri scheduledUpdatesURL() {
        return buildHelpURL("ScheduledUpdates");
    }

    public static Uri versionUpgradeNotesURL() {
        return Uri.parse(beyondPodPublicWebSite() + "/Android/VersionUpgrade.aspx");
    }

    public static Uri faqVideoPlayerHelpURL() {
        return buildHelpURL("FAQVideoPlaybackIssues");
    }

    public static Uri faqIntroSmartPlayURL() {
        return buildHelpURL("FAQSmartPlay");
    }

    public static Uri feedURLErrorHelpURL(String str) {
        String safeEncodeUrl = CoreHelper.safeEncodeUrl(str);
        StringBuilder sb = new StringBuilder();
        sb.append(beyondPodPublicWebSite());
        sb.append("/Android/help/FeedRssLookupHelp.aspx?u=");
        if (StringUtils.isNullOrEmpty(str)) {
            safeEncodeUrl = "";
        }
        sb.append(safeEncodeUrl);
        return Uri.parse(sb.toString());
    }

    public static Uri welcomeProFileURI() {
        return Uri.parse("file:///android_asset/WelcomePro.htm");
    }

    public static Uri welcomeLiteFileURI() {
        return Uri.parse("file:///android_asset/Welcome.htm");
    }

    public static Uri whatIsNewFileURI() {
        return Uri.parse("file:///android_asset/WhatIsNew.htm");
    }

    public static String rssTemplatesImagePath() {
        return beyondPodContentUrl() + "/BeyondPodImagePath";
    }

    public static Uri getFeedUpdateLogURL() {
        return Uri.parse(beyondPodContentUrl() + "/BeyondPodStorageRootPath/FeedUpdateLog.htm");
    }

    public static Version currentProductVersion() {
        if (_CurrentVersion == null) {
            try {
                _CurrentVersion = new Version(_Context.getPackageManager().getPackageInfo(BeyondPodApplication.getInstance().getApplicationContext().getPackageName(), 0).versionName);
            } catch (Throwable unused) {
                _CurrentVersion = new Version(0, 0, 0, 0);
            }
        }
        return _CurrentVersion;
    }

    public static String productVersion() {
        return currentProductVersion().toString();
    }

    public static String productVersionAsString() {
        Object[] objArr = new Object[2];
        objArr[0] = productVersion();
        objArr[1] = isBetaVersion() ? "BETA" : "";
        return String.format("BeyondPod %s %s", objArr);
    }

    public static String productVersionAsString(Context context) {
        String packageName = context.getPackageName();
        String substring = packageName.length() > 15 ? packageName.substring(15) : "";
        if (CoreHelper.isDebugBuild()) {
            substring = substring + " DBG";
        }
        return String.format("v%s %s", productVersion(), substring);
    }

    public static int currentProductVersionCode() {
        try {
            return _Context.getPackageManager().getPackageInfo(_Context.getPackageName(), 0).versionCode;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String enclosureDownloadRoot() {
        return _EnclosureDownloadRootPath;
    }

    public static Date getNextNotificationTime() {
        long j = _preferences.getLong("NextNotificationTime", -1L);
        if (j == -1) {
            return new Date();
        }
        return new Date(j);
    }

    public static void setNextNotificationTime(Date date) {
        ConfigWriteHelper.getInstance().putLong(_preferences, "NextNotificationTime", date.getTime());
    }

    public static Date getLastTipNotificationTime() {
        long j = _preferences.getLong("LastTipNotificationTime", -1L);
        if (j == -1) {
            return null;
        }
        return new Date(j);
    }

    public static void setLastTipNotificationTime(Date date) {
        ConfigWriteHelper.getInstance().putLong(_preferences, "LastTipNotificationTime", date.getTime());
    }

    public static Date getLastUpdateAndDownloadManagerRunTime() {
        long j = _preferences.getLong("LastUpdateAndDownloadManagerRunTime", -1L);
        if (j == -1) {
            return null;
        }
        return new Date(j);
    }

    public static void setLastUpdateAndDownloadManagerRunTime(Date date) {
        ConfigWriteHelper.getInstance().putLong(_preferences, "LastUpdateAndDownloadManagerRunTime", date.getTime());
    }

    public static int getForwardSkipInterval() {
        return StringUtils.safeParseInt(_preferences.getString("ForwardSkipInterval", "31"), 31);
    }

    public static void setForwardSkipInterval(int i) {
        if (getForwardSkipInterval() == i) {
            return;
        }
        ConfigWriteHelper.getInstance().putString(_preferences, "ForwardSkipInterval", Integer.toString(i));
    }

    public static int getBackwardSkipInterval() {
        return StringUtils.safeParseInt(_preferences.getString("BackwardSkipInterval", "11"), 11);
    }

    public static void setBackwardSkipInterval(int i) {
        if (getBackwardSkipInterval() == i) {
            return;
        }
        ConfigWriteHelper.getInstance().putString(_preferences, "BackwardSkipInterval", Integer.toString(i));
    }

    public static int getMediaEndAction() {
        return StringUtils.safeParseInt(_preferences.getString("MediaEndAction", NotificationPreferences.NO), 0);
    }

    public static void setMediaEndAction(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "MediaEndAction", Integer.toString(i));
    }

    public static boolean getHideUnsupportedFileTypes() {
        return _preferences.getBoolean("HideUnsupportedFileTypes", true);
    }

    public static void setHideUnsupportedFileTypes(boolean z) {
        if (getHideUnsupportedFileTypes() == z) {
            return;
        }
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "HideUnsupportedFileTypes", z);
    }

    public static int getFeedsSortOrder() {
        return StringUtils.safeParseInt(_preferences.getString("FeedsSortOrder", NotificationPreferences.NO), 0);
    }

    public static void setFeedsSortOrder(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "FeedsSortOrder", Integer.toString(i));
    }

    public static int getPodcastsSortOrder() {
        return StringUtils.safeParseInt(_preferences.getString("PodcastsSortOrder", NotificationPreferences.NO), 0);
    }

    public static void setPodcastsSortOrder(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "PodcastsSortOrder", Integer.toString(i));
    }

    public static String getDefaultDocFontSize() {
        return _preferences.getString("ContentFontSize", "medium");
    }

    public static void setDefaultDocFontSize(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "ContentFontSize", str);
    }

    public static String contentTheme() {
        return _preferences.getString("contentTheme", "");
    }

    public static void setContentTheme(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "contentTheme", str);
    }

    public static Integer contentThemeBackgroundColor() {
        String contentTheme = contentTheme();
        if (StringUtils.isNullOrEmpty(contentTheme)) {
            return null;
        }
        Matcher matcher = colorRegex.matcher(contentTheme);
        if (!matcher.find() || matcher.groupCount() != 1) {
            return null;
        }
        try {
            return Integer.valueOf(Color.parseColor(matcher.group(1)));
        } catch (Exception unused) {
            return null;
        }
    }

    public static int getItemFilter() {
        return _preferences.getInt("ItemFilter", 0);
    }

    public static void setItemFilter(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "ItemFilter", i);
    }

    public static boolean getHideReadFeeds() {
        return _preferences.getBoolean("HideReadFeeds", false);
    }

    public static void setHideReadFeeds(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "HideReadFeeds", z);
    }

    public static boolean getGroupByFeedIfShowingCategoryTracks() {
        return _preferences.getBoolean("GroupByFeedIfShowingCategoryTracks", false);
    }

    public static void setGroupByFeedIfShowingCategoryTracks(boolean z) {
        if (getGroupByFeedIfShowingCategoryTracks() == z) {
            return;
        }
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "GroupByFeedIfShowingCategoryTracks", z);
    }

    public static boolean getUpdateOnFeedOpen() {
        return _preferences.getBoolean("UpdateOnFeedOpen", false);
    }

    public static void setUpdateOnFeedOpen(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "UpdateOnFeedOpen", z);
    }

    public static FeedCategory getActiveFeedCategory() {
        if (_ActiveFeedCategory == null || _ActiveFeedCategory == CategoryManager.CategoryNull || !CategoryManager.hasCategory(_ActiveFeedCategory)) {
            if (_ActiveFeedCategory != null && _ActiveFeedCategory != CategoryManager.CategoryNull) {
                CoreHelper.writeTraceEntry(TAG, "!!! Found non existing category " + _ActiveFeedCategory.toString());
            }
            _ActiveFeedCategory = CategoryManager.getCategoryByValue(_preferences.getString("ActiveCategory", CategoryManager.CategoryHome.value()));
        }
        return _ActiveFeedCategory;
    }

    public static void setActiveFeedCategory(FeedCategory feedCategory) {
        if (getActiveFeedCategory().equals(feedCategory)) {
            return;
        }
        _ActiveFeedCategory = feedCategory;
        ConfigWriteHelper.getInstance().putString(_preferences, "ActiveCategory", feedCategory.value());
    }

    public static int getGlobalDefaultPodcastDownloadAction() {
        return StringUtils.safeParseInt(_preferences.getString("DefaultPodcastDownloadAction", Integer.toString(1)), 1);
    }

    public static void setGlobalDefaultPodcastDownloadAction(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "DefaultPodcastDownloadAction", Integer.toString(i));
    }

    public static int getGlobalDefaultNumberPodcastsToDownload() {
        return StringUtils.safeParseInt(_preferences.getString("DefaultNumberPodcastsToDownload", "3"), 3);
    }

    public static void setGlobalDefaultNumberPodcastsToDownload(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "DefaultNumberPodcastsToDownload", Integer.toString(i));
    }

    public static int getGlobalDefaultKeepAtMostPodcasts() {
        return StringUtils.safeParseInt(_preferences.getString("DefaultKeepAtMostPodcasts", "10"), 10);
    }

    public static void setGlobalDefaultKeepAtMostPodcasts(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "DefaultKeepAtMostPodcasts", Integer.toString(i));
    }

    public static TimeSpan getGlobalDefaultMaximumPodcastAge() {
        return new TimeSpan(StringUtils.safeParseInt(_preferences.getString("DefaultMaximumPodcastAge", Integer.toString(DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS)), DEFAULT_MAXIMUM_PODCAST_AGE_IN_DAYS), 0L, 0L, 0L, 0L);
    }

    public static void setGlobalDefaultMaximumPodcastAge(TimeSpan timeSpan) {
        ConfigWriteHelper.getInstance().putString(_preferences, "DefaultMaximumPodcastAge", Integer.toString((int) timeSpan.getTotalDays()));
    }

    public static void setGlobalDefaultMaximumGReaderItemsToGet(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "DefaultMaximumGReaderItemsToGet", Integer.toString(i));
    }

    public static int getGlobalDefaultMaximumGReaderItemsToGet() {
        return StringUtils.safeParseInt(_preferences.getString("DefaultMaximumGReaderItemsToGet", "20"), 20);
    }

    public static String getInternalPlayerSupportedFileExtensions() {
        return _preferences.getString("PlayerSupportedFileExtensions", INTERNAL_PLAYER_SUPPORTED_EXTENSIONS);
    }

    public static void setInternalPlayerSupportedFileExtensions(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "PlayerSupportedFileExtensions", str.trim().replace("  ", " ").replace(".", "").replace(" ,", ","));
    }

    public static boolean getAllowAutoTrackDeletions() {
        return _preferences.getBoolean("AllowAutoTrackDeletions", true);
    }

    public static void setAllowAutoTrackDeletions(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "AllowAutoTrackDeletions", z);
    }

    public static Feed getActiveFeedFilter() {
        if (_LastSelectedFeed == null) {
            String string = _preferences.getString("ActiveFeedFilter", null);
            if (!StringUtils.isNullOrEmpty(string)) {
                try {
                    _LastSelectedFeed = FeedRepository.getFeedById(UUID.fromString(string));
                } catch (Exception e) {
                    CoreHelper.logException(TAG, "Unable to load last ActiveFeedFilter", e);
                }
            }
        }
        return _LastSelectedFeed;
    }

    public static void setActiveFeedFilter(Feed feed) {
        _LastSelectedFeed = feed;
        ConfigWriteHelper.getInstance().putString(_preferences, "ActiveFeedFilter", feed == null ? "" : feed.id().toString());
        addRecentFeed(feed);
    }

    public static LinkedList<Feed> getRecentFeeds() {
        LinkedList<Feed> linkedList = new LinkedList<>();
        String string = _preferences.getString("RecentFeedsList", null);
        if (!StringUtils.isNullOrEmpty(string)) {
            try {
                for (String str : string.split("\\|")) {
                    Feed feedById = FeedRepository.getFeedById(UUID.fromString(str));
                    if (feedById != null) {
                        linkedList.add(feedById);
                    }
                }
            } catch (Exception e) {
                CoreHelper.logException(TAG, "Unable to load recent feeds", e);
            }
        }
        return linkedList;
    }

    public static void addRecentFeed(Feed feed) {
        if (feed == null || !feed.hasPodcasts()) {
            return;
        }
        LinkedList<Feed> recentFeeds = getRecentFeeds();
        if (recentFeeds.contains(feed)) {
            recentFeeds.remove(feed);
        }
        recentFeeds.addFirst(feed);
        if (recentFeeds.size() > 3) {
            recentFeeds.removeLast();
        }
        StringBuilder sb = new StringBuilder(90);
        Iterator<Feed> it = recentFeeds.iterator();
        while (it.hasNext()) {
            Feed next = it.next();
            if (sb.length() > 0) {
                sb.append(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR);
            }
            sb.append(next.id());
        }
        ConfigWriteHelper.getInstance().putString(_preferences, "RecentFeedsList", sb.toString());
    }

    public static int getActiveMediaFilter() {
        return _preferences.getInt("ActiveMediaFilter", 0);
    }

    public static void setActiveMediaFilter(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "ActiveMediaFilter", i);
    }

    public static boolean isCellularConnectionAllowed() {
        return _preferences.getBoolean("AllowCellularConnections", true);
    }

    public static void setIsCellularConnectionAllowed(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "AllowCellularConnections", z);
    }

    public static String defaultUserAgent() {
        String string = _preferences.getString("defaultUserAgent", "");
        if (StringUtils.isNullOrEmpty(string)) {
            return BP_USER_AGENT;
        }
        if (StringUtils.equalsIgnoreCase("ie", string)) {
            return IE_USER_AGENT;
        }
        if (StringUtils.equalsIgnoreCase("mo", string)) {
            return MO_USER_AGENT;
        }
        if (StringUtils.equalsIgnoreCase("ma", string)) {
            return MA_USER_AGENT;
        }
        return StringUtils.equalsIgnoreCase("it", string) ? IT_USER_AGENT : string;
    }

    public static String customSDCardLocation() {
        return _preferences.getString(DownloadFolderPreference.PREFERENCE_KEY, "");
    }

    public static void setCustomSDCardLocation(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, DownloadFolderPreference.PREFERENCE_KEY, str);
    }

    public static boolean hasCustomUserAgent() {
        return !StringUtils.isNullOrEmpty(_preferences.getString("defaultUserAgent", ""));
    }

    public static String getDefaultSendToMailAddress() {
        return _preferences.getString("DefaultSendToEmails", "");
    }

    public static void setGReaderCookie(String str) {
        _GReaderCookie = str;
        ConfigWriteHelper.getInstance().putString(_preferences, "GReaderCookie", str);
    }

    public static String GReaderCookie() {
        if (_GReaderCookie == null) {
            _GReaderCookie = _preferences.getString("GReaderCookie", null);
        }
        return _GReaderCookie;
    }

    public static void setGReaderAuthValue(String str) {
        _GReaderAuthValue = str;
        ConfigWriteHelper.getInstance().putString(_preferences, "GReaderAuthValue", str);
    }

    public static String GReaderAuthValue() {
        if (_GReaderAuthValue == null) {
            _GReaderAuthValue = _preferences.getString("GReaderAuthValue", null);
        }
        return _GReaderAuthValue;
    }

    public static void setOAuthAccessToken(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "OAuthToken", str);
    }

    public static String OAuthAccessToken() {
        return _preferences.getString("OAuthToken", null);
    }

    public static void setOAuthUser(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "OAuthUser", str);
    }

    public static String OAuthUser() {
        return _preferences.getString("OAuthUser", null);
    }

    public static void setOAuthRefreshToken(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "OAuthRefreshToken", str);
    }

    public static String OAuthRefreshToken() {
        return _preferences.getString("OAuthRefreshToken", null);
    }

    public static Date OAuthAccessTokenExpiration() {
        return new Date(_preferences.getLong("OAuthAccessTokenExpiration", 0L));
    }

    public static void setOAuthAccessTokenExpiration(Date date) {
        ConfigWriteHelper.getInstance().putLong(_preferences, "OAuthAccessTokenExpiration", date == null ? 1L : date.getTime());
    }

    public static String GReaderAccountName() {
        return _preferences.getString("GReaderAccountName", "");
    }

    public static void setGReaderAccountName(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "GReaderAccountName", str);
    }

    public static void configureDefaults() {
        setFeedsSortOrder(0);
        setPodcastsSortOrder(3);
        setGatherAnalyticsData(false);
        setMediaEndAction(0);
        setPlaylistEndAction(0);
        setForwardSkipInterval(30);
        setBackwardSkipInterval(10);
        setInternalPlayerSupportedFileExtensions(INTERNAL_PLAYER_SUPPORTED_EXTENSIONS);
        setSharePodcasts(false);
        setBTRemoteButtonAction(1);
        setEnableHeadsetButton(true);
        setPauseOnHeadsetDisconnect(true);
        setHideUnsupportedFileTypes(false);
        setPlayerIntegrationType(0);
        setDefaultDocFontSize("medium");
        setLoadContentViewImagesAutomatically(true);
        setMarkAsReadOnOpen(1);
        setSetAsDownloadedOnMarkRead(true);
        setIsCellularConnectionAllowed(true);
        setTurnWiFiDuringUpdate(false);
        setUpdateOnFeedOpen(false);
        setClearStatusNotificationAtTheEndOfUpdate(true);
        setGlobalDefaultNumberPodcastsToDownload(1);
        setGlobalDefaultKeepAtMostPodcasts(5);
        setGlobalDefaultMaximumPodcastAge(new TimeSpan(99999L, 0L, 0L, 0L, 0L));
        setAutoPlaylistEnabled(true);
        setRemovePlayedFromPlaylist(true);
        setAreSettingsInitialized(true);
    }

    public static boolean areSettingsInitialized() {
        return _preferences.getBoolean("DefaultSettingsInitialized", false);
    }

    public static void setAreSettingsInitialized(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "DefaultSettingsInitialized", z);
    }

    public static boolean turnWiFiDuringUpdate() {
        return _preferences.getBoolean("TurnWiFiDuringUpdate", false);
    }

    public static void setTurnWiFiDuringUpdate(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "TurnWiFiDuringUpdate", z);
    }

    public static boolean unableToEstablishWiFiConnectionInThisSession() {
        return _UnableToEstablishWiFiConnectionInThisSession;
    }

    public static void setUnableToEstablishWiFiConnectionInThisSession(boolean z) {
        _UnableToEstablishWiFiConnectionInThisSession = z;
    }

    public static boolean loadContentViewImagesAutomatically() {
        return _preferences.getBoolean("loadContentViewImagesAutomatically", true);
    }

    public static void setLoadContentViewImagesAutomatically(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "loadContentViewImagesAutomatically", z);
    }

    public static boolean enableHeadsetButton() {
        return _preferences.getBoolean("EnableHeadsetButton", false);
    }

    public static void setEnableHeadsetButton(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "EnableHeadsetButton", z);
    }

    public static boolean pauseOnHeadsetDisconnect() {
        if (!_preferences.contains("PauseOnHeadsetDisconnect")) {
            setPauseOnHeadsetDisconnect(true);
        }
        return _preferences.getBoolean("PauseOnHeadsetDisconnect", true);
    }

    public static void setPauseOnHeadsetDisconnect(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "PauseOnHeadsetDisconnect", z);
    }

    public static boolean pauseOnPowerDisconnect() {
        return _preferences.getBoolean("PauseOnPowerDisconnect", false);
    }

    public static String getFeedPrivateData(UUID uuid) {
        return _preferences.getString(generateFeedPasswordKey(uuid), null);
    }

    public static void storeFeedPrivateData(UUID uuid, String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, generateFeedPasswordKey(uuid), str);
    }

    private static String generateFeedPasswordKey(UUID uuid) {
        return String.format("PRIVATE_FEED_DATA:%s", uuid);
    }

    public static String getContentViewColor() {
        return _preferences.getString("ContentViewColor", DEFAULT_CONTENT_VIEW_COLOR);
    }

    public static void setContentViewColor(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "ContentViewColor", str);
    }

    public static boolean googleSyncInitialized() {
        return _preferences.getBoolean("googleSyncInitialized", false);
    }

    public static void setGoogleSyncInitialized(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "googleSyncInitialized", z);
    }

    public static boolean useExternalBrowser() {
        return _preferences.getBoolean("UseExternalBrowser", false);
    }

    public static void setUseExternalBrowser(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "UseExternalBrowser", z);
    }

    public static boolean enableBrowserPlugins() {
        return _preferences.getBoolean("EnableBrowserPlugins", false);
    }

    public static void setEnableBrowserPlugins(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "EnableBrowserPlugins", z);
    }

    public static boolean attachDownloadedPodcastsWhenSharing() {
        return _preferences.getBoolean("AttachDownloadedPodcastsWhenSharing", false);
    }

    public static void setAttachDownloadedPodcastsWhenSharing(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "AttachDownloadedPodcastsWhenSharing", z);
    }

    public static boolean sharePodcasts() {
        return _preferences.getBoolean("SharePodcasts", true);
    }

    public static void setSharePodcasts(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "SharePodcasts", z);
    }

    public static boolean enableLoggingInProduction() {
        return _preferences.getBoolean("EnableLoggingInProduction", false);
    }

    public static void setEnableLoggingInProduction(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "EnableLoggingInProduction", z);
    }

    public static int getLastInstalledVersionCode() {
        return _preferences.getInt("LastInstalledVersion", 0);
    }

    public static void writeLastInstalledVersionCode() {
        ConfigWriteHelper.getInstance().putInt(_preferences, "LastInstalledVersion", currentProductVersionCode());
    }

    public static Date getTrialStartDate() {
        long j = _preferences.getLong("trialStartDate", 0L);
        if (j == 0) {
            return null;
        }
        return new Date(j);
    }

    public static void setTrialStartDate(Date date) {
        ConfigWriteHelper.getInstance().putLong(_preferences, "trialStartDate", date == null ? 0L : date.getTime());
    }

    public static int BTRemoteButtonAction() {
        return StringUtils.safeParseInt(_preferences.getString("BTRemoteButtonAction", NotificationPreferences.YES), 1);
    }

    public static void setBTRemoteButtonAction(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "BTRemoteButtonAction", Integer.toString(i));
    }

    public static boolean downloadEnclosuresOnWiFiOnly() {
        return _preferences.getBoolean("DownloadEnclosuresOnWiFiOnly", false);
    }

    public static void setDownloadEnclosuresOnWiFiOnly(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "DownloadEnclosuresOnWiFiOnly", z);
    }

    public static boolean downloadEnclosuresWhenChargingOnly() {
        return _preferences.getBoolean("DownloadEnclosuresWhenChargingOnly", false);
    }

    public static boolean clearStatusNotificationAtTheEndOfUpdate() {
        return _preferences.getBoolean("ClearStatusNotificationAtTheEndOfUpdate", false);
    }

    public static void setClearStatusNotificationAtTheEndOfUpdate(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "ClearStatusNotificationAtTheEndOfUpdate", z);
    }

    public static String licenseTypeString() {
        return _preferences.getString("licenseTypeString", "");
    }

    public static void setLicenseTypeString(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "licenseTypeString", str);
    }

    public static int indexOfCurrentPlaylistTrackInPlaylist() {
        return _preferences.getInt("indexOfCurrentPlaylistTrackInPlaylist", -1);
    }

    public static void setIndexOfCurrentPlaylistTrackInPlaylist(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "indexOfCurrentPlaylistTrackInPlaylist", i);
    }

    public static int playlistSizeOnSave() {
        return _preferences.getInt("playlistSizeOnSave", -1);
    }

    public static void setPlaylistSizeOnSave(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "playlistSizeOnSave", i);
    }

    public static boolean isCurrentPlaylistManuallyModified() {
        return _preferences.getBoolean("isCurrentPlaylistManuallyModified", false);
    }

    public static void setIsCurrentPlaylistManuallyModified(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "isCurrentPlaylistManuallyModified", z);
    }

    public static int httpConnectionTimeout() {
        int intValue = StringUtils.tryParseIntFromString(_preferences.getString("HttpConnectionTimeout", "20"), 20).intValue();
        if (intValue < 0) {
            return 20;
        }
        return intValue;
    }

    public static boolean debugDownloadProgress() {
        return _preferences.getBoolean("debugDownloadProgress", false);
    }

    public static String userNotificationPreferences() {
        return _preferences.getString("userNotificationPreferences", "");
    }

    public static void setUserNotificationPreferences(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "userNotificationPreferences", str);
    }

    public static int markAsReadOnOpen() {
        return StringUtils.safeParseInt(_preferences.getString("MarkAsReadOnOpen", Integer.toString(2)), 2);
    }

    public static void setMarkAsReadOnOpen(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "MarkAsReadOnOpen", Integer.toString(i));
    }

    public static boolean gatherAnalyticsData() {
        if (!_preferences.contains("GatherAnalyticsData")) {
            setGatherAnalyticsData(LicenseManager.currentLicenseKind() == 2);
        }
        return _preferences.getBoolean("GatherAnalyticsData", false);
    }

    public static void setGatherAnalyticsData(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "GatherAnalyticsData", z);
    }

    public static int playerIntegrationType() {
        return StringUtils.safeParseInt(_preferences.getString("PlayerIntegrationType", Integer.toString(0)), 0);
    }

    public static void setPlayerIntegrationType(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "PlayerIntegrationType", Integer.toString(i));
    }

    public static boolean scrobbleEnabled() {
        return _preferences.getBoolean("ScrobbleEnabled", false);
    }

    public static void setScrobbleEnabled(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "ScrobbleEnabled", z);
    }

    public static boolean setAsDownloadedOnMarkRead() {
        return _preferences.getBoolean("SetAsDownloadedOnMarkRead", false);
    }

    public static void setSetAsDownloadedOnMarkRead(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "SetAsDownloadedOnMarkRead", z);
    }

    public static boolean setAsPlayedOnMarkRead() {
        return _preferences.getBoolean("SetAsPlayedOnMarkRead", false);
    }

    public static void setSetAsPlayedOnMarkRead(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "SetAsPlayedOnMarkRead", z);
    }

    public static boolean pauseOnNotification() {
        return _preferences.getBoolean("PauseOnNotification", true);
    }

    public static int playerPlaybackScreenPowerState() {
        return StringUtils.safeParseInt(_preferences.getString("PlayerPlaybackScreenPowerState", Integer.toString(0)), 0);
    }

    public static int orientationLock() {
        return StringUtils.safeParseInt(_preferences.getString("OrientationLock", Integer.toString(0)), 0);
    }

    public static boolean patchVideoFilesForMediaScanner() {
        return _preferences.getBoolean("patchVideoFilesForMediaScanner", true);
    }

    public static boolean allowResumeAfterCall() {
        return _preferences.getBoolean("AllowResumeAfterCall", true);
    }

    public static int playerSleepTimeout() {
        int[] playerSleepTimeouts = playerSleepTimeouts();
        if (playerSleepTimeouts.length <= 0 || playerSleepTimeouts[0] <= 0) {
            return 0;
        }
        return playerSleepTimeouts[0];
    }

    public static int[] playerSleepTimeouts() {
        String string = _preferences.getString("PlayerSleepTimeout", null);
        if (StringUtils.isNullOrEmpty(string)) {
            return new int[0];
        }
        int[] iArr = new int[7];
        Matcher matcher = _SleepTimes.matcher(string);
        int i = 0;
        while (matcher.find()) {
            int safeParseInt = StringUtils.safeParseInt(matcher.group(), 0);
            if (safeParseInt > 0 && safeParseInt < 10000) {
                iArr[i] = safeParseInt;
                i++;
            }
            if (i > iArr.length - 1) {
                break;
            }
        }
        int[] iArr2 = new int[i];
        for (int i2 = 0; i2 != i; i2++) {
            iArr2[i2] = iArr[i2];
        }
        return iArr2;
    }

    public static int playlistEndAction() {
        return StringUtils.safeParseInt(_preferences.getString("PlaylistEndAction", NotificationPreferences.YES), 1);
    }

    public static void setPlaylistEndAction(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "PlaylistEndAction", Integer.toString(i));
    }

    public static boolean allowSeekingOfInternetStreams() {
        return CoreHelper.apiLevel() >= 8;
    }

    @TargetApi(21)
    public static int defaultDeviceWakeLock() {
        int i = CoreHelper.apiLevel() > 19 ? 32 : 6;
        if (!keepScreenOnWhenUpdatingOverWiFi()) {
            return 1;
        }
        if (BeyondPodApplication.isWiFiEnabled() || turnWiFiDuringUpdate()) {
            return i | 268435456;
        }
        return 1;
    }

    public static boolean keepScreenOnWhenUpdatingOverWiFi() {
        return screenPowerStateDuringWiFiUpdates() == 1;
    }

    public static int screenPowerStateDuringWiFiUpdates() {
        if (!_preferences.contains("ScreenPowerStateDuringWiFiUpdates")) {
            setScreenPowerStateDuringWiFiUpdates(_preferences.getBoolean("keepScreenOnWhenUpdatingOverWiFi", false) ? 1 : 2);
        }
        return StringUtils.safeParseInt(_preferences.getString("ScreenPowerStateDuringWiFiUpdates", NotificationPreferences.NO), 0);
    }

    public static void setScreenPowerStateDuringWiFiUpdates(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "ScreenPowerStateDuringWiFiUpdates", Integer.toString(i));
    }

    public static boolean checkForNetworkConnectivity() {
        return _preferences.getBoolean("checkForNetworkConnectivity", true);
    }

    public static int volumeControlsNavigationType() {
        return StringUtils.safeParseInt(_preferences.getString("VolumeControlsNavigationType", NotificationPreferences.NO), 0);
    }

    public static int podcastNamingScheme() {
        return StringUtils.safeParseInt(_preferences.getString("podcastNamingScheme", NotificationPreferences.NO), 0);
    }

    public static void setPodcastNamingScheme(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "podcastNamingScheme", Integer.toString(i));
    }

    public static int BTNextButtonAction() {
        int i;
        if (_preferences.contains("BTNextButtonAction")) {
            i = 2;
        } else {
            i = BTRemoteButtonAction() != 1 ? 3 : 1;
            ConfigWriteHelper.getInstance().putString(_preferences, "BTNextButtonAction", Integer.toString(i));
        }
        return StringUtils.safeParseInt(_preferences.getString("BTNextButtonAction", Integer.toString(i)), i);
    }

    public static int BTPreviousButtonAction() {
        if (!_preferences.contains("BTPreviousButtonAction")) {
            r1 = BTRemoteButtonAction() != 1 ? 4 : 2;
            ConfigWriteHelper.getInstance().putString(_preferences, "BTPreviousButtonAction", Integer.toString(r1));
        }
        return StringUtils.safeParseInt(_preferences.getString("BTPreviousButtonAction", Integer.toString(r1)), r1);
    }

    public static int WRLongPressButtonAction() {
        return StringUtils.safeParseInt(_preferences.getString("WRLongPressButtonAction", Integer.toString(3)), 3);
    }

    public static int WRDoubleClickButtonAction() {
        return StringUtils.safeParseInt(_preferences.getString("WRDoubleClickButtonAction", Integer.toString(1)), 1);
    }

    public static float defaultPlaybackSpeed() {
        return StringUtils.safeParseFloat(_preferences.getString("defaultPlaybackSpeed", "1.0"), 1.0f);
    }

    public static void setDefaultPlaybackSpeed(float f) {
        ConfigWriteHelper.getInstance().putString(_preferences, "defaultPlaybackSpeed", Float.toString(f));
    }

    public static boolean isInstalledOnSDCard() {
        try {
            return (BeyondPodApplication.getInstance().getPackageManager().getPackageInfo(packageName(), 0).applicationInfo.flags & 262144) == 262144;
        } catch (Exception e) {
            CoreHelper.logException(TAG, "failed to check BeyondPod install location", e);
            return false;
        }
    }

    public static String packageName() {
        return BeyondPodApplication.getInstance().getPackageName();
    }

    public static boolean enableFadeInOnPlaybackStart() {
        return _preferences.getBoolean("EnableFadeInOnPlaybackStart", false);
    }

    public static boolean enablePresto() {
        return _preferences.getBoolean("EnablePresto", false);
    }

    public static boolean enableAudioPlugins() {
        if (isSpeedAlterationSupportedOnAppStore()) {
            return _preferences.getBoolean("EnableAudioPlugins", true);
        }
        return false;
    }

    public static void setEnableAudioPlugins(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "EnableAudioPlugins", z);
    }

    public static boolean useAudioPluginForConfiguredFeedsOnly() {
        return _preferences.getBoolean("UseAudioPluginForConfiguredFeedsOnly", false);
    }

    public static boolean enableSonicAudioPlugin() {
        return _preferences.getBoolean("EnableSonicAudioPlugin", false);
    }

    public static void setEnableSonicAudioPlugin(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "EnableSonicAudioPlugin", z);
    }

    public static boolean showContentListPostImages() {
        return _preferences.getBoolean("ShowContentListPostImages", false);
    }

    public static void setShowContentListPostImages(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "ShowContentListPostImages", z);
    }

    public static boolean useFeedAlbumArtForEpisodes() {
        return _preferences.getBoolean("UseFeedAlbumArtForEpisodes", false);
    }

    public static float playbackSpeed1() {
        return StringUtils.safeParseFloat(_preferences.getString("playbackSpeed1", "1.5f"), 1.5f);
    }

    public static void setPlaybackSpeed1(float f) {
        ConfigWriteHelper.getInstance().putString(_preferences, "playbackSpeed1", Float.toString(f));
    }

    public static float playbackSpeed2() {
        return StringUtils.safeParseFloat(_preferences.getString("playbackSpeed2", "2.0f"), 2.0f);
    }

    public static void setPlaybackSpeed2(float f) {
        ConfigWriteHelper.getInstance().putString(_preferences, "playbackSpeed2", Float.toString(f));
    }

    public static boolean allowCleanupForManualDownloads() {
        return _preferences.getBoolean("AllowCleanupForManualDownloads", false);
    }

    public static boolean allowMarginNavigationInFeedItemContentDialog() {
        return _preferences.getBoolean("AllowMarginNavigationInFeedItemContentDialog", false);
    }

    public static int widgetBackgroundColor() {
        return StringUtils.safeParseInt(_preferences.getString("widgetBackgroundColor", Integer.toString(1)), 1);
    }

    public static void setWidgetBackgroundColor(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "widgetBackgroundColor", Integer.toString(i));
    }

    public static boolean autoSyncSmartPlay() {
        return _preferences.getBoolean("AutoSyncSmartPlay", false);
    }

    public static boolean defferAutoSyncSmartPlay() {
        return _preferences.getBoolean("defferAutoSyncSmartPlay", false);
    }

    public static boolean keepCurrentEpisodeForDefferAutoSyncSmartPlay() {
        return _preferences.getBoolean("KeepCurrentEpisodeForDefferAutoSyncSmartPlay", true);
    }

    public static void setDefferAutoSyncSmartPlay(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "defferAutoSyncSmartPlay", z);
    }

    public static boolean allowVideosInPlaylist() {
        return _preferences.getBoolean("allowVideosInPlaylist", false);
    }

    public static void setAllowVideosInPlaylist(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "allowVideosInPlaylist", z);
    }

    public static long lastSyncTimeStamp() {
        return _preferences.getLong("lastSyncTimeStamp", -1L);
    }

    public static void setLastSyncTimeStamp(long j) {
        ConfigWriteHelper.getInstance().putLong(_preferences, "lastSyncTimeStamp", j);
    }

    public static long lastRemoteChangeTimeStamp() {
        return _preferences.getLong("lastRemoteChangeTimeStamp", -1L);
    }

    public static void setLastRemoteChangeTimeStamp(long j) {
        ConfigWriteHelper.getInstance().putLong(_preferences, "lastRemoteChangeTimeStamp", j);
    }

    public static boolean CDSEnabled() {
        return _preferences.getBoolean("CDSEnabled", false);
    }

    public static void setCDSEnabled(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "CDSEnabled", z);
    }

    public static String CDSUserName() {
        return _preferences.getString("CDSUserName", "");
    }

    public static void setCDSUserName(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "CDSUserName", str);
    }

    public static String CDSPassword() {
        return _preferences.getString("CDSPassword", "");
    }

    public static void setCDSPassword(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "CDSPassword", str);
    }

    public static String CDSToken() {
        return _preferences.getString("CDSToken", "");
    }

    public static void setCDSToken(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "CDSToken", str);
    }

    public static String CDSDeviceID() {
        return _preferences.getString("CDSDeviceID", "");
    }

    public static void setCDSDeviceID(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "CDSDeviceID", str);
    }

    public static Date CDSTokenExpiration() {
        long j = _preferences.getLong("CDSTokenExpiration", 0L);
        if (j > 0) {
            return new Date(j);
        }
        return new Date();
    }

    public static void setCDSTokenExpiration(Date date) {
        ConfigWriteHelper.getInstance().putLong(_preferences, "CDSTokenExpiration", date.getTime());
    }

    public static Uri CDSEndpoint() {
        Uri CDSCustomEndpointPath = CDSCustomEndpointPath();
        return CDSCustomEndpointPath != null ? CDSCustomEndpointPath : Uri.parse("https://feedsync.beyondpod.mobi/beyondpod");
    }

    public static Uri CDSServiceEndpoint() {
        return Uri.withAppendedPath(CDSEndpoint(), "rest");
    }

    public static Uri CDSCustomEndpointPath() {
        String debugProperty = getDebugProperty("CDSEndpoint", null);
        if (StringUtils.isNullOrEmpty(debugProperty) || !debugProperty.startsWith("http")) {
            return null;
        }
        return Uri.parse(debugProperty + "/beyondpod");
    }

    public static boolean CDSDebugEnabled() {
        return !StringUtils.isNullOrEmpty(getDebugProperty("CDSEndpoint", null));
    }

    public static boolean CDSAllowRemoteEpisodeDeletions() {
        return _preferences.getBoolean("CDSAllowRemoteEpisodeDeletions", false);
    }

    public static void setCDSAllowRemoteEpisodeDeletions(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "CDSAllowRemoteEpisodeDeletions", z);
    }

    public static int CDSAllowRemoteFeeds() {
        return _preferences.getInt("CDSAllowRemoteFeeds", 2);
    }

    public static void setCDSAllowRemoteFeeds(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "CDSAllowRemoteFeeds", i);
    }

    public static boolean CDSSyncFurthestPlayedPositionOnly() {
        return _preferences.getBoolean("CDSSyncFurthestPlayedPositionOnly", false);
    }

    public static void setCDSSyncFurthestPlayedPositionOnly(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "CDSSyncFurthestPlayedPositionOnly", z);
    }

    public static int CDSSyncRetryInterval() {
        return _preferences.getInt("CDSSyncRetryInterval", 0);
    }

    public static void setCDSSyncRetryInterval(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "CDSSyncRetryInterval", i);
    }

    public static boolean showCDSSettings() {
        return _preferences.getBoolean("showCDSSettings", false);
    }

    public static void setShowCDSSettings(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "showCDSSettings", z);
    }

    public static boolean ignoreGoogleReaderReadStatus() {
        return _preferences.getBoolean("IgnoreGoogleReaderReadStatus", false);
    }

    public static int skipToEndButtonClickType() {
        return StringUtils.safeParseInt(_preferences.getString("SkipToEndButtonClickType", "3"), 3);
    }

    public static void setSkipToEndButtonClickType(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "SkipToEndButtonClickType", Integer.toString(i));
    }

    public static boolean notifyForBetaReleases() {
        return _preferences.getBoolean("NotifyForBetaReleases", false);
    }

    public static void setAutoPlaylistEnabled(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "AutoPlaylistEnabled", z);
    }

    public static boolean autoPlaylistEnabled() {
        return _preferences.getBoolean("AutoPlaylistEnabled", true);
    }

    public static boolean autoPlaySmartPlaylists() {
        return _preferences.getBoolean("AutoPlaySmartPlaylists", true);
    }

    public static boolean removePlayedFromPlaylist() {
        return _preferences.getBoolean("RemovePlayedFromPlaylist", false);
    }

    public static void setRemovePlayedFromPlaylist(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "RemovePlayedFromPlaylist", z);
    }

    public static String defaultBackupPath() {
        String string = _preferences.getString("defaultBackupPath", null);
        if (string != null && !new File(string).exists()) {
            setDefaultBackupPath(null);
        }
        return _preferences.getString("defaultBackupPath", defaultBackupsStorageRoot());
    }

    public static void setDefaultBackupPath(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "defaultBackupPath", str);
    }

    public static int androidBackupRestored() {
        return _preferences.getInt("androidBackupRestored", -1);
    }

    public static void setAndroidBackupRestored(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "androidBackupRestored", i);
    }

    public static String lastSDCardRootPath() {
        return _preferences.getString("lastSDCardRootPath", null);
    }

    public static void setLastSDCardRootPath(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "lastSDCardRootPath", str);
    }

    public static boolean preferLastSDCardRoot() {
        return _preferences.getBoolean("PreferLastSDCardRoot", false);
    }

    public static void setPreferLastSDCardRoot(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "PreferLastSDCardRoot", z);
    }

    public static boolean keepMetadataForMissingEpisodes() {
        return _preferences.getBoolean("keepMetadataForMissingEpisodes", true);
    }

    public static Feed findFeedByIdInTempOrRepository(UUID uuid) {
        Feed feedById = FeedRepository.getFeedById(uuid);
        return feedById == null ? TempFeedHolder.get(uuid) : feedById;
    }

    public static boolean keepCurrentEpisodeForClearPlaylist() {
        return _preferences.getBoolean("KeepCurrentEpisodeForClearPlaylist", false);
    }

    public static boolean showPlayerPausedNotication() {
        return _preferences.getBoolean("EnhancedPlayerNotication", false);
    }

    public static void setShowPlayerPausedNotication(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "EnhancedPlayerNotication", z);
    }

    public static int resumeReplayDuration() {
        return StringUtils.safeParseInt(_preferences.getString("ResumeReplayDuration", NotificationPreferences.NO), 0);
    }

    public static boolean allowPullToRefresh() {
        return _preferences.getBoolean("AllowPullToRefresh", true);
    }

    public static boolean automaticallyCleanPlayedEpisodes() {
        return _preferences.getBoolean("AutomaticallyCleanPlayedEpisodes", false);
    }

    public static void setAllowPullToRefresh(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "AllowPullToRefresh", z);
    }

    public static int allowEpisodeStreaming() {
        return StringUtils.safeParseInt(_preferences.getString("AllowEpisodeStreaming", Integer.toString(0)), 0);
    }

    public static boolean isExpirationWarningShownInThisSession() {
        return _IsExpirationWarningShownInThisSession;
    }

    public static void setExpirationWarningShownInThisSession() {
        _IsExpirationWarningShownInThisSession = true;
    }

    public static String getRepoMovedPath() {
        return _preferences.getString("RepoMovedPath", "");
    }

    public static void setRepoMovedPath(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "RepoMovedPath", str);
    }

    public static boolean enableQuickNetworkCheck() {
        return StringUtils.tryParseIntFromString(_preferences.getString("httpConnectionTimeout", "20"), 20).intValue() < 0;
    }

    public static int DBGMaxFeedPosts() {
        return StringUtils.safeParseInt(getDebugProperty("MaxFeedPosts", "3000"), PathInterpolatorCompat.MAX_NUM_POINTS);
    }

    public static int DBGChromecastEnvironment() {
        return StringUtils.safeParseInt(getDebugProperty("CCEnv", NotificationPreferences.NO), 0);
    }

    public static int DBGEnableAds() {
        return StringUtils.safeParseInt(getDebugProperty("ShowAds", NotificationPreferences.NO), 0);
    }

    public static int DBGShowSettings() {
        return StringUtils.safeParseInt(getDebugProperty("ShowSettings", NotificationPreferences.NO), 0);
    }

    public static int DBGAudioTrackBufferMultiplier() {
        return StringUtils.safeParseInt(getDebugProperty("ATBuff", "4"), 4);
    }

    public static int DBGUIDebug() {
        return StringUtils.safeParseInt(getDebugProperty("UIDebug", NotificationPreferences.NO), 0);
    }

    public static int DBGThrottlePublishPlaybackProgressToWearSeconds() {
        return StringUtils.safeParseInt(getDebugProperty("ThrottleWear", "60"), 60);
    }

    public static int DBGAutoMaxListSize() {
        return StringUtils.safeParseInt(getDebugProperty("AutoMaxListSize", "15"), 15);
    }

    public static int DBGAutoBrowsable() {
        return StringUtils.safeParseInt(getDebugProperty("AutoBrowsable", NotificationPreferences.NO), 0);
    }

    public static boolean DBGAutoVerifyCallers() {
        return StringUtils.safeParseInt(getDebugProperty("AutoVerifyCallers", NotificationPreferences.YES), 1) > 0;
    }

    public static boolean DBGUseChromeTabs() {
        return StringUtils.safeParseInt(getDebugProperty("UseChromeTabs", NotificationPreferences.YES), 1) > 0;
    }

    private static String DBGTagContainerID() {
        return getDebugProperty("TagContainer", TAG_MANAGER_CONTAINER_ID);
    }

    public static int DBGActionBarScroll() {
        return StringUtils.safeParseInt(getDebugProperty("ActionBarScroll", NotificationPreferences.YES), 1);
    }

    private static String getDebugProperty(String str, String str2) {
        if (_preferences == null) {
            return str2;
        }
        String string = _preferences.getString("DebugSettings", null);
        if (StringUtils.isNullOrEmpty(string)) {
            return str2;
        }
        Properties properties = new Properties();
        try {
            properties.load(new StringReader(string));
            return properties.getProperty(str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static String GCMRegistrationId() {
        String string = _preferences.getString("GCMRegistrationId", "");
        return (!string.isEmpty() && _preferences.getInt("GCMRegistrationAppVersion", Integer.MIN_VALUE) == currentProductVersionCode()) ? string : "";
    }

    public static void setGCMRegistrationId(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "GCMRegistrationId", str);
        ConfigWriteHelper.getInstance().putInt(_preferences, "GCMRegistrationAppVersion", currentProductVersionCode());
    }

    public static void clearGCMRegistrationId() {
        ConfigWriteHelper.getInstance().putString(_preferences, "GCMRegistrationId", "");
        ConfigWriteHelper.getInstance().putInt(_preferences, "GCMRegistrationAppVersion", Integer.MIN_VALUE);
    }

    public static void setRegisteredOnServer(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "GCMRegisteredOnServer", z);
    }

    public static boolean isRegisteredOnServer() {
        return _preferences.getBoolean("GCMRegisteredOnServer", false);
    }

    public static boolean actionBarUsesCategoryColor() {
        return CoreHelper.apiLevel() >= 21 || StringUtils.safeParseInt(getDebugProperty("ABColor", NotificationPreferences.NO), 0) != 0;
    }

    public static boolean allowHidingRead() {
        return _preferences.getBoolean("AllowHidingRead", false);
    }

    public static void setAllowHidingRead(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "AllowHidingRead", z);
    }

    public static String getExpandedCategories() {
        return _preferences.getString("ExpandedCategories", null);
    }

    public static void setExpandedCategories(String str) {
        ConfigWriteHelper.getInstance().putString(_preferences, "ExpandedCategories", str);
    }

    public static int primarySmartplayId() {
        return _preferences.getInt("primarySmartplayId", -1);
    }

    public static void setPrimarySmartplayId(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "primarySmartplayId", i);
    }

    public static int lastUsedSmartplayId() {
        return _preferences.getInt("lastUsedSmartplayId", -1);
    }

    public static void setLastUsedSmartplayId(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "lastUsedSmartplayId", i);
    }

    public static boolean playerCarModeVisible() {
        return _preferences.getBoolean("playerCarModeVisible", false);
    }

    public static void setPlayerCarModeVisible(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "playerCarModeVisible", z);
    }

    public static int getFeedSelectedAction() {
        return StringUtils.safeParseInt(_preferences.getString("FeedSelectedAction", NotificationPreferences.NO), 0);
    }

    public static void setFeedSelectedAction(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "FeedSelectedAction", Integer.toString(i));
    }

    public static int userHomeScreen() {
        return StringUtils.safeParseInt(_preferences.getString("UserHomeScreen", NotificationPreferences.NO), 0);
    }

    public static int nextSmartPlayShortcutId() {
        return _preferences.getInt("nextSmartPlayShortcutId", 0);
    }

    public static void setNextSmartPlayShortcutId(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "nextSmartPlayShortcutId", i);
    }

    public static int trialExpirationWarningDays() {
        return _preferences.getInt("trialExpirationWarningDays", -1);
    }

    public static void setTrialExpirationWarningDays(int i) {
        ConfigWriteHelper.getInstance().putInt(_preferences, "trialExpirationWarningDays", i);
    }

    public static int activeTheme() {
        return StringUtils.safeParseInt(_preferences.getString("ActiveTheme", NotificationPreferences.YES), 1);
    }

    public static int episodeCardSize() {
        return StringUtils.safeParseInt(_preferences.getString("episodeCardSize", NotificationPreferences.YES), 1);
    }

    public static void setEpisodeCardSize(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "episodeCardSize", Integer.toString(i));
    }

    public static int publishedEpisodeCardSize() {
        return StringUtils.safeParseInt(_preferences.getString("publishedEpisodeCardSize", NotificationPreferences.YES), 1);
    }

    public static void setPublishedEpisodeCardSize(int i) {
        ConfigWriteHelper.getInstance().putString(_preferences, "publishedEpisodeCardSize", Integer.toString(i));
    }

    public static boolean automaticallyReDownloadPartialEpisodes() {
        return _preferences.getBoolean("AutomaticallyReDownloadPartialEpisodes", true);
    }

    public static void setAutomaticallyReDownloadPartialEpisodes(boolean z) {
        ConfigWriteHelper.getInstance().putBoolean(_preferences, "AutomaticallyReDownloadPartialEpisodes", z);
    }

    private static long getContainerLongValue(String str) {
        Container container;
        try {
            if (_TagManagerContainerHolder == null || (container = _TagManagerContainerHolder.getContainer()) == null) {
                return -1L;
            }
            return container.getLong(str);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static boolean isAdSupported() {
        return getContainerLongValue("enable-ads") > 0;
    }

    public static boolean freeMultiDownloads() {
        return getContainerLongValue("free-multidownloads") > 0;
    }

    public static boolean freeScheduling() {
        return getContainerLongValue("free-scheduling") > 0;
    }

    public static boolean freeAuto() {
        return getContainerLongValue("free-auto") > 0;
    }

    public static boolean freeChromecast() {
        return getContainerLongValue("free-chromecast") > 0;
    }

    public static boolean freeSpeed() {
        return getContainerLongValue("free-playback-speed") > 0;
    }

    public static boolean freeCDS() {
        return getContainerLongValue("free-cds") > 0;
    }
}
