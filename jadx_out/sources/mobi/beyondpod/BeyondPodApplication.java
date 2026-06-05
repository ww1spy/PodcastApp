package mobi.beyondpod;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.provider.Settings;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import com.crashlytics.android.Crashlytics;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import com.google.android.gms.common.GoogleApiAvailability;
import io.fabric.sdk.android.Fabric;
import java.lang.Thread;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Locale;
import mobi.beyondpod.rsscore.Configuration;
import mobi.beyondpod.rsscore.StartupContentBuilder;
import mobi.beyondpod.rsscore.Track;
import mobi.beyondpod.rsscore.events.ApplicationEvents;
import mobi.beyondpod.rsscore.helpers.CoreHelper;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;
import mobi.beyondpod.rsscore.helpers.SimpleMessageBus;
import mobi.beyondpod.rsscore.helpers.StringUtils;
import mobi.beyondpod.rsscore.repository.FeedRepository;
import mobi.beyondpod.services.download.DownloadHolderService;
import mobi.beyondpod.services.player.MediaButtonIntentReceiver;
import mobi.beyondpod.services.player.MediaPlaybackService;
import mobi.beyondpod.services.player.PlayList;
import mobi.beyondpod.services.player.PlayListEvents;
import mobi.beyondpod.services.player.TrackMetadataPublisher;
import mobi.beyondpod.services.player.impl.ChromecastDevice;
import mobi.beyondpod.ui.core.MovieViewCounter;

/* loaded from: classes.dex */
public abstract class BeyondPodApplication extends Application implements Thread.UncaughtExceptionHandler {
    protected static final int CHANGE_SYNC_STATUS_NOTIFICATION_ID = 179;
    protected static final int READER_SYNC_STATUS_NOTIFICATION_ID = 171;
    private static final int RELEASE_WAKELOCKS = 1;
    private static final String TAG = "BeyondPodApplication";
    private static PowerManager.WakeLock _BPScreenDimWakeLock;
    private static PowerManager.WakeLock _BPWakeLock;
    private static WifiManager.WifiLock _BPWifiLock;
    private static ChromecastDevice _ChromecastDevice;
    private static Handler _Handler;
    private static BeyondPodApplication _Instance;
    private static PlayList _PlayList;
    private static WifiManager _WiFiMgr;
    private static Boolean _isShuttingDown = false;
    private static Handler _wakeHandler;
    public static int batteryLevel;
    public static int batteryPlugged;
    public static int batteryStatus;
    public static String lastApplicationException;
    public static SimpleMessageBus messageBus;
    private Tracker _AnalyticsTracker;
    private ComponentName _DownloadService;
    private IntentFilter _NetworkStateChangedFilter;
    private BroadcastReceiver _NetworkStateIntentReceiver;
    private BroadcastReceiver _BatteryStateReceiver = null;
    private BroadcastReceiver _StorageCardUnmountReceiver = null;
    private boolean _MainUIWindowVisible = false;
    private boolean _IsShutdown = false;
    private final Object _syncLock = new Object();
    private PlayListEvents.PlayListEventListener _PlayListListener = new PlayListEvents.PlayListEventListener() { // from class: mobi.beyondpod.BeyondPodApplication.7
        @Override // mobi.beyondpod.services.player.PlayListEvents.PlayListEventListener
        public void onPlayListEvent(PlayListEvents.PlayListEvent playListEvent) {
            BeyondPodApplication.this.updateMediaSessionPlaylist(playListEvent);
            BeyondPodApplication.this.updateMediaButtonListener(playListEvent);
        }
    };

    public abstract String appKind();

    public abstract void clearChangeSyncNotification();

    public abstract void clearReaderSyncNotification();

    public abstract void configureDefaults();

    public abstract void configureDefaultsForVersionUpgrade(int i, int i2);

    public abstract void executeCommandPlaySmartPlayList(int i, Context context);

    public abstract Notification getDefaultNotificationForService(Service service, String str);

    public abstract StartupContentBuilder.Content[] getDemoContent();

    public abstract String getExternalLicenseKey();

    public abstract void initializeWidgets();

    public boolean isLockScreenWidgetInstalled() {
        return false;
    }

    public abstract Activity masterActivity();

    public abstract Class<?> masterViewClass();

    public abstract boolean playFromQuery(String str);

    public abstract void refreshWidgets();

    public abstract boolean sendCommandToVideoPlayer(Intent intent);

    public abstract void setChangeSyncNotification(String str, String str2);

    public abstract void setMasterActivity(Activity activity);

    public abstract void setNotification(Service service, Intent intent);

    public abstract void setPlayerNotification(Service service, Track track);

    public abstract void setPlayerPauseNotification(Context context, Track track);

    public abstract void setReaderSyncNotification(String str, String str2);

    public abstract void startVideoPlayback(Track track);

    public BeyondPodApplication() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static synchronized Boolean isRuntimeShuttingDown() {
        Boolean bool;
        synchronized (BeyondPodApplication.class) {
            bool = _isShuttingDown;
        }
        return bool;
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        _wakeHandler = new Handler(Looper.getMainLooper());
        CoreHelper.writeTraceEntry(TAG, "**************************************************************");
        CoreHelper.writeTraceEntry(TAG, "************ BeyondPod Process is starting *******************");
        Runtime.getRuntime().addShutdownHook(new Thread() { // from class: mobi.beyondpod.BeyondPodApplication.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (BeyondPodApplication.this._syncLock) {
                    Boolean unused = BeyondPodApplication._isShuttingDown = true;
                }
                CoreHelper.writeTraceEntry(BeyondPodApplication.TAG, "*** Detected runtime shutdown.");
            }
        });
        if (_Instance != null) {
            throw new IllegalStateException("Not a singleton");
        }
        _Instance = this;
        _WiFiMgr = (WifiManager) getSystemService("wifi");
        if (_WiFiMgr != null) {
            _BPWifiLock = _WiFiMgr.createWifiLock(3, getClass().getName());
            _BPWifiLock.setReferenceCounted(false);
        }
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (powerManager != null) {
            _BPWakeLock = powerManager.newWakeLock(1, getClass().getName() + " - Screen OFF");
            _BPWakeLock.setReferenceCounted(false);
        }
        _Handler = new Handler() { // from class: mobi.beyondpod.BeyondPodApplication.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                BeyondPodApplication.releaseWakeLocks();
            }
        };
        _BPWakeLock.acquire(2000L);
        startMonitoringNetworkConnectivity();
        MediaButtonIntentReceiver.touch();
        initialize();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"HandlerLeak", "MissingPermission"})
    public void initialize() {
        try {
            lastApplicationException = null;
            messageBus = new SimpleMessageBus(_Handler);
            registerEnvironmentListeners();
            _PlayList = new PlayList();
            initializeWidgets();
            messageBus.subscribe(this._PlayListListener, PlayListEvents.PlayListEvent.class);
            if (!Configuration.initialize(getApplicationContext())) {
                CoreHelper.writeTraceEntry(TAG, "Unable to find Storage card! Waiting for a storage card to be mounted...");
            }
            _ChromecastDevice = new ChromecastDevice(getApplicationContext());
            GoogleAnalytics.getInstance(this).setAppOptOut(!Configuration.gatherAnalyticsData());
            if (Configuration.gatherAnalyticsData()) {
                try {
                    Fabric.with(this, new Crashlytics());
                } catch (Throwable th) {
                    CoreHelper.logException(TAG, "failed to initialize Crashlytics", th);
                }
            }
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("Analytics and crash reporting is ");
            sb.append(Configuration.gatherAnalyticsData() ? "Enabled" : "Disabled");
            CoreHelper.writeTraceEntry(str, sb.toString());
        } catch (Exception e) {
            Log.e(TAG, "failed to initialize BeyondPod application", e);
            lastApplicationException = "Error loading application data!\n\n" + CoreHelper.extractExceptionMessages(e);
        }
    }

    public static boolean isInitialized() {
        return StringUtils.isNullOrEmpty(lastApplicationException) && StringUtils.isNullOrEmpty(Configuration.ConfigurationInitErrorMsg) && CoreHelper.externalStorageState().equals("mounted");
    }

    public void bringApplicationToForeground() {
        if (isMainUIWindowVisible()) {
            return;
        }
        Intent intent = new Intent(getApplicationContext(), masterViewClass());
        intent.addFlags(270532608);
        intent.setAction("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        startActivity(intent);
    }

    public boolean isShutdown() {
        return this._IsShutdown;
    }

    public void shutdown() {
        this._IsShutdown = true;
        _Handler.postDelayed(new Runnable() { // from class: mobi.beyondpod.BeyondPodApplication.3
            @Override // java.lang.Runnable
            public void run() {
                if (BeyondPodApplication.this.masterActivity() != null) {
                    BeyondPodApplication.this.masterActivity().finish();
                }
                BeyondPodApplication.this.onTerminate();
                System.exit(0);
            }
        }, 1000L);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        CoreHelper.writeTraceEntry(TAG, ">>>>>>>>>> Low Memory Detected! <<<<<<<<<<<<");
    }

    @Override // android.app.Application
    public void onTerminate() {
        if (this._StorageCardUnmountReceiver != null) {
            unregisterReceiver(this._StorageCardUnmountReceiver);
            this._StorageCardUnmountReceiver = null;
        }
        if (this._BatteryStateReceiver != null) {
            unregisterReceiver(this._BatteryStateReceiver);
            this._BatteryStateReceiver = null;
        }
        MediaButtonIntentReceiver.stopListeningForMediaButton();
        CoreHelper.writeTraceEntry(TAG, "BeyondPodApplication is Terminating... Releasing the wake locks");
        releaseWakeLocks();
        FeedRepository.saveRepositorySync();
        messageBus.unsubscribe(this._PlayListListener, PlayListEvents.PlayListEvent.class);
        _Instance = null;
        if (_Handler != null) {
            _Handler.removeCallbacksAndMessages(null);
        }
        NotificationHelper.getInstance().clearNotification(this, 1);
        super.onTerminate();
    }

    public static BeyondPodApplication getInstance() {
        if (_Instance == null) {
            throw new IllegalStateException("Not yet loaded");
        }
        return _Instance;
    }

    public PlayList playList() {
        return _PlayList;
    }

    public ChromecastDevice chromecastDevice() {
        return _ChromecastDevice;
    }

    public void registerEnvironmentListeners() {
        if (this._StorageCardUnmountReceiver == null) {
            this._StorageCardUnmountReceiver = new BroadcastReceiver() { // from class: mobi.beyondpod.BeyondPodApplication.4
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    String action = intent.getAction();
                    if ((action != null && action.equals("android.intent.action.MEDIA_EJECT")) || action.equals("android.intent.action.MEDIA_UNMOUNTED")) {
                        CoreHelper.writeTraceEntry(BeyondPodApplication.TAG, "Storage card " + intent.getData().getPath() + " unmounted!");
                        if (PlayList.isCurrentlyPlaying()) {
                            Intent intent2 = new Intent(context, (Class<?>) MediaPlaybackService.class);
                            intent2.setAction(MediaPlaybackService.SERVICECMD);
                            intent2.putExtra(MediaPlaybackService.CMDNAME, MediaPlaybackService.CMDSTOP);
                            if (CoreHelper.isOreoCompatible()) {
                                ContextCompat.startForegroundService(context, intent2);
                            } else {
                                context.startService(intent2);
                            }
                        }
                        if (BeyondPodApplication.this.masterActivity() != null) {
                            CoreHelper.writeTraceEntry(BeyondPodApplication.TAG, "Closing Master View!");
                            BeyondPodApplication.this.masterActivity().finish();
                        }
                        CoreHelper.writeTraceEntry(BeyondPodApplication.TAG, "Saving and unloading the repository...");
                        FeedRepository.saveAndUnloadRepositoryAsync();
                        return;
                    }
                    if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
                        CoreHelper.writeTraceEntry(BeyondPodApplication.TAG, "Storage card " + intent.getData().getPath() + " mounted!");
                        if (FeedRepository.repositoryLoadState() != -1 && !FeedRepository.isEmpty()) {
                            CoreHelper.writeTraceEntry(BeyondPodApplication.TAG, "Detected a fake mount, Repository is already initialized! State:" + FeedRepository.repositoryLoadState());
                            return;
                        }
                        if (StringUtils.isNullOrEmpty(Configuration.lastSDCardRootPath()) || StringUtils.equals(intent.getData().getPath(), Configuration.lastSDCardRootPath())) {
                            CoreHelper.writeTraceEntry(BeyondPodApplication.TAG, "Storage root card mounted!, Initializing configuration...");
                            BeyondPodApplication.this.initialize();
                            return;
                        }
                        CoreHelper.writeTraceEntry(BeyondPodApplication.TAG, "Mounted card is not our storage root (" + Configuration.lastSDCardRootPath() + "), Ignoring...");
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.MEDIA_EJECT");
            intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
            intentFilter.addDataScheme("file");
            registerReceiver(this._StorageCardUnmountReceiver, intentFilter);
        }
        if (this._BatteryStateReceiver == null) {
            this._BatteryStateReceiver = new BroadcastReceiver() { // from class: mobi.beyondpod.BeyondPodApplication.5
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    String action = intent.getAction();
                    if (action == null || !action.equals("android.intent.action.BATTERY_CHANGED")) {
                        return;
                    }
                    BeyondPodApplication.batteryLevel = intent.getIntExtra("level", -1);
                    BeyondPodApplication.batteryStatus = intent.getIntExtra("status", -1);
                    BeyondPodApplication.batteryPlugged = intent.getIntExtra("plugged", -1);
                }
            };
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction("android.intent.action.BATTERY_CHANGED");
            intentFilter2.addAction("android.intent.action.BATTERY_LOW");
            registerReceiver(this._BatteryStateReceiver, intentFilter2);
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        Log.getStackTraceString(th);
        CoreHelper.logUnhandledException(TAG, "!!! Unhandled exception !!!", th);
        releaseWakeLocks();
    }

    public static void releaseWakeLocks() {
        if (_BPWakeLock != null && _BPWakeLock.isHeld()) {
            _BPWakeLock.release();
        }
        if (_BPScreenDimWakeLock != null && _BPScreenDimWakeLock.isHeld()) {
            _BPScreenDimWakeLock.release();
        }
        if (_wakeHandler != null) {
            _wakeHandler.post(new Runnable() { // from class: mobi.beyondpod.BeyondPodApplication.6
                @Override // java.lang.Runnable
                public void run() {
                    if (BeyondPodApplication._Instance == null || BeyondPodApplication._Instance.masterActivity() == null) {
                        return;
                    }
                    synchronized (BeyondPodApplication._Instance.masterActivity()) {
                        BeyondPodApplication._Instance.masterActivity().getWindow().clearFlags(128);
                    }
                }
            });
        }
        if (_BPWifiLock == null || !_BPWifiLock.isHeld()) {
            return;
        }
        _BPWifiLock.release();
    }

    public static String dumpWakeLocks() {
        String str = (_BPWakeLock == null || !_BPWakeLock.isHeld()) ? "" : "*";
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append((_BPScreenDimWakeLock == null || !_BPScreenDimWakeLock.isHeld()) ? "" : "$");
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(sb2);
        sb3.append((_BPWifiLock == null || !_BPWifiLock.isHeld()) ? "" : "#");
        return sb3.toString();
    }

    public static void keepDeviceAwake() {
        PowerManager.WakeLock wakeLock = Configuration.defaultDeviceWakeLock() == 1 ? _BPWakeLock : _BPScreenDimWakeLock;
        if (wakeLock != null) {
            if (!wakeLock.isHeld()) {
                wakeLock.acquire();
            }
            if (isWiFiEnabled() && _BPWifiLock != null && !_BPWifiLock.isHeld()) {
                _BPWifiLock.acquire();
            }
            Message obtainMessage = _Handler.obtainMessage(1);
            _Handler.removeMessages(1);
            _Handler.sendMessageDelayed(obtainMessage, 45000L);
        }
    }

    @SuppressLint({"MissingPermission"})
    public static boolean toggleWiFi(boolean z, String str) {
        if (_WiFiMgr == null) {
            return false;
        }
        if (z && isWiFiEnabled()) {
            CoreHelper.writeTraceEntry(TAG, "WiFi adapter is already on. (called by: " + str + ")");
            return false;
        }
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("Switching WiFi adapter:");
        sb.append(z ? "ON" : "OFF");
        sb.append(" (called by: ");
        sb.append(str);
        sb.append(")");
        CoreHelper.writeTraceEntry(str2, sb.toString());
        return _WiFiMgr.setWifiEnabled(z);
    }

    @SuppressLint({"MissingPermission"})
    public static boolean isWiFiEnabled() {
        if (_WiFiMgr == null) {
            return false;
        }
        int wifiState = _WiFiMgr.getWifiState();
        return wifiState == 3 || wifiState == 2;
    }

    public static void pokeWiFi() {
        if (!isWiFiEnabled() || _BPScreenDimWakeLock == null || _BPScreenDimWakeLock.isHeld()) {
            return;
        }
        _BPScreenDimWakeLock.acquire();
        CoreHelper.writeLogEntryInProduction(TAG, "######## Poking WiFi by turning on the screen to a dim level!");
    }

    public static void pokeWiFiIfNeeded(Throwable th) {
        if (Configuration.screenPowerStateDuringWiFiUpdates() == 2) {
            return;
        }
        if ((th instanceof SocketTimeoutException) || (th instanceof UnknownHostException) || (th instanceof SocketException)) {
            CoreHelper.DeviceNetworkConnection deviceNetworkConnection = CoreHelper.getDeviceNetworkConnection();
            if (isWiFiEnabled() || (deviceNetworkConnection.isConnectedToNetwork() && deviceNetworkConnection.isConnectionWiFi())) {
                CoreHelper.writeLogEntryInProduction(TAG, "######## WiFi Connection was dropped! Trying to poke WiFi adapter!!!");
                pokeWiFi();
            }
        }
    }

    public boolean isInAirplaneMode() {
        return Settings.System.getInt(getApplicationContext().getContentResolver(), "airplane_mode_on", 0) == 1;
    }

    @TargetApi(26)
    public boolean startDownloadServiceHolder() {
        if (!isDownloadServiceHolderRunning()) {
            Intent intent = new Intent(getApplicationContext(), (Class<?>) DownloadHolderService.class);
            if (CoreHelper.isOreoCompatible()) {
                this._DownloadService = getApplicationContext().startForegroundService(intent);
            } else {
                this._DownloadService = getApplicationContext().startService(intent);
            }
        }
        return isDownloadServiceHolderRunning();
    }

    @TargetApi(24)
    public Locale getLocale() {
        Resources resources = getApplicationContext().getResources();
        if (CoreHelper.apiLevel() >= 24) {
            return resources.getConfiguration().getLocales().getFirstMatch(resources.getAssets().getLocales());
        }
        return resources.getConfiguration().locale;
    }

    public void stopDownloadServiceHolder() {
        if (getApplicationContext().stopService(new Intent(getApplicationContext(), (Class<?>) DownloadHolderService.class))) {
            this._DownloadService = null;
        }
    }

    public boolean isDownloadServiceHolderRunning() {
        return this._DownloadService != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMediaSessionPlaylist(PlayListEvents.PlayListEvent playListEvent) {
        if (playListEvent.Type == 0) {
            _Handler.post(new Runnable() { // from class: mobi.beyondpod.BeyondPodApplication.8
                @Override // java.lang.Runnable
                public void run() {
                    TrackMetadataPublisher.getInstance().notifyPlaylistChanged();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMediaButtonListener(PlayListEvents.PlayListEvent playListEvent) {
        if (playListEvent.Type == 2) {
            Track currentTrack = playList().currentTrack();
            if (currentTrack != null) {
                int currentPlayState = currentTrack.getCurrentPlayState();
                if (currentPlayState == 1 || currentPlayState == 3) {
                    MediaButtonIntentReceiver.startListeningForMediaButton();
                    return;
                }
                return;
            }
            return;
        }
        if (playListEvent.Type == 3 || playList().playlistSize() == 0) {
            MediaButtonIntentReceiver.stopListeningForMediaButton();
        } else {
            MediaButtonIntentReceiver.startListeningForMediaButton();
        }
    }

    private void startMonitoringNetworkConnectivity() {
        this._NetworkStateChangedFilter = new IntentFilter();
        this._NetworkStateChangedFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        this._NetworkStateIntentReceiver = new BroadcastReceiver() { // from class: mobi.beyondpod.BeyondPodApplication.9
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (intent.getAction() != null && intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && intent.getBooleanExtra("noConnectivity", false)) {
                    CoreHelper.writeLogEntryInProduction(BeyondPodApplication.TAG, "########### All network connections are lost! ########");
                }
            }
        };
        registerReceiver(this._NetworkStateIntentReceiver, this._NetworkStateChangedFilter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isMovieViewActive() {
        return MovieViewCounter.hasInstances();
    }

    public boolean isDeviceLocked() {
        KeyguardManager keyguardManager = (KeyguardManager) getApplicationContext().getSystemService("keyguard");
        return keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode();
    }

    public boolean isGCMSupportedOnDevice() {
        try {
            return GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(getApplicationContext()) == 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public void onMainWindowVisible() {
        this._MainUIWindowVisible = true;
        messageBus.publishEvent(new ApplicationEvents.MainUIVisibilityChangedEvent(getInstance(), this._MainUIWindowVisible));
    }

    public void onMainWindowHidden() {
        this._MainUIWindowVisible = false;
        messageBus.publishEvent(new ApplicationEvents.MainUIVisibilityChangedEvent(getInstance(), this._MainUIWindowVisible));
    }

    public boolean isMainUIWindowVisible() {
        return this._MainUIWindowVisible;
    }

    @SuppressLint({"MissingPermission"})
    public Tracker getAnalyticsTracker() {
        if (this._AnalyticsTracker == null) {
            try {
                GoogleAnalytics googleAnalytics = GoogleAnalytics.getInstance(this);
                this._AnalyticsTracker = googleAnalytics.newTracker(R.xml.global_tracker);
                googleAnalytics.enableAutoActivityReports(this);
                this._AnalyticsTracker.enableAdvertisingIdCollection(true);
            } catch (Throwable unused) {
                CoreHelper.writeTraceEntry(TAG, "failed to initialize Google Analytics tracker");
            }
        }
        return this._AnalyticsTracker;
    }
}
