package mobi.beyondpod.rsscore.helpers;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.VibrationEffect;
import android.os.Vibrator;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.MimeTypeMap;
import com.crashlytics.android.Crashlytics;
import com.google.android.gms.cast.HlsSegmentFormat;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.regex.Pattern;
import mobi.beyondpod.BeyondPodApplication;
import mobi.beyondpod.downloadengine.DownloadStatistics;
import mobi.beyondpod.downloadengine.EnclosureDownloadManager;
import mobi.beyondpod.downloadengine.HttpClientFactory;
import mobi.beyondpod.downloadengine.IHttpClient;
import mobi.beyondpod.downloadengine.ProcessStatistics;
import mobi.beyondpod.downloadengine.RssFeedUpdateManager;
import mobi.beyondpod.downloadengine.UpdateAndDownloadManager;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.events.ApplicationEvents;
import mobi.beyondpod.rsscore.repository.FlashStorageLocation;
import mobi.beyondpod.rsscore.repository.RepositoryPersistence;
import mobi.beyondpod.rsscore.rss.LicenseManager;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

/* loaded from: classes.dex */
public class CoreHelper {
    public static final int ALLOW_DELATIONS_Allow = 0;
    public static final int ALLOW_DELATIONS_DoNotAllow = 1;
    public static final int ALLOW_DELATIONS_UseParentSetting = 2;
    public static final int ALLOW_STREAMING_ALWAYS = 0;
    public static final int ALLOW_STREAMING_NONE = 2;
    public static final int ALLOW_STREAMING_WIFI_ONLY = 1;
    public static final int APP_STORE_AMAZON = 2;
    public static final int APP_STORE_ANDROID_MARKET = 1;
    public static final int APP_STORE_UNKNOWN = 0;
    public static final int CDS_ALLOW_REMOTE_FEED_ADD_ALWAYS = 1;
    public static final int CDS_ALLOW_REMOTE_FEED_ADD_NEVER = 0;
    public static final int CDS_ALLOW_REMOTE_FEED_ADD_PUSH_ONLY = 2;
    public static final int DOWNLOAD_STATUS_Connecting = 1;
    public static final int DOWNLOAD_STATUS_Downloaded = 3;
    public static final int DOWNLOAD_STATUS_Downloading = 2;
    public static final int DOWNLOAD_STATUS_Error = 5;
    public static final int DOWNLOAD_STATUS_PreparingForDownload = 6;
    public static final int DOWNLOAD_STATUS_Stopped = 4;
    public static final int DOWNLOAD_STATUS_Unknown = 0;
    public static final int EPISODE_FILTER_Audio_Only = 1;
    public static final int EPISODE_FILTER_Downloaded_Only = 3;
    public static final int EPISODE_FILTER_Locked = 5;
    public static final int EPISODE_FILTER_None = 0;
    public static final int EPISODE_FILTER_Not_Played = 6;
    public static final int EPISODE_FILTER_Unfinished = 4;
    public static final int EPISODE_FILTER_Video_Only = 2;
    public static final int FEED_TYPE_AudioBook = 6;
    public static final int FEED_TYPE_GReaderFeed = 5;
    public static final int FEED_TYPE_LocalFolder = 1;
    public static final int FEED_TYPE_OPMLFeed = 4;
    public static final int FEED_TYPE_RSSFeed = 2;
    public static final int FEED_TYPE_RSSFeedWithPodcasts = 3;
    public static final int FEED_TYPE_Unknown = 0;
    private static final float GB = 1.0737418E9f;
    public static final int HEADSET_REMOTE_ACTION_NEXT_TRACK = 1;
    public static final int HEADSET_REMOTE_ACTION_PREV_TRACK = 2;
    public static final int HEADSET_REMOTE_ACTION_SKIP_BACK = 4;
    public static final int HEADSET_REMOTE_ACTION_SKIP_FORWARD = 3;
    public static final int HEADSET_REMOTE_ACTION_SKIP_TO_END = 5;
    public static final int ITEM_FILTER_Downloaded_Only = 3;
    public static final int ITEM_FILTER_Local_Only = 2;
    public static final int ITEM_FILTER_None = 0;
    public static final int ITEM_FILTER_Unread_Only = 1;
    public static final int ITEM_ID_ALGORITHM_FP_TITLE_LINK_PUB_DATE = 1;
    public static final int ITEM_ID_ALGORITHM_ITEM_GUID = 2;
    public static final int ITEM_ID_ALGORITHM_TITLE = 4;
    public static final int ITEM_ID_ALGORITHM_TITLE_LINK = 3;
    public static final int ITEM_ID_ALGORITHM_UNKNOWN = -1;
    public static final int MARK_AS_READ_ON_OPEN_AllFeeds = 2;
    public static final int MARK_AS_READ_ON_OPEN_NonPodcastFeeds = 1;
    public static final int MARK_AS_READ_ON_OPEN_None = 0;
    private static final float MB = 1048576.0f;
    public static final int MEDIA_END_ACTION_DeleteAndDoNothing = 3;
    public static final int MEDIA_END_ACTION_DeleteAndPlayNext = 1;
    public static final int MEDIA_END_ACTION_DoNothing = 2;
    public static final int MEDIA_END_ACTION_PlayNext = 0;
    public static final int MillisecondsInDay = 86400000;
    public static final int ORIENTATION_AUTO = 0;
    public static final int ORIENTATION_LOCKED_LANDSCAPE = 2;
    public static final int ORIENTATION_LOCKED_PORTRAIT = 1;
    public static final int ORIENTATION_STICKY_PLAYER = 3;
    public static final int PLAYER_INTEGRATION_UseDefault = -1;
    public static final int PLAYER_INTEGRATION_UseExternal = 3;
    public static final int PLAYER_INTEGRATION_UseExternalAudioPlayer = 2;
    public static final int PLAYER_INTEGRATION_UseExternalVideoPlayer = 1;
    public static final int PLAYER_INTEGRATION_UseInternalPlayer = 0;
    public static final int PLAYER_PLAYBACK_SCREEN_POWER_STATE_AlwaysBright = 4;
    public static final int PLAYER_PLAYBACK_SCREEN_POWER_STATE_AlwaysDim = 3;
    public static final int PLAYER_PLAYBACK_SCREEN_POWER_STATE_AlwaysOff = 0;
    public static final int PLAYER_PLAYBACK_SCREEN_POWER_STATE_BrightIfCharging = 2;
    public static final int PLAYER_PLAYBACK_SCREEN_POWER_STATE_DimIfCharging = 1;
    public static final int PLAY_STATE_Error = 7;
    public static final int PLAY_STATE_Error_Cant_Cast = 9;
    public static final int PLAY_STATE_Error_Streaming_Disabled = 8;
    public static final int PLAY_STATE_Paused = 0;
    public static final int PLAY_STATE_Playing = 1;
    public static final int PLAY_STATE_Prepared = 4;
    public static final int PLAY_STATE_Preparing = 3;
    public static final int PLAY_STATE_Seeking = 6;
    public static final int PLAY_STATE_Stop = 2;
    public static final int PLAY_STATE_Unknown = -1;
    public static final int PODCAST_DOWNLOAD_ACTION_CreateStreamableTrack = 2;
    public static final int PODCAST_DOWNLOAD_ACTION_CreateStreamableTrack_InOrder = 5;
    public static final int PODCAST_DOWNLOAD_ACTION_DoNotDownload = 0;
    public static final int PODCAST_DOWNLOAD_ACTION_DownloadPodcast = 1;
    public static final int PODCAST_DOWNLOAD_ACTION_DownloadPodcasts_In_Order = 4;
    public static final int PODCAST_DOWNLOAD_ACTION_IgnoreTracks = 3;
    public static final int PODCAST_NAMING_SCHEME_POST_FILE_NAME = 2;
    public static final int PODCAST_NAMING_SCHEME_POST_ID3_TAG_NAME = 1;
    public static final int PODCAST_NAMING_SCHEME_POST_TITLE = 0;
    public static final int REPOSITORY_LOAD_KIND_Backup = 2;
    public static final int REPOSITORY_LOAD_KIND_LongTermBackup = 3;
    public static final int REPOSITORY_LOAD_KIND_Normal = 1;
    public static final int REPOSITORY_LOAD_KIND_RecoveryFailed = 0;
    public static final int REPOSITORY_LOAD_KIND_Unknown = -1;
    public static final int REPOSITORY_STATE_Loaded = 2;
    public static final int REPOSITORY_STATE_Loading = 0;
    public static final int REPOSITORY_STATE_Saving = 3;
    public static final int REPOSITORY_STATE_ScanningForPodcasts = 1;
    public static final int REPOSITORY_STATE_Uninitialized = -1;
    public static final int SCREEN_POWER_STATE_DURING_WIFI_UPDATES_ALWAYS_OFF = 2;
    public static final int SCREEN_POWER_STATE_DURING_WIFI_UPDATES_ALWAYS_ON = 1;
    public static final int SCREEN_POWER_STATE_DURING_WIFI_UPDATES_AUTOMATIC = 0;
    public static final int SORT_ORDER_ByDateAsc = 2;
    public static final int SORT_ORDER_ByDateDesc = 3;
    public static final int SORT_ORDER_ByFileNameAsc = 8;
    public static final int SORT_ORDER_ByFileNameDesc = 9;
    public static final int SORT_ORDER_ByFileSizeDesc = 10;
    public static final int SORT_ORDER_ByMediaTypeAsc = 7;
    public static final int SORT_ORDER_ByNameAsc = 0;
    public static final int SORT_ORDER_ByNameDesc = 1;
    public static final int SORT_ORDER_ByPlayedPortionAsc = 6;
    public static final int SORT_ORDER_ByTotalTimeAsc = 4;
    public static final int SORT_ORDER_ByTotalTimeDesc = 5;
    public static final int SORT_ORDER_Random = 100;
    public static final int SORT_ORDER_Unknown = -1;
    public static final int STARTUP_VIEW_CATEGORIES = 3;
    public static final int STARTUP_VIEW_FEEDS = 0;
    public static final int STARTUP_VIEW_PLAYER = 2;
    public static final int STARTUP_VIEW_PODCASTS = 1;
    private static final String TAG = "CoreHelper";
    public static final int TRACK_CONTENT_TYPE_Audio = 1;
    public static final int TRACK_CONTENT_TYPE_Image = 3;
    public static final int TRACK_CONTENT_TYPE_Unavailalble = -1;
    public static final int TRACK_CONTENT_TYPE_Unknown = 0;
    public static final int TRACK_CONTENT_TYPE_Unspecified = -2;
    public static final int TRACK_CONTENT_TYPE_Video = 2;
    public static final int TRACK_PLAYABLE_STATE_CurrentlyDownloading = 5;
    public static final int TRACK_PLAYABLE_STATE_LocalTrackExistsAndFullyDownloaded = 0;
    public static final int TRACK_PLAYABLE_STATE_LocalTrackExistsAndFullyDownloadedAndPlaying = 6;
    public static final int TRACK_PLAYABLE_STATE_LocalTrackExistsAndPartiallyDownloaded = 1;
    public static final int TRACK_PLAYABLE_STATE_NoTrackExists_InHistory = 3;
    public static final int TRACK_PLAYABLE_STATE_NoTrackExists_NotInHistory = 4;
    public static final int TRACK_PLAYABLE_STATE_StreamableTrackExists = 2;
    public static final int TRACK_PLAYABLE_STATE_StreamableTrackExistsAndPlaying = 7;
    public static final int UI_MODE_DEFAULT = 0;
    public static final int UI_MODE_NO_TOUCH = 2;
    public static final int UI_MODE_TOUCHSCREEN = 1;
    public static int VIBRATE_LONG = 90;
    public static int VIBRATE_SHORT = 30;
    public static final int VOLUME_NAVIGATION_OFF = 1;
    public static final int VOLUME_NAVIGATION_OFF_IF_PLAYING = 0;
    public static final int VOLUME_NAVIGATION_ON = 2;
    public static final int WIDGET_BG_COLOR_DARK = 1;
    public static final int WIDGET_BG_COLOR_LIGHT = 2;
    public static final int WIDGET_BG_COLOR_NONE = 3;
    private static Boolean _CGBuild = null;
    private static int _HtmlPadding = 1000;
    static long _LastTraceTime;
    private static Handler _TraceBroadcastHandler;
    private static StringBuilder sFormatBuilder = new StringBuilder();
    private static Formatter sFormatter = new Formatter(sFormatBuilder, Locale.getDefault());
    private static Thread _RedirectFollowerThread = new Thread();
    private static final Object[] sTimeArgs = new Long[5];
    private static final String[] _html = {"<b>", "</b>", "<i>", "</i>", "\n"};
    private static final String[] _empty = {"", "", "", "", ""};
    private static Pattern _htmlTags = Pattern.compile("<style.*/style>|<[^>]*>|&#[0-9]*;|\\s{3,}", 32);
    private static Pattern _nl = Pattern.compile("\r\n|[\r\n]", 32);
    private static Runnable _SaveStatisticsRunnable = new Runnable() { // from class: mobi.beyondpod.rsscore.helpers.CoreHelper.5
        @Override // java.lang.Runnable
        public void run() {
            CoreHelper.dumpUpdateStatisticsInternal();
        }
    };

    @SuppressLint({"SdCardPath"})
    private static String[] optionalStorageMounts = {"/emmc", "/mnt/sdcard/external_sd", "/mnt/external_sd", "/sdcard/sd", "/mnt/sdcard/bpemmctest", "/mnt/sdcard/_ExternalSD", "/mnt/sdcard-ext", "/mnt/Removable/MicroSD", "/Removable/MicroSD", "/mnt/external1", "/mnt/extSdCard", "/storage/sdcard1", "/storage/external_SD"};

    /* loaded from: classes.dex */
    public interface FollowRedirectResult {
        void onComplete(String str, int i, Exception exc);
    }

    /* loaded from: classes.dex */
    public static class TrackSizeInfo {
        public long sizeOnDisk;
        public long totalTime;
        public boolean totalTimeIsApproximate;
    }

    /* loaded from: classes.dex */
    public static class InsuficientStorageSpaceException extends Exception {
        public InsuficientStorageSpaceException(String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    public static class UnableToEstablishNetworkConnectionException extends Exception {
        public UnableToEstablishNetworkConnectionException(String str) {
            super(str);
        }
    }

    public static void setTraceBroadcastContext(Handler handler) {
        _TraceBroadcastHandler = handler;
    }

    public static String formatTimeAsString(long j) {
        return formatTimeAsString(j, false);
    }

    public static String formatTimeAsString(long j, boolean z) {
        sFormatBuilder.setLength(0);
        try {
            Object[] objArr = sTimeArgs;
            objArr[0] = Long.valueOf(j / 3600);
            objArr[1] = Long.valueOf(j / 60);
            objArr[2] = Long.valueOf((j / 60) % 60);
            objArr[3] = Long.valueOf(j);
            objArr[4] = Long.valueOf(j % 60);
            double d = j;
            return sFormatter.format(d / 3600.0d > 1.0d ? z ? "%1$d:%3$02d:%5$02d" : "%1$d:%3$02dh" : d / 60.0d > 1.0d ? "%2$d:%5$02d" : "%4$ds", objArr).toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public static String formatSecondsAsMinutes(long j) {
        if (j <= 0) {
            return "";
        }
        sFormatBuilder.setLength(0);
        int floor = (int) Math.floor(j / 60);
        if (j % 60 >= 30) {
            floor++;
        }
        return sFormatter.format("%d min", Integer.valueOf(floor)).toString();
    }

    public static Uri safeCreateUri(String str) {
        try {
            return Uri.parse(str);
        } catch (Exception unused) {
            writeLogEntry(TAG, "failed to create URI from" + str);
            return null;
        }
    }

    public static URI safeCreateURI(String str) {
        int i = 100;
        while (true) {
            try {
                return new URI(str);
            } catch (URISyntaxException e) {
                str = safeEncodeUrl(str.substring(e.getIndex(), e.getIndex() + 1));
                int i2 = i - 1;
                if (i <= 0) {
                    return null;
                }
                i = i2;
            } catch (Exception unused) {
                writeLogEntry(TAG, "failed to create URI from" + str);
                return null;
            }
        }
    }

    public static boolean isValidUrl(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        try {
            URI uri = new URI(str);
            if (!StringUtils.isNullOrEmpty(uri.getScheme())) {
                if (!StringUtils.isNullOrEmpty(uri.getHost())) {
                    return true;
                }
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void writeLogEntryInProduction(String str, String str2) {
        if (Configuration.enableLoggingInProduction()) {
            writeLogEntry(str, str2);
        } else {
            writeTraceEntry(str, str2);
        }
    }

    public static void writeLogEntryInDebug(String str, String str2) {
        if (isDebugBuild()) {
            writeLogEntry(str, str2);
        } else {
            writeTraceEntry(str, str2);
        }
    }

    public static void writeLogEntry(final String str, final String str2) {
        writeTraceEntry(str, str2);
        RepositoryPersistence.repositoryHandler().post(new Runnable() { // from class: mobi.beyondpod.rsscore.helpers.CoreHelper.1
            @Override // java.lang.Runnable
            public void run() {
                String format = String.format("%s: %s (%s) - %s\r\n", DateTime.toShortString(new Date()), str, Configuration.productVersion(), str2);
                try {
                    BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(Configuration.logFilePath(), true), 8192);
                    bufferedWriter.write(format);
                    bufferedWriter.close();
                } catch (Throwable th) {
                    Log.e(CoreHelper.TAG, "Unable to write to the log file. reason: " + th.getMessage());
                    Log.e(str, format);
                }
            }
        });
    }

    public static String whoCalledMe() {
        StringBuilder sb = new StringBuilder();
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        for (int i = 2; i < stackTrace.length; i++) {
            StackTraceElement stackTraceElement = stackTrace[i];
            String className = stackTraceElement.getClassName();
            String methodName = stackTraceElement.getMethodName();
            int lineNumber = stackTraceElement.getLineNumber();
            sb.append(className);
            sb.append(".");
            sb.append(methodName);
            sb.append(":");
            sb.append(lineNumber);
            sb.append(" <= ");
        }
        return sb.toString();
    }

    public static void truncateLogFileIfNecessary() {
        File file = new File(Configuration.logFilePath());
        if (file.exists() && file.length() > 51200) {
            truncateLogFile(file);
        }
        File file2 = new File(Configuration.syncLogFilePath());
        if (!file2.exists() || file2.length() <= 51200) {
            return;
        }
        truncateLogFile(file2);
    }

    public static void truncateLogFile(File file) {
        try {
            String name = file.getName();
            int indexOf = name.indexOf(".");
            StringBuilder sb = new StringBuilder();
            sb.append(name.substring(0, indexOf));
            sb.append(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
            final String sb2 = sb.toString();
            final String substring = name.substring(indexOf);
            File file2 = new File(file.getParent());
            file.renameTo(File.createTempFile(sb2, substring, file2));
            File[] listFiles = file2.listFiles(new FileFilter() { // from class: mobi.beyondpod.rsscore.helpers.CoreHelper.2
                @Override // java.io.FileFilter
                public boolean accept(File file3) {
                    return file3.getName().startsWith(sb2) && file3.getName().endsWith(substring);
                }
            });
            if (listFiles.length <= 3) {
                return;
            }
            Arrays.sort(listFiles, 0, listFiles.length, new Comparator<File>() { // from class: mobi.beyondpod.rsscore.helpers.CoreHelper.3
                @Override // java.util.Comparator
                public int compare(File file3, File file4) {
                    if (file3.lastModified() > file4.lastModified()) {
                        return 1;
                    }
                    return file3.lastModified() < file4.lastModified() ? -1 : 0;
                }
            });
            for (int i = 0; i != listFiles.length - 3; i++) {
                listFiles[i].delete();
            }
        } catch (Exception e) {
            logException(TAG, "failed to truncate the log file!", e);
        }
    }

    public static void logUnhandledException(String str, String str2, Throwable th) {
        logExceptionInternal(str, str2, th, false);
    }

    public static void logException(String str, String str2, Throwable th) {
        logExceptionInternal(str, str2, th, true);
    }

    private static void logExceptionInternal(String str, String str2, Throwable th, boolean z) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        printWriter.print(str2 + " reason: ");
        printWriter.print(" [ ");
        printWriter.print(th.getClass().getName());
        printWriter.print(" ] ");
        printWriter.print(th.getMessage());
        th.printStackTrace(printWriter);
        String stringWriter2 = stringWriter.toString();
        if (Configuration.gatherAnalyticsData() && z) {
            try {
                Crashlytics.log(str2);
                Crashlytics.logException(th);
            } catch (Throwable unused) {
                writeTraceEntry(TAG, "failed to log exception with Crashlytics!");
            }
        }
        writeLogEntry(str, stringWriter2);
    }

    public static void writeTraceErrorInDebug(String str, String str2) {
        if (isDebugBuild()) {
            writeTraceEntryInternal(str, str2, 1);
        }
    }

    public static void writeTraceEntryInDebug(String str, String str2) {
        if (isDebugBuild()) {
            writeTraceEntryInternal(str, str2, 0);
        }
    }

    public static void writeTraceEntry(String str, String str2) {
        writeTraceEntryInternal(str, str2, 0);
    }

    private static void writeTraceEntryInternal(String str, String str2, int i) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (_LastTraceTime != 0) {
                long j = currentTimeMillis - _LastTraceTime;
                if (j < 1000) {
                    str2 = str2 + "  (" + (currentTimeMillis - _LastTraceTime) + " ms. since last trace)";
                } else {
                    str2 = str2 + String.format(getCurrentLocale(), "  (%.2f s. since last trace)", Float.valueOf(((float) j) / 1000.0f));
                }
            }
            if (i == 0) {
                Log.v("BeyondPod", str2 + "   [" + str + "]");
            } else {
                Log.e("BeyondPod", str2 + "   [" + str + "]");
            }
            _LastTraceTime = currentTimeMillis;
            if (_TraceBroadcastHandler != null) {
                Message obtain = Message.obtain(_TraceBroadcastHandler);
                obtain.obj = str2;
                obtain.sendToTarget();
            }
        } catch (Throwable th) {
            Log.e("BeyondPod", th.getMessage());
        }
    }

    public static void writeStringToFile(final String str, final String str2) {
        RepositoryPersistence.repositoryHandler().post(new Runnable() { // from class: mobi.beyondpod.rsscore.helpers.CoreHelper.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(File.createTempFile(str, ".txt", new File(Configuration.beyondPodPublicStorageRootPath())), true), 8192);
                    bufferedWriter.write(str2);
                    bufferedWriter.close();
                } catch (Exception e) {
                    Log.e(CoreHelper.TAG, "Unable to write string to file. reason: " + e.getMessage());
                }
            }
        });
    }

    public static String createFileNameFromUrl(String str, boolean z, String str2, String str3, String str4) {
        int lastIndexOf;
        String safeDecodeUrl = safeDecodeUrl(Path.getFileName(str));
        int indexOf = safeDecodeUrl.indexOf("?");
        int indexOf2 = safeDecodeUrl.indexOf("&");
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (StringUtils.equals(safeDecodeUrl, "redirect.mp3")) {
            z = true;
        }
        if (StringUtils.isNullOrEmpty(fileExtensionFromUrl)) {
            z = true;
        }
        if (indexOf2 >= 0) {
            z = true;
        }
        if (indexOf >= 0) {
            z = true;
        }
        if (z) {
            if (StringUtils.isNullOrEmpty(fileExtensionFromUrl) && !StringUtils.isNullOrEmpty(str4)) {
                fileExtensionFromUrl = MimeTypeMap.getSingleton().getExtensionFromMimeType(str4);
                if (StringUtils.isNullOrEmpty(fileExtensionFromUrl)) {
                    fileExtensionFromUrl = MediaFile.getFileExtensionForType(MediaFile.getFileTypeForMimeType(str4));
                }
            }
            if (StringUtils.isNullOrEmpty(fileExtensionFromUrl) || "mpga".equals(fileExtensionFromUrl)) {
                fileExtensionFromUrl = HlsSegmentFormat.MP3;
            }
            return String.format("%s%s.%s", makeValidPodcastName(str2), Integer.valueOf(str3.hashCode()), fileExtensionFromUrl);
        }
        String makeValidFileName = makeValidFileName(safeDecodeUrl);
        return (indexOf >= 0 && (lastIndexOf = makeValidFileName.lastIndexOf("=")) >= 0 && lastIndexOf < makeValidFileName.length() - 2) ? makeValidFileName.substring(lastIndexOf + 1) : makeValidFileName;
    }

    @SuppressLint({"NewApi"})
    public static String safeDecodeUrl(String str) {
        try {
            return URLDecoder.decode(str, StandardCharsets.UTF_8.name());
        } catch (Exception e) {
            writeTraceEntryInDebug(TAG, "Unable to URL decode url: " + str + "! reason:" + e.getMessage());
            return str;
        }
    }

    @SuppressLint({"NewApi"})
    public static String safeEncodeUrl(String str) {
        try {
            return URLEncoder.encode(str, StandardCharsets.UTF_8.name());
        } catch (Exception e) {
            writeTraceEntryInDebug(TAG, "Unable to URL encode url: " + str + "! reason:" + e.getMessage());
            return str;
        }
    }

    public static String makeValidFileName(String str) {
        return str.replace("<", "").replace(">", "").replace("\\", "").replace("/", "").replace(":", "").replace("*", "").replace("?", "").replace("\"", "").replace(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR, "");
    }

    public static String makeValidPodcastName(String str) {
        String trim = StringUtils.isNullOrEmpty(str) ? "Podcast" : str.replaceAll("[^a-zA-Z0-9 - ]", "").trim();
        if (trim.length() > 30) {
            trim = trim.substring(0, 30).trim();
        }
        return trim.length() == 0 ? "Podcast" : trim;
    }

    public static void keepDeviceAwake() {
        BeyondPodApplication.keepDeviceAwake();
    }

    public static String getFileLengthAsString(Long l) {
        if (l == null) {
            return "";
        }
        float longValue = (float) l.longValue();
        return longValue > GB ? String.format(Locale.ROOT, "%.2f GB", Float.valueOf(longValue / GB)) : longValue > MB ? String.format(Locale.ROOT, "%.0f MB", Float.valueOf(longValue / MB)) : longValue > 1024.0f ? String.format(Locale.ROOT, "%.0f KB", Float.valueOf(longValue / 1024.0f)) : String.format(Locale.ROOT, "%.0f Bytes", Float.valueOf(longValue));
    }

    public static void touchFile(File file) {
        if (file.exists()) {
            file.setLastModified(new Date().getTime());
        }
    }

    public static String loadResToString(int i) {
        try {
            InputStream openRawResource = BeyondPodApplication.getInstance().getResources().openRawResource(i);
            byte[] bArr = new byte[4096];
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = openRawResource.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.close();
                    openRawResource.close();
                    return byteArrayOutputStream.toString();
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "ResourceUtils failed to load resource to string", e);
            return null;
        }
    }

    public static boolean copyResToFile(int i, File file) {
        try {
            InputStream openRawResource = BeyondPodApplication.getInstance().getResources().openRawResource(i);
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            byte[] bArr = new byte[4096];
            while (true) {
                int read = openRawResource.read(bArr);
                if (read != -1) {
                    dataOutputStream.write(bArr, 0, read);
                } else {
                    dataOutputStream.close();
                    openRawResource.close();
                    return true;
                }
            }
        } catch (Exception unused) {
            writeTraceEntry(TAG, "failed to copy raw resource to " + file);
            return false;
        }
    }

    public static boolean copyAssetToFile(String str, File file) {
        try {
            InputStream open = BeyondPodApplication.getInstance().getResources().getAssets().open(str);
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(file));
            byte[] bArr = new byte[4096];
            while (true) {
                int read = open.read(bArr);
                if (read != -1) {
                    dataOutputStream.write(bArr, 0, read);
                } else {
                    dataOutputStream.close();
                    open.close();
                    return true;
                }
            }
        } catch (Exception e) {
            logException(TAG, "failed to copy asset resource to " + file, e);
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class DeviceNetworkConnection {
        boolean _AllowBackground;
        NetworkInfo _Info;

        public DeviceNetworkConnection(NetworkInfo networkInfo, boolean z) {
            this._AllowBackground = false;
            this._Info = networkInfo;
            this._AllowBackground = z;
        }

        public boolean isConnectedToNetwork() {
            if (Configuration.checkForNetworkConnectivity()) {
                return this._Info != null && this._Info.isConnected();
            }
            return true;
        }

        public boolean isConnectionCellular() {
            return this._Info != null && this._Info.getType() == 0;
        }

        public boolean isConnectionWiFi() {
            return this._Info != null && this._Info.getType() == 1;
        }

        public String extraInfo() {
            if (this._Info == null) {
                return "N/A";
            }
            if (this._Info.getExtraInfo() != null) {
                return this._Info.getExtraInfo() + " (" + this._Info.getTypeName() + ")";
            }
            return this._Info.getTypeName();
        }

        public String toString() {
            return this._Info != null ? this._Info.toString() : "N/A";
        }

        public boolean isBackgroundDataAllowed() {
            return this._AllowBackground;
        }
    }

    @SuppressLint({"MissingPermission"})
    public static DeviceNetworkConnection getDeviceNetworkConnection() {
        ConnectivityManager connectivityManager = (ConnectivityManager) BeyondPodApplication.getInstance().getSystemService("connectivity");
        if (connectivityManager == null) {
            writeLogEntryInProduction(TAG, "!!!!! failed to retrieve device ConnectivityManager");
        } else {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return new DeviceNetworkConnection(activeNetworkInfo, Boolean.valueOf(connectivityManager.getActiveNetworkInfo() != null).booleanValue());
            }
            writeLogEntryInProduction(TAG, "*** ConnectivityManager reported that the device has no active Network Connections");
        }
        return new DeviceNetworkConnection(null, true);
    }

    @SuppressLint({"MissingPermission"})
    public static boolean isWiFiConnected() {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) BeyondPodApplication.getInstance().getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || activeNetworkInfo.getType() != 1) ? false : true;
    }

    public static boolean isBackgroundDataAllowed() {
        return getDeviceNetworkConnection().isBackgroundDataAllowed();
    }

    public static boolean isAlreadyConnectedOrWiFiShouldBeTurnedOnDuringUpdate() {
        return getDeviceNetworkConnection().isConnectedToNetwork() || BeyondPodApplication.isWiFiEnabled() || Configuration.turnWiFiDuringUpdate();
    }

    public static void analyzeStatisticsAndNotify() {
        if (RssFeedUpdateManager.statistics().hasAnySDCardCorruptionFalures()) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(new Exception("Unable to write to SD Card!"), 0));
            return;
        }
        if (RssFeedUpdateManager.statistics().hasAnyReaderLoginFailures()) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(new Exception("Invalid or expired Feedly login! (You can modify your Feedly login in: Add feed > Import Feeds > Import from Feedly)"), 1));
            return;
        }
        if (RssFeedUpdateManager.statistics().hasAnyFailedDownloads()) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(new Exception("Download failed!"), 5));
            return;
        }
        ProcessStatistics podcastDownloadSkippedDeviceIsNotPluggedIn = UpdateAndDownloadManager.statistics().getPodcastDownloadSkippedDeviceIsNotPluggedIn();
        if (podcastDownloadSkippedDeviceIsNotPluggedIn != null) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(podcastDownloadSkippedDeviceIsNotPluggedIn.lastException, 3));
            return;
        }
        ProcessStatistics podcastDownloadSkippedWiFiNotDetected = UpdateAndDownloadManager.statistics().getPodcastDownloadSkippedWiFiNotDetected();
        if (podcastDownloadSkippedWiFiNotDetected != null) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(podcastDownloadSkippedWiFiNotDetected.lastException, 4));
        } else if (EnclosureDownloadManager.statistics().hasAnySDCardCorruptionFalures()) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(new Exception("Unable to write to SD Card!"), 0));
        } else if (EnclosureDownloadManager.statistics().hasAnyFailedDownloads()) {
            BeyondPodApplication.messageBus.publishEventAsync(new ApplicationEvents.ApplicationErrorEvent(new Exception("Download failed!"), 5));
        }
    }

    public static void dumpUpdateStatistics() {
        RepositoryPersistence.repositoryHandler().removeCallbacks(_SaveStatisticsRunnable);
        RepositoryPersistence.repositoryHandler().postDelayed(_SaveStatisticsRunnable, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dumpUpdateStatisticsInternal() {
        BufferedWriter bufferedWriter;
        Throwable th;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                try {
                    if (Configuration.enableLoggingInProduction()) {
                        backUpExistingUpdateLog();
                    }
                    bufferedWriter = new BufferedWriter(new FileWriter(Configuration.feedUpdateLogFilePath(), false), 16000);
                } catch (IOException unused) {
                    return;
                }
            } catch (Exception unused2) {
            }
        } catch (Throwable th2) {
            bufferedWriter = bufferedWriter2;
            th = th2;
        }
        try {
            bufferedWriter.write("<html><head><meta content='text/html; charset=utf-8' http-equiv='content-type'><style type='text/css'>.bpAction {color: Gray;text-decoration: none; margin-top:20px;margin-bottom:6px;margin-left:4px;margin-right:4px;-webkit-border-radius: 5px;border: 1px solid #C0C0C0; padding-top: 3px; padding-bottom: 3px; padding-left: 5px; padding-right: 5px;}</style></head><body bgcolor='AliceBlue'>");
            boolean z = RssFeedUpdateManager.statistics().isUnattended;
            Date date = RssFeedUpdateManager.statistics().downloadTime;
            if (date == null) {
                date = EnclosureDownloadManager.statistics().downloadTime;
                z = EnclosureDownloadManager.statistics().isUnattended;
            }
            Object[] objArr = new Object[3];
            objArr[0] = date != null ? new SimpleDateFormat("MMM d h:mm a", getCurrentLocale()).format(date) : "Unknown!";
            objArr[1] = date != null ? Long.toString(Math.round(new TimeSpan(new Date().getTime() - date.getTime()).getTotalMinutes())) : NotificationPreferences.NO;
            objArr[2] = z ? "Scheduled Update" : "Manual Update";
            bufferedWriter.write(String.format("<p style='color: Gray; font-size: 80%%;' align='right'>Last Updated: %s, took: %s min.<br/><i>%s</i><p>", objArr));
            if (UpdateAndDownloadManager.statistics().lastException != null) {
                bufferedWriter.write("<div style='margin-top:15px;color:Firebrick; font-weight: bold;'>" + UpdateAndDownloadManager.statistics().lastException.getMessage() + "</div>");
            }
            bufferedWriter.write("<div style='margin-top:15px;color:" + Configuration.getContentViewColor() + "; font-weight: bold;'>downloaded Feeds</div>");
            bufferedWriter.write("<hr style='color: " + Configuration.getContentViewColor() + "; height: 0px;' /><ul>");
            Iterator<DownloadStatistics> it = RssFeedUpdateManager.statistics().getSuccessfulDownloads().iterator();
            while (it.hasNext()) {
                bufferedWriter.write(String.format("<li>%s</li>", it.next().ownerFeed.getName()));
            }
            bufferedWriter.write("</ul><div style='margin-top:15px;color:" + Configuration.getContentViewColor() + "; font-weight: bold;'>downloaded Episodes</div>");
            bufferedWriter.write("<hr style='color: " + Configuration.getContentViewColor() + "; height: 0px;' /><ul>");
            for (DownloadStatistics downloadStatistics : EnclosureDownloadManager.statistics().getSuccessfulDownloads()) {
                bufferedWriter.write(String.format("<li>%s (%s in %s)</li>", downloadStatistics.ownerTrack.displayName(), getFileLengthAsString(downloadStatistics.downloadedSize), getTimeDurationAsString(downloadStatistics.downloadTime + downloadStatistics.timeToFirstByte)));
            }
            bufferedWriter.write("</ul>");
            List<DownloadStatistics> failedDownloads = RssFeedUpdateManager.statistics().getFailedDownloads();
            if (failedDownloads.size() > 0) {
                bufferedWriter.write("<div style='margin-top:15px;color:Firebrick; font-weight: bold;'>failed Feeds</div>");
                bufferedWriter.write("<hr style='color:Firebrick; height: 0px;'/><ul style='color:Firebrick;'>");
                for (DownloadStatistics downloadStatistics2 : failedDownloads) {
                    bufferedWriter.write(String.format("<li><b>%s</b><br/><i>reason to fail: %s</i></li>", downloadStatistics2.ownerFeed.getName(), downloadStatistics2.getErrorDescription()));
                }
                bufferedWriter.write("</ul>");
            }
            List<DownloadStatistics> failedDownloads2 = EnclosureDownloadManager.statistics().getFailedDownloads();
            if (failedDownloads2.size() > 0) {
                bufferedWriter.write("<div style='margin-top:15px;color:Firebrick;font-weight: bold;'>failed Episodes</div>");
                bufferedWriter.write("<hr style='color:Firebrick; height: 0px;'/><ul style='color:Firebrick;'>");
                for (DownloadStatistics downloadStatistics3 : failedDownloads2) {
                    bufferedWriter.write(String.format("<li><b>%s</b><br/><i>reason to fail: %s</i></li>", downloadStatistics3.ownerTrack.getName(), downloadStatistics3.getErrorDescription()));
                }
                bufferedWriter.write("</ul>");
            }
            bufferedWriter.write("<br/><br/>");
            bufferedWriter.write("<div id='detailsPnl' style='margin-top: 5px; margin-left: 5px; margin-bottom: 5px;'>");
            bufferedWriter.write("<h3> feed Update Details</h3>");
            bufferedWriter.write(RssFeedUpdateManager.statistics().toString());
            bufferedWriter.write("<h3> feed Processing Details</h3>");
            bufferedWriter.write(UpdateAndDownloadManager.statistics().toString());
            bufferedWriter.write("<h3>feed Download Details</h3>");
            bufferedWriter.write(EnclosureDownloadManager.statistics().toString());
            bufferedWriter.write(getFormattedDeviceConnections());
            bufferedWriter.write(getFormattedEnvironmentInfo());
            bufferedWriter.write("</body>");
            RssFeedUpdateManager.statistics().clearStatistics();
            EnclosureDownloadManager.statistics().clearStatistics();
            UpdateAndDownloadManager.statistics().clearStatistics();
        } catch (Exception unused3) {
            bufferedWriter2 = bufferedWriter;
            writeTraceEntry(TAG, "Unable to save Update statistics.");
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
            return;
        } catch (Throwable th3) {
            th = th3;
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        if (bufferedWriter != null) {
            bufferedWriter.close();
        }
    }

    private static String getFormattedDeviceConnections() {
        DeviceNetworkConnection deviceNetworkConnection = getDeviceNetworkConnection();
        Object[] objArr = new Object[2];
        objArr[0] = deviceNetworkConnection.extraInfo();
        objArr[1] = deviceNetworkConnection.isBackgroundDataAllowed() ? "Allowed" : "Not Allowed";
        return String.format("<div><h3>device Network Connections: <b>%s</b></h3>Background data %s</div>", objArr);
    }

    private static String getFormattedEnvironmentInfo() {
        return String.format("<div><h3>Environment Info</h3><pre>%s</pre></div>", dumpEnvironment());
    }

    public static String getTimeDurationAsString(long j) {
        TimeSpan timeSpan = new TimeSpan(j);
        if (timeSpan.getTotalSeconds() < 1.0d) {
            return timeSpan.getMilliseconds() + " mSec.";
        }
        if (timeSpan.getTotalMinutes() < 1.0d) {
            return timeSpan.getSeconds() + " sec.";
        }
        if (timeSpan.getTotalHours() < 1.0d) {
            return timeSpan.getMinutes() + " min. " + timeSpan.getSeconds() + " sec.";
        }
        if (timeSpan.getDays() < 1) {
            return timeSpan.getHours() + "hr. " + timeSpan.getMinutes() + " min. " + timeSpan.getSeconds() + " sec.";
        }
        return timeSpan.toString();
    }

    public static String getApproximateTimeDurationAsString(long j, boolean z) {
        TimeSpan timeSpan = new TimeSpan(j);
        if (timeSpan.getTotalMinutes() < 1.0d) {
            return z ? "1m" : "1 min";
        }
        if (timeSpan.getTotalHours() >= 1.0d) {
            return String.format(getCurrentLocale(), z ? "%d:%02d" : "%d h %d min", Integer.valueOf((int) Math.floor(timeSpan.getTotalHours())), Long.valueOf(timeSpan.getMinutes()));
        }
        StringBuilder sb = new StringBuilder();
        sb.append(timeSpan.getMinutes() + (timeSpan.getSeconds() > 30 ? 1 : 0));
        sb.append(z ? "m" : " min");
        return sb.toString();
    }

    public static String getDownloadSpeedAsString(long j, long j2) {
        float f = ((float) j2) / 1000.0f;
        return String.format(getCurrentLocale(), "%.2f KB/Sec", Float.valueOf(f != 0.0f ? (((float) j) / 1024.0f) / f : 0.0f));
    }

    public static int powerBatteryStrength() {
        return BeyondPodApplication.batteryLevel;
    }

    public static boolean isDeviceCharging() {
        return BeyondPodApplication.batteryStatus == 2 || BeyondPodApplication.batteryStatus == 5;
    }

    public static boolean isDevicePlugged() {
        return (BeyondPodApplication.batteryPlugged == 1 || BeyondPodApplication.batteryPlugged == 2) || BeyondPodApplication.batteryPlugged == 4;
    }

    public static boolean isDeviceIdle() {
        PowerManager powerManager;
        if (Build.VERSION.SDK_INT < 23 || (powerManager = (PowerManager) BeyondPodApplication.getInstance().getSystemService("power")) == null) {
            return false;
        }
        return powerManager.isDeviceIdleMode();
    }

    public static boolean isWhiteListed() {
        PowerManager powerManager;
        if (Build.VERSION.SDK_INT < 23 || (powerManager = (PowerManager) BeyondPodApplication.getInstance().getSystemService("power")) == null) {
            return true;
        }
        return powerManager.isIgnoringBatteryOptimizations(BeyondPodApplication.getInstance().getPackageName());
    }

    public static Long getBrowserCacheSizeOnDisk() {
        File cacheDir = BeyondPodApplication.getInstance().getCacheDir();
        if (cacheDir != null) {
            return Long.valueOf(cacheDir.length());
        }
        return 0L;
    }

    public static boolean isUrlValid(String str, boolean z) {
        boolean z2 = true;
        if (!z) {
            return true;
        }
        try {
            IHttpClient createClient = HttpClientFactory.createClient();
            createClient.httpGet(str);
            createClient.execute();
            int statusCode = createClient.getStatusCode();
            if (statusCode != 200 && statusCode != 301 && statusCode != 302) {
                z2 = false;
            }
            createClient.close();
            return z2;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void followRedirects(String str, FollowRedirectResult followRedirectResult) {
        if (_RedirectFollowerThread.isAlive()) {
            return;
        }
        _RedirectFollowerThread = new Thread(new RedirectFollowerRunnable(str, followRedirectResult));
        _RedirectFollowerThread.setName("RedirectFollower Thread");
        _RedirectFollowerThread.setPriority(1);
        _RedirectFollowerThread.start();
    }

    /* loaded from: classes.dex */
    private static class RedirectFollowerRunnable implements Runnable {
        private FollowRedirectResult _OnCompleteHandler;
        private String _UrlToTry;

        public RedirectFollowerRunnable(String str, FollowRedirectResult followRedirectResult) {
            this._UrlToTry = str;
            this._OnCompleteHandler = followRedirectResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                IHttpClient createClient = HttpClientFactory.createClient();
                createClient.httpGet(this._UrlToTry);
                createClient.execute();
                CoreHelper.writeTraceEntry(CoreHelper.TAG, "Resolved URL Redirect: " + this._UrlToTry + " => " + createClient.finalDownloadUrl().toString());
                if (this._OnCompleteHandler != null) {
                    this._OnCompleteHandler.onComplete(createClient.finalDownloadUrl().toString(), createClient.getStatusCode(), null);
                }
                createClient.close();
            } catch (Exception e) {
                CoreHelper.logException(CoreHelper.TAG, "failed to follow redirect: " + this._UrlToTry, e);
                if (this._OnCompleteHandler != null) {
                    this._OnCompleteHandler.onComplete(this._UrlToTry, -1, e);
                }
            }
        }
    }

    public static CharSequence htmlDecode(CharSequence charSequence) {
        return replace(charSequence, EntityArrays.encoded(), EntityArrays.decoded());
    }

    public static CharSequence cleanTitle(CharSequence charSequence) {
        return replace(charSequence, _html, _empty);
    }

    private static CharSequence replace(CharSequence charSequence, String[] strArr, CharSequence[] charSequenceArr) {
        while (true) {
            CharSequence replace = TextUtils.replace(charSequence, strArr, charSequenceArr);
            if (replace.length() == charSequence.length()) {
                return replace;
            }
            charSequence = replace;
        }
    }

    public static CharSequence cleanHtmlTags(CharSequence charSequence, int i, boolean z) {
        if (TextUtils.isEmpty(charSequence)) {
            return "";
        }
        int i2 = 0;
        boolean z2 = charSequence.length() > _HtmlPadding + i;
        if (z2) {
            charSequence = charSequence.subSequence(0, _HtmlPadding + i);
        }
        String replaceAll = _nl.matcher(htmlDecode(_htmlTags.matcher(charSequence).replaceAll(""))).replaceAll(" ");
        int length = replaceAll.length();
        while (i2 < length && replaceAll.charAt(i2) <= ' ') {
            i2++;
        }
        int min = Math.min(i + i2, length);
        while (min > i2 && replaceAll.charAt(min - 1) <= ' ') {
            min--;
        }
        CharSequence subSequence = replaceAll.subSequence(i2, min);
        if (z2 && z) {
            new StringBuilder(subSequence).append("…");
        }
        return subSequence;
    }

    public static boolean isPodcastOrFeedUrl(Uri uri) {
        String scheme;
        if (uri == null || (scheme = uri.getScheme()) == null) {
            return false;
        }
        return "pcast,itpc,rss,feed,http,https".contains(scheme.toLowerCase(Locale.ROOT));
    }

    public static String extractExceptionMessages(Throwable th) {
        String str;
        if (th == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(th.getClass().getSimpleName());
        if (StringUtils.isNullOrEmpty(th.getMessage())) {
            str = "";
        } else {
            str = " - " + th.getMessage();
        }
        sb.append(str);
        String sb2 = sb.toString();
        String extractExceptionMessages = extractExceptionMessages(th.getCause());
        if (StringUtils.isNullOrEmpty(extractExceptionMessages)) {
            return sb2;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append(StringUtils.isNullOrEmpty(sb2) ? "" : " -> ");
        sb3.append(extractExceptionMessages);
        return sb3.toString();
    }

    @SuppressLint({"MissingPermission"})
    @TargetApi(26)
    public static void vibrate(int i) {
        Vibrator vibrator = (Vibrator) BeyondPodApplication.getInstance().getSystemService("vibrator");
        if (vibrator == null || !vibrator.hasVibrator()) {
            return;
        }
        if (isOreoCompatible()) {
            vibrator.vibrate(VibrationEffect.createOneShot(i, 10));
        } else {
            vibrator.vibrate(i);
        }
    }

    public static File getFirstDownloadedUnlockKey() {
        File[] listFiles = new File(Configuration.beyondPodPublicStorageRootPath()).listFiles(new FilenameFilter() { // from class: mobi.beyondpod.rsscore.helpers.CoreHelper.6
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str) {
                String lowerCase = str.toLowerCase(Locale.ROOT);
                return lowerCase.startsWith("beyondpodunlockkey") && lowerCase.endsWith("apk");
            }
        });
        if (listFiles.length > 0) {
            return listFiles[0];
        }
        return null;
    }

    public static int apiLevel() {
        return Build.VERSION.SDK_INT;
    }

    public static String externalStorageState() {
        return (isExternalStorageLocatedOnSDCard() || Configuration.preferLastSDCardRoot()) ? Environment.getExternalStorageState() : "mounted";
    }

    public static File getUserInternalStorageDirectory() {
        return Environment.getExternalStorageDirectory();
    }

    public static File externalStorageDirectory() {
        if (Configuration.preferLastSDCardRoot() && !StringUtils.isNullOrEmpty(Configuration.lastSDCardRootPath())) {
            File file = new File(Configuration.lastSDCardRootPath());
            if (!file.exists()) {
                writeTraceEntry(TAG, "DEBUG: Previously defined user path does not exist: " + file.getAbsolutePath());
                File optionalStorageFullDataPath = getOptionalStorageFullDataPath();
                if (optionalStorageFullDataPath != null) {
                    writeTraceEntry(TAG, "DEBUG: Found external storage path at: " + optionalStorageFullDataPath.getAbsolutePath());
                    writeTraceEntry(TAG, "DEBUG: Preferring external storage.");
                    return optionalStorageFullDataPath;
                }
                writeTraceEntry(TAG, "DEBUG: Did not detect external storage. Falling through to autodetect.");
                return autodetectExternalStorageDirectoryInternal();
            }
            writeTraceEntry(TAG, "DEBUG: Preferring user-defined storage path: " + file.getAbsolutePath());
            return file;
        }
        writeTraceEntry(TAG, "DEBUG: No last storage preference. Falling through to autodetect.");
        return autodetectExternalStorageDirectoryInternal();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(6:30|31|4|5|6|(1:8)(1:(1:11)(5:12|13|(1:15)|16|(1:24)(1:23))))|3|4|5|6|(0)(0)) */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.io.File autodetectExternalStorageDirectoryInternal() {
        /*
            java.io.File r0 = getPrimaryStorageMount()
            java.io.File r1 = getOptionalStorageMount()
            r2 = 0
            if (r1 == 0) goto L18
            java.lang.String r3 = r1.getPath()     // Catch: java.lang.Exception -> L18
            java.io.File r3 = mobi.beyondpod.rsscore.Configuration.constructBeyondPodRootIn(r3)     // Catch: java.lang.Exception -> L18
            boolean r3 = r3.exists()     // Catch: java.lang.Exception -> L18
            goto L19
        L18:
            r3 = r2
        L19:
            java.lang.String r4 = r0.getPath()     // Catch: java.lang.Exception -> L26
            java.io.File r4 = mobi.beyondpod.rsscore.Configuration.constructBeyondPodRootIn(r4)     // Catch: java.lang.Exception -> L26
            boolean r4 = r4.exists()     // Catch: java.lang.Exception -> L26
            r2 = r4
        L26:
            if (r2 == 0) goto L29
            return r0
        L29:
            if (r3 == 0) goto L2c
            return r1
        L2c:
            java.io.File r2 = getPreMPrimaryStorageMount()     // Catch: java.lang.Exception -> L3f
            java.lang.String r3 = r2.getPath()     // Catch: java.lang.Exception -> L3f
            java.io.File r3 = mobi.beyondpod.rsscore.Configuration.constructBeyondPodRootIn(r3)     // Catch: java.lang.Exception -> L3f
            boolean r3 = r3.exists()     // Catch: java.lang.Exception -> L3f
            if (r3 == 0) goto L3f
            return r2
        L3f:
            java.lang.String r2 = android.os.Environment.getExternalStorageState()
            java.lang.String r3 = "mounted"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L60
            java.lang.String r3 = "shared"
            boolean r3 = r3.equals(r2)
            if (r3 != 0) goto L60
            java.lang.String r3 = "unmounted"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L5c
            goto L60
        L5c:
            if (r1 == 0) goto L5f
            return r1
        L5f:
            return r0
        L60:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: mobi.beyondpod.rsscore.helpers.CoreHelper.autodetectExternalStorageDirectoryInternal():java.io.File");
    }

    public static File getPreMPrimaryStorageMount() {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        return externalStorageDirectory == null ? new File(System.getenv("SECONDARY_STORAGE")) : externalStorageDirectory;
    }

    public static File getPrimaryStorageMount() {
        if (!PermissionUtil.versionSupportsPermissions()) {
            return getPreMPrimaryStorageMount();
        }
        File externalFilesDir = BeyondPodApplication.getInstance().getExternalFilesDir(null);
        return externalFilesDir != null ? externalFilesDir : getPreMPrimaryStorageMount();
    }

    public static File getOptionalStorageMount() {
        String customSDCardLocation = Configuration.customSDCardLocation();
        if (!StringUtils.isNullOrEmpty(customSDCardLocation)) {
            File file = new File(customSDCardLocation);
            if (file.exists()) {
                return file;
            }
        }
        return findExternalSDCard();
    }

    @Nullable
    private static File getOptionalStorageRoot(File file) {
        if (file == null) {
            return null;
        }
        if (apiLevel() >= 23) {
            String[] split = file.getAbsolutePath().split(File.separator);
            if (split.length > 2) {
                return new File(File.separator + Path.combine(split[1], split[2]));
            }
        }
        return file;
    }

    @Nullable
    public static File findExternalSDCard() {
        for (String str : optionalStorageMounts) {
            File file = new File(str);
            if (file.exists()) {
                return file;
            }
        }
        return getOptionalStorageRoot(Configuration.findAndroidReportedExternalStorage());
    }

    @Nullable
    public static File getOptionalStorageFullDataPath() {
        File findExternalSDCard = findExternalSDCard();
        if (findExternalSDCard == null) {
            return null;
        }
        return new File(Path.combine(Path.combine(Path.combine(Path.combine(findExternalSDCard.getAbsolutePath(), "Android"), "data"), "mobi.beyondpod"), "files"));
    }

    public static boolean isExternalStorageLocatedOnSDCard() {
        return externalStorageDirectory().getPath().equals(Environment.getExternalStorageDirectory().getPath());
    }

    public static boolean isFolderReallyWritable(String str) {
        if (StringUtils.isNullOrEmpty(str)) {
            return false;
        }
        return isFolderReallyWritable(new File(str));
    }

    public static boolean isFolderReallyWritable(File file) {
        if (file == null) {
            return false;
        }
        try {
            File createTempFile = File.createTempFile("probe", "tmp", file);
            if (createTempFile.exists()) {
                return createTempFile.delete();
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    public static File findSDRoot(File file) {
        if (file == null) {
            return null;
        }
        String absolutePath = file.getAbsolutePath();
        int indexOf = absolutePath.indexOf("/Android/data");
        return indexOf > 0 ? new File(absolutePath.substring(0, indexOf)) : file;
    }

    @SuppressLint({"NewApi", "MissingPermission"})
    public static String dumpEnvironment() {
        NetworkInfo[] allNetworkInfo;
        try {
            File primaryStorageMount = getPrimaryStorageMount();
            File optionalStorageMount = getOptionalStorageMount();
            File findAndroidReportedExternalStorage = Configuration.findAndroidReportedExternalStorage();
            StringBuilder sb = new StringBuilder();
            sb.append("BeyondPod Version: ");
            sb.append(Configuration.productVersion());
            sb.append(LicenseManager.getShortLicenseKind());
            sb.append("\n\n");
            sb.append("DEVICE: ");
            sb.append(Build.MANUFACTURER);
            sb.append(" ");
            sb.append(Build.MODEL);
            sb.append(" (");
            sb.append(Build.PRODUCT);
            sb.append(") with Android ");
            sb.append(Build.VERSION.RELEASE);
            sb.append("\n\n");
            sb.append("DEVICE STORAGE\n\n");
            sb.append("• Primary Storage: ");
            sb.append(primaryStorageMount.getPath());
            sb.append(primaryStorageMount.canWrite() ? "" : " (read Only)");
            sb.append("\n");
            if (optionalStorageMount != null) {
                sb.append("• Optional Storage: ");
                sb.append(optionalStorageMount.getPath());
                sb.append(optionalStorageMount.canWrite() ? "" : " (read Only)");
                sb.append("\n");
            }
            if (findAndroidReportedExternalStorage != null) {
                sb.append("• Application root on external SD: ");
                sb.append(findAndroidReportedExternalStorage.getPath());
                sb.append(isFolderReallyWritable(findAndroidReportedExternalStorage) ? "" : " (read Only)");
                sb.append("\n");
            }
            sb.append("• Cached SD Card Root: ");
            sb.append(Configuration.lastSDCardRootPath());
            sb.append(" (");
            sb.append(Configuration.preferLastSDCardRoot() ? "use cached root, " : "autodetect root, ");
            sb.append(Configuration.keepMetadataForMissingEpisodes() ? "keep" : "delete");
            sb.append(" missing episodes)\n");
            sb.append("• External SD State: ");
            sb.append(Environment.getExternalStorageState());
            sb.append("\n");
            File constructBeyondPodRootIn = Configuration.constructBeyondPodRootIn(primaryStorageMount.getPath());
            sb.append("• BP location on SD: ");
            sb.append(constructBeyondPodRootIn);
            sb.append(", exists: ");
            sb.append(constructBeyondPodRootIn.exists());
            sb.append("\n");
            if (optionalStorageMount != null) {
                File constructBeyondPodRootIn2 = Configuration.constructBeyondPodRootIn(optionalStorageMount.getPath());
                sb.append("• BP location on Optional: ");
                sb.append(constructBeyondPodRootIn2);
                sb.append(", exists: ");
                sb.append(constructBeyondPodRootIn2.exists());
                sb.append("\n");
            }
            sb.append("• BP will use: ");
            sb.append(Configuration.beyondPodPublicStorageRootPath());
            sb.append("\n");
            Long valueOf = Long.valueOf(new FlashStorageLocation(Configuration.beyondPodPublicStorageRootPath()).freeSpace());
            sb.append("• Free space: ");
            sb.append(getFileLengthAsString(valueOf));
            sb.append("\n\n");
            if (PermissionUtil.versionSupportsPermissions()) {
                boolean hasExternalStoragePermission = PermissionUtil.hasExternalStoragePermission();
                sb.append("• Has SD Card read/write Permission: ");
                sb.append(hasExternalStoragePermission);
                sb.append("\n");
                if (!hasExternalStoragePermission) {
                    sb.append("• Download folder requires permission: ");
                    sb.append(PermissionUtil.needsStoragePermissionForPath(Configuration.beyondPodPublicStorageRootPath()));
                    sb.append("\n");
                }
            }
            sb.append("\nBATTERY INFO\n\n");
            sb.append("• status: ");
            sb.append(BeyondPodApplication.batteryStatus);
            sb.append("\n");
            sb.append("• Level: ");
            sb.append(BeyondPodApplication.batteryLevel);
            sb.append("\n");
            sb.append("• Plugged In: ");
            sb.append(BeyondPodApplication.batteryPlugged);
            sb.append("\n");
            sb.append("• Is Charging? ");
            sb.append(isDeviceCharging());
            sb.append("\n");
            sb.append("• Is Plugged In? ");
            sb.append(isDevicePlugged());
            sb.append("\n");
            if (Build.VERSION.SDK_INT >= 23) {
                sb.append("• Is Dozing? ");
                sb.append(isDeviceIdle());
                sb.append("\n");
                sb.append("• Is Whitelisted? ");
                sb.append(isWhiteListed());
                sb.append("\n");
            }
            sb.append("\n\nFEEDLY INFO\n\n");
            sb.append("• Logged In: ");
            sb.append(!StringUtils.isNullOrEmpty(Configuration.OAuthAccessToken()) ? "Yes" : "No");
            sb.append("\n");
            Date OAuthAccessTokenExpiration = Configuration.OAuthAccessTokenExpiration();
            if (OAuthAccessTokenExpiration.getTime() > 100) {
                sb.append("• Log In Expires: ");
                sb.append(DateTime.formatTime(OAuthAccessTokenExpiration));
                sb.append(" ");
                sb.append(DateTime.formatDate(OAuthAccessTokenExpiration));
                sb.append("\n");
            }
            sb.append("• Has User: ");
            sb.append(!StringUtils.isNullOrEmpty(Configuration.OAuthUser()) ? "Yes" : "No");
            sb.append("\n");
            sb.append("• Can Re-Log in: ");
            sb.append(!StringUtils.isNullOrEmpty(Configuration.OAuthRefreshToken()) ? "Yes" : "No");
            sb.append("\n");
            sb.append("\n\nAPPLICATION INFO\n\n");
            sb.append("• Playback Speed Enabled: ");
            sb.append(Configuration.enableAudioPlugins() ? "Yes" : "No");
            sb.append("\n");
            sb.append("• CDS Enabled: ");
            sb.append(Configuration.CDSEnabled() ? "Yes" : "No");
            sb.append("\n");
            ConnectivityManager connectivityManager = (ConnectivityManager) BeyondPodApplication.getInstance().getSystemService("connectivity");
            if (connectivityManager == null) {
                sb.append("•  failed to retrieve device ConnectivityManager!");
            } else {
                if (apiLevel() >= 23) {
                    ArrayList arrayList = new ArrayList();
                    for (Network network : connectivityManager.getAllNetworks()) {
                        arrayList.add(connectivityManager.getNetworkInfo(network));
                    }
                    allNetworkInfo = (NetworkInfo[]) arrayList.toArray(new NetworkInfo[arrayList.size()]);
                } else {
                    allNetworkInfo = connectivityManager.getAllNetworkInfo();
                }
                sb.append("\nNETWORK CONNECTIONS (");
                sb.append(allNetworkInfo.length);
                sb.append(")\n\n");
                if (allNetworkInfo.length == 0) {
                    sb.append("•  There are no network connections!");
                } else {
                    for (NetworkInfo networkInfo : allNetworkInfo) {
                        sb.append("•  type: ");
                        sb.append(networkInfo.getTypeName());
                        sb.append(" (");
                        sb.append(networkInfo.getSubtypeName());
                        sb.append(")");
                        sb.append(", Available: ");
                        sb.append(networkInfo.isAvailable());
                        sb.append(", Connected: ");
                        sb.append(networkInfo.isConnected());
                        sb.append(", State: ");
                        sb.append(networkInfo.getState().name());
                        sb.append(", Roaming: ");
                        sb.append(networkInfo.isRoaming());
                        sb.append("\n");
                    }
                }
            }
            return sb.toString();
        } catch (Exception e) {
            return "failed to determine SD card location! reason: " + e.getMessage();
        }
    }

    public static void nap(int i) {
        try {
            Thread.sleep(i * 1000);
        } catch (InterruptedException unused) {
        }
    }

    public static List<String> getExternalPlayersFor(String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(str)), str2);
        ArrayList arrayList = new ArrayList();
        List<ResolveInfo> queryIntentActivities = BeyondPodApplication.getInstance().getPackageManager().queryIntentActivities(intent, 65536);
        if (queryIntentActivities.size() > 1) {
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                if (resolveInfo.activityInfo != null && resolveInfo.activityInfo.packageName != null) {
                    arrayList.add(resolveInfo.activityInfo.packageName);
                }
            }
        }
        return arrayList;
    }

    public static boolean isPartnerPlayerInstalled(String str, String str2) {
        return Configuration.getInternalPlayerSupportedFileExtensions().contains("partner_player");
    }

    public static boolean sync(FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return true;
        }
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    private static void backUpExistingUpdateLog() {
        ArrayList<File> updateLogs = getUpdateLogs();
        if (updateLogs.size() == 0) {
            return;
        }
        for (int min = Math.min(updateLogs.size(), 9); min < updateLogs.size(); min++) {
            if (updateLogs.get(min).delete()) {
                writeTraceEntry(TAG, "Deleted old update log backup: " + updateLogs.get(min).getName());
            }
        }
        String feedUpdateLogFilePath = Configuration.feedUpdateLogFilePath();
        Iterator<File> it = updateLogs.iterator();
        while (it.hasNext()) {
            File next = it.next();
            if (feedUpdateLogFilePath.equals(next.getAbsolutePath())) {
                File file = new File(next.getAbsolutePath().replace(".htm", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + System.currentTimeMillis() + ".htm"));
                next.renameTo(file);
                writeTraceEntry(TAG, "The existing update log was backed up as: " + file.getName());
                return;
            }
        }
    }

    public static ArrayList<File> getUpdateLogs() {
        final File file = new File(Configuration.feedUpdateLogFilePath());
        if (!file.exists()) {
            return new ArrayList<>();
        }
        ArrayList<File> arrayList = new ArrayList<>(Arrays.asList(new File(Configuration.beyondPodPublicStorageRootPath()).listFiles(new FileFilter() { // from class: mobi.beyondpod.rsscore.helpers.CoreHelper.7
            @Override // java.io.FileFilter
            public boolean accept(File file2) {
                return file2.getName().contains(file.getName().substring(0, file.getName().lastIndexOf(46)));
            }
        })));
        Collections.sort(arrayList, new Comparator<File>() { // from class: mobi.beyondpod.rsscore.helpers.CoreHelper.8
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return Long.valueOf(file3.lastModified()).compareTo(Long.valueOf(file2.lastModified()));
            }
        });
        return arrayList;
    }

    public static String loadResourceString(int i) {
        return BeyondPodApplication.getInstance().getResources().getString(i);
    }

    public static void forceBackgroundTile(View view) {
        Drawable background;
        if (view == null || (background = view.getBackground()) == null || !(background instanceof BitmapDrawable)) {
            return;
        }
        ((BitmapDrawable) background).setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
    }

    public static boolean isDebugBuild() {
        ApplicationInfo applicationInfo = BeyondPodApplication.getInstance().getApplicationInfo();
        int i = applicationInfo.flags & 2;
        applicationInfo.flags = i;
        return i != 0;
    }

    public static boolean isCGBuild() {
        if (_CGBuild != null) {
            return _CGBuild.booleanValue();
        }
        try {
            _CGBuild = Boolean.valueOf(Configuration.getInternalPlayerSupportedFileExtensions().contains("cyanogenmod"));
        } catch (Exception unused) {
            _CGBuild = false;
        }
        return _CGBuild.booleanValue();
    }

    public static boolean isPartnerSony() {
        return StringUtils.equalsIgnoreCase("Sony Tablet S", Build.MODEL) || StringUtils.equalsIgnoreCase("Sony Tablet P", Build.MODEL);
    }

    public static <T> int findIndexInNumArray(Context context, int i, T t) {
        String valueOf = String.valueOf(t);
        String[] stringArray = context.getResources().getStringArray(i);
        for (int i2 = 0; i2 != stringArray.length; i2++) {
            if (stringArray[i2].equals(valueOf)) {
                return i2;
            }
        }
        return -1;
    }

    public static int findIndexValueInNumArray(Context context, int i, int i2) {
        try {
            return Integer.parseInt(context.getResources().getStringArray(i)[i2]);
        } catch (Exception unused) {
            return Integer.MIN_VALUE;
        }
    }

    public static long generateRandomNumber(long j, long j2, Random random) {
        if (random == null) {
            random = new Random(SystemClock.elapsedRealtime());
        }
        if (j > j2) {
            throw new IllegalArgumentException("Start cannot exceed End.");
        }
        return ((long) (((j2 - j) + 1) * random.nextDouble())) + j;
    }

    public static boolean isRunningOnARC() {
        return StringUtils.equalsIgnoreCase("chromium", Build.MANUFACTURER);
    }

    public static Locale getCurrentLocale() {
        return BeyondPodApplication.getInstance().getLocale();
    }

    public static int getTargetSDKVersion() {
        return BeyondPodApplication.getInstance().getApplicationContext().getApplicationInfo().targetSdkVersion;
    }

    public static boolean isOreoCompatible() {
        return apiLevel() >= 26 && getTargetSDKVersion() >= 26;
    }
}
