.class public abstract Lmobi/beyondpod/BeyondPodApplication;
.super Landroid/app/Application;
.source "BeyondPodApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field protected static final CHANGE_SYNC_STATUS_NOTIFICATION_ID:I = 0xb3

.field protected static final READER_SYNC_STATUS_NOTIFICATION_ID:I = 0xab

.field private static final RELEASE_WAKELOCKS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BeyondPodApplication"

.field private static _BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static _BPWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static _BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private static _ChromecastDevice:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

.field private static _Handler:Landroid/os/Handler;

.field private static _Instance:Lmobi/beyondpod/BeyondPodApplication;

.field private static _PlayList:Lmobi/beyondpod/services/player/PlayList;

.field private static _WiFiMgr:Landroid/net/wifi/WifiManager;

.field private static _isShuttingDown:Ljava/lang/Boolean;

.field private static _wakeHandler:Landroid/os/Handler;

.field public static batteryLevel:I

.field public static batteryPlugged:I

.field public static batteryStatus:I

.field public static lastApplicationException:Ljava/lang/String;

.field public static messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;


# instance fields
.field private _AnalyticsTracker:Lcom/google/android/gms/analytics/Tracker;

.field private _BatteryStateReceiver:Landroid/content/BroadcastReceiver;

.field private _DownloadService:Landroid/content/ComponentName;

.field private _IsShutdown:Z

.field private _MainUIWindowVisible:Z

.field private _NetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private _NetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private _PlayListListener:Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;

.field private _StorageCardUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private final _syncLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_isShuttingDown:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_StorageCardUnmountReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_MainUIWindowVisible:Z

    .line 120
    iput-boolean v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_IsShutdown:Z

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_syncLock:Ljava/lang/Object;

    .line 660
    new-instance v0, Lmobi/beyondpod/BeyondPodApplication$7;

    invoke-direct {v0, p0}, Lmobi/beyondpod/BeyondPodApplication$7;-><init>(Lmobi/beyondpod/BeyondPodApplication;)V

    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_PlayListListener:Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;

    .line 127
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/BeyondPodApplication;)Ljava/lang/Object;
    .locals 0

    .line 81
    iget-object p0, p0, Lmobi/beyondpod/BeyondPodApplication;->_syncLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 81
    sput-object p0, Lmobi/beyondpod/BeyondPodApplication;->_isShuttingDown:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lmobi/beyondpod/BeyondPodApplication;
    .locals 1

    .line 81
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Instance:Lmobi/beyondpod/BeyondPodApplication;

    return-object v0
.end method

.method static synthetic access$400(Lmobi/beyondpod/BeyondPodApplication;Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lmobi/beyondpod/BeyondPodApplication;->updateMediaSessionPlaylist(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V

    return-void
.end method

.method static synthetic access$500(Lmobi/beyondpod/BeyondPodApplication;Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lmobi/beyondpod/BeyondPodApplication;->updateMediaButtonListener(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V

    return-void
.end method

.method public static dumpWakeLocks()Ljava/lang/String;
    .locals 2

    .line 508
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "*"

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 509
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "$"

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "#"

    goto :goto_2

    :cond_2
    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmobi/beyondpod/BeyondPodApplication;
    .locals 2

    .line 340
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Instance:Lmobi/beyondpod/BeyondPodApplication;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not yet loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Instance:Lmobi/beyondpod/BeyondPodApplication;

    return-object v0
.end method

.method public static isInitialized()Z
    .locals 2

    .line 258
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;

    .line 259
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static declared-synchronized isRuntimeShuttingDown()Ljava/lang/Boolean;
    .locals 2

    const-class v0, Lmobi/beyondpod/BeyondPodApplication;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->_isShuttingDown:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isWiFiEnabled()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 574
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_WiFiMgr:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 582
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_WiFiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static keepDeviceAwake()V
    .locals 4

    .line 516
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->defaultDeviceWakeLock()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    if-eqz v0, :cond_3

    .line 521
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 523
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 529
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isWiFiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    .line 531
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 533
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 540
    :cond_2
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 541
    sget-object v2, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void
.end method

.method public static pokeWiFi()V
    .locals 2

    .line 588
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isWiFiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 590
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 593
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v1, "######## Poking WiFi by turning on the screen to a dim level!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static pokeWiFiIfNeeded(Ljava/lang/Throwable;)V
    .locals 2

    .line 601
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->screenPowerStateDuringWiFiUpdates()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 604
    :cond_0
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/net/SocketException;

    if-eqz p0, :cond_3

    .line 607
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object p0

    .line 608
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isWiFiEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionWiFi()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 611
    :cond_2
    sget-object p0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v0, "######## WiFi Connection was dropped! Trying to poke WiFi adapter!!!"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->pokeWiFi()V

    :cond_3
    return-void
.end method

.method public static releaseWakeLocks()V
    .locals 2

    .line 471
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 478
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 485
    :cond_1
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_wakeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 486
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_wakeHandler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/BeyondPodApplication$6;

    invoke-direct {v1}, Lmobi/beyondpod/BeyondPodApplication$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    :cond_2
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_3

    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_3
    return-void
.end method

.method private startMonitoringNetworkConnectivity()V
    .locals 2

    .line 706
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_NetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 707
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_NetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    new-instance v0, Lmobi/beyondpod/BeyondPodApplication$9;

    invoke-direct {v0, p0}, Lmobi/beyondpod/BeyondPodApplication$9;-><init>(Lmobi/beyondpod/BeyondPodApplication;)V

    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_NetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 723
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_NetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lmobi/beyondpod/BeyondPodApplication;->_NetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static toggleWiFi(ZLjava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 549
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_WiFiMgr:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_0

    .line 551
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isWiFiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    sget-object p0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi adapter is already on. (called by: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 557
    :cond_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching WiFi adapter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    const-string v2, "ON"

    goto :goto_0

    :cond_1
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (called by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->_WiFiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method private updateMediaButtonListener(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 3

    .line 687
    iget v0, p1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 689
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 692
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_4

    .line 694
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->startListeningForMediaButton()V

    goto :goto_1

    .line 698
    :cond_1
    iget p1, p1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    if-eq p1, v1, :cond_3

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/services/player/PlayList;->playlistSize()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 701
    :cond_2
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->startListeningForMediaButton()V

    goto :goto_1

    .line 699
    :cond_3
    :goto_0
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->stopListeningForMediaButton()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateMediaSessionPlaylist(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 1

    .line 672
    iget p1, p1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    if-nez p1, :cond_0

    .line 674
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    new-instance v0, Lmobi/beyondpod/BeyondPodApplication$8;

    invoke-direct {v0, p0}, Lmobi/beyondpod/BeyondPodApplication$8;-><init>(Lmobi/beyondpod/BeyondPodApplication;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract appKind()Ljava/lang/String;
.end method

.method public bringApplicationToForeground()V
    .locals 3

    .line 264
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->isMainUIWindowVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10200000

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;
    .locals 1

    .line 354
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_ChromecastDevice:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    return-object v0
.end method

.method public abstract clearChangeSyncNotification()V
.end method

.method public abstract clearReaderSyncNotification()V
.end method

.method public abstract configureDefaults()V
.end method

.method public abstract configureDefaultsForVersionUpgrade(II)V
.end method

.method public abstract executeCommandPlaySmartPlayList(ILandroid/content/Context;)V
.end method

.method public getAnalyticsTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_AnalyticsTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 775
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 776
    sget v1, Lmobi/beyondpod/R$xml;->global_tracker:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/BeyondPodApplication;->_AnalyticsTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 777
    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->enableAutoActivityReports(Landroid/app/Application;)V

    .line 779
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_AnalyticsTracker:Lcom/google/android/gms/analytics/Tracker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 783
    :catch_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v1, "failed to initialize Google Analytics tracker"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :cond_0
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_AnalyticsTracker:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method public abstract getDefaultNotificationForService(Landroid/app/Service;Ljava/lang/String;)Landroid/app/Notification;
.end method

.method public abstract getDemoContent()[Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;
.end method

.method public abstract getExternalLicenseKey()Ljava/lang/String;
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 643
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 644
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v1

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 645
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    :goto_0
    return-object v0
.end method

.method protected initialize()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak",
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    # DIAG: Toast A - confirm initialize() was entered
    const-string v2, "BP: init-A: entered"
    const/4 v3, 0x1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 211
    :try_start_0
    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;

    .line 213
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    # DIAG: Toast B - before registerEnvironmentListeners
    const-string v2, "BP: init-B: regListeners"
    const/4 v3, 0x1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 214
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->registerEnvironmentListeners()V

    .line 216
    new-instance v0, Lmobi/beyondpod/services/player/PlayList;

    invoke-direct {v0}, Lmobi/beyondpod/services/player/PlayList;-><init>()V

    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_PlayList:Lmobi/beyondpod/services/player/PlayList;

    # DIAG: Toast C - before initializeWidgets
    const-string v2, "BP: init-C: initWidgets"
    const/4 v3, 0x1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->initializeWidgets()V

    .line 220
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v1, p0, Lmobi/beyondpod/BeyondPodApplication;->_PlayListListener:Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;

    const-class v2, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    # DIAG: Toast D - before Configuration.initialize
    const-string v2, "BP: init-D: Config.init"
    const/4 v3, 0x1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 222
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->initialize(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v1, "Unable to find Storage card! Waiting for a storage card to be mounted..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    # DIAG: Toast E - before ChromecastDevice construction
    const-string v2, "BP: init-E: Chromecast"
    const/4 v3, 0x1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 228
    :cond_0
    # Chromecast/GMS Cast init wrapped in Throwable catch — old GMS Cast classes can throw
    # NoClassDefFoundError/VerifyError (Errors, not Exceptions) on modern Android. Cast is
    # optional; a failure here must not abort application startup.
    :try_start_cc
    new-instance v0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_ChromecastDevice:Lmobi/beyondpod/services/player/impl/ChromecastDevice;
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_cc .. :try_end_cc} :catch_cc

    goto :after_cc

    :catch_cc
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CC-FAIL (non-fatal): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_ChromecastDevice:Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    :after_cc
    # DIAG: Toast F - ChromecastDevice done, try block completing
    const-string v2, "BP: init-F: done"
    const/4 v3, 0x1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    # GoogleAnalytics SDK uses non-SDK interfaces that throw on targetSdk >= 28; skip it
    const/4 v0, 0x0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    # Crashlytics removed — service is defunct
    :try_start_1
    nop
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 241
    :try_start_2
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v2, "failed to initialize Crashlytics"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :cond_1
    :goto_0
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analytics and crash reporting is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->gatherAnalyticsData()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Enabled"

    goto :goto_1

    :cond_2
    const-string v2, "Disabled"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 251
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v2, "failed to initialize BeyondPod application"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    # DIAG: grab exception class name and first stack frame so user can see it on splash screen
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v3

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->extractExceptionMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;

    :goto_2
    return-void
.end method

.method public abstract initializeWidgets()V
.end method

.method public isDeviceLocked()Z
    .locals 2

    .line 733
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDownloadServiceHolderRunning()Z
    .locals 1

    .line 657
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_DownloadService:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGCMSupportedOnDevice()Z
    .locals 3

    const/4 v0, 0x0

    .line 741
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method public isInAirplaneMode()Z
    .locals 3

    .line 622
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isLockScreenWidgetInstalled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMainUIWindowVisible()Z
    .locals 1

    .line 764
    iget-boolean v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_MainUIWindowVisible:Z

    return v0
.end method

.method protected isMovieViewActive()Z
    .locals 1

    .line 729
    invoke-static {}, Lmobi/beyondpod/ui/core/MovieViewCounter;->hasInstances()Z

    move-result v0

    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_IsShutdown:Z

    return v0
.end method

.method public abstract masterActivity()Landroid/app/Activity;
.end method

.method public abstract masterViewClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

# Appends msg+newline to <cacheDir>/bpdiag.txt; silently swallows all errors.
.method public static diagWrite(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_dw
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    const-string v2, "/bpdiag.txt"
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    new-instance v0, Ljava/io/FileOutputStream;
    const/4 v2, 0x1
    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    const-string v1, "\n"
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_dw
    .catch Ljava/lang/Throwable; {:try_start_dw .. :try_end_dw} :catch_dw
    goto :after_dw
    :catch_dw
    move-exception v0
    :after_dw

    return-void
.end method

.method public onCreate()V
    .locals 5

    # Rotate log: rename bpdiag.txt -> bpdiag_prev.txt so Splash can display last-launch trace
    :try_start_bpa_rotate
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    move-result-object v0
    new-instance v1, Ljava/io/File;
    const-string v2, "bpdiag.txt"
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    new-instance v2, Ljava/io/File;
    const-string v3, "bpdiag_prev.txt"
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_bpa_rotate
    .catch Ljava/lang/Throwable; {:try_start_bpa_rotate .. :try_end_bpa_rotate} :catch_bpa_rotate
    goto :after_bpa_rotate
    :catch_bpa_rotate
    move-exception v0
    :after_bpa_rotate

    const-string v0, "BPDiag"
    const-string v1, "BPA-0:oncreate-entered"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    # Set before any Activity can start — prevents AppCompat recreation loop on Android 10+
    const/4 v0, 0x1
    invoke-static {v0}, Landroid/support/v7/app/AppCompatDelegate;->setDefaultNightMode(I)V

    const-string v0, "BPDiag"
    const-string v1, "BPA-1:after-nightmode"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    # Checkpoint A: BPA.onCreate() entered
    :try_start_bpa_a
    const-string v0, "diag"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "crash_cp"
    const-string v2, "bpa-A:oncreate-entered"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_bpa_a
    .catch Ljava/lang/Throwable; {:try_start_bpa_a .. :try_end_bpa_a} :catch_bpa_a
    goto :after_bpa_a
    :catch_bpa_a
    move-exception v0
    :after_bpa_a

    const-string v0, "BPDiag"
    const-string v1, "BPA-2:after-cp-a"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    .line 137
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "BPDiag"
    const-string v1, "BPA-3:after-app-super"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v1
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_wakeHandler:Landroid/os/Handler;

    .line 141
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;
    const-string v1, "**************************************************************"
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;
    const-string v1, "************ BeyondPod Process is starting *******************"
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v0
    new-instance v1, Lmobi/beyondpod/BeyondPodApplication$1;
    invoke-direct {v1, p0}, Lmobi/beyondpod/BeyondPodApplication$1;-><init>(Lmobi/beyondpod/BeyondPodApplication;)V
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 155
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Instance:Lmobi/beyondpod/BeyondPodApplication;
    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;
    const-string v1, "Not a singleton"
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
    throw v0

    .line 160
    :cond_0
    sput-object p0, Lmobi/beyondpod/BeyondPodApplication;->_Instance:Lmobi/beyondpod/BeyondPodApplication;

    const-string v0, "BPDiag"
    const-string v1, "BPA-4:after-instance-set"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "wifi"
    .line 162
    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/net/wifi/WifiManager;
    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_WiFiMgr:Landroid/net/wifi/WifiManager;

    .line 163
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_WiFiMgr:Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0
    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_WiFiMgr:Landroid/net/wifi/WifiManager;
    const/4 v2, 0x3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    move-result-object v0
    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 166
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    :cond_1
    const-string v0, "power"
    .line 169
    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Landroid/os/PowerManager;
    if-eqz v0, :cond_2

    const/4 v2, 0x1
    .line 172
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, " - Screen OFF"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    move-result-object v0
    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 173
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 179
    :cond_2
    new-instance v0, Lmobi/beyondpod/BeyondPodApplication$2;
    invoke-direct {v0, p0}, Lmobi/beyondpod/BeyondPodApplication$2;-><init>(Lmobi/beyondpod/BeyondPodApplication;)V
    sput-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    # Checkpoint B: about to acquire WakeLock
    :try_start_bpa_b
    const-string v0, "diag"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "crash_cp"
    const-string v2, "bpa-B:pre-wakelock"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_bpa_b
    .catch Ljava/lang/Throwable; {:try_start_bpa_b .. :try_end_bpa_b} :catch_bpa_b
    goto :after_bpa_b
    :catch_bpa_b
    move-exception v0
    :after_bpa_b

    const-string v0, "BPDiag"
    const-string v1, "BPA-5:after-cp-b"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_BPWakeLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v1, 0x7d0
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string v0, "BPDiag"
    const-string v1, "BPA-6:after-wakelock-acq"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    # Checkpoint C: about to start network monitor
    :try_start_bpa_c
    const-string v0, "diag"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "crash_cp"
    const-string v2, "bpa-C:pre-netmon"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_bpa_c
    .catch Ljava/lang/Throwable; {:try_start_bpa_c .. :try_end_bpa_c} :catch_bpa_c
    goto :after_bpa_c
    :catch_bpa_c
    move-exception v0
    :after_bpa_c

    const-string v0, "BPDiag"
    const-string v1, "BPA-7:after-cp-c"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-direct {p0}, Lmobi/beyondpod/BeyondPodApplication;->startMonitoringNetworkConnectivity()V

    const-string v0, "BPDiag"
    const-string v1, "BPA-8:after-netmon"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    # Checkpoint D: about to call initialize()
    :try_start_bpa_d
    const-string v0, "diag"
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    move-result-object v0
    invoke-virtual {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    const-string v1, "crash_cp"
    const-string v2, "bpa-D:pre-initialize"
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    move-result-object v0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_bpa_d
    .catch Ljava/lang/Throwable; {:try_start_bpa_d .. :try_end_bpa_d} :catch_bpa_d
    goto :after_bpa_d
    :catch_bpa_d
    move-exception v0
    :after_bpa_d

    const-string v0, "BPDiag"
    const-string v1, "BPA-9:after-cp-d"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->touch()V

    const-string v0, "BPDiag"
    const-string v1, "BPA-10:after-mbir-touch"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->initialize()V

    const-string v0, "BPDiag"
    const-string v1, "BPA-11:after-initialize"
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {p0, v1}, Lmobi/beyondpod/BeyondPodApplication;->diagWrite(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .line 300
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 301
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>>>>>> Low Memory Detected! <<<<<<<<<<<<"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMainWindowHidden()V
    .locals 4

    const/4 v0, 0x0

    .line 758
    iput-boolean v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_MainUIWindowVisible:Z

    .line 759
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    iget-boolean v3, p0, Lmobi/beyondpod/BeyondPodApplication;->_MainUIWindowVisible:Z

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public onMainWindowVisible()V
    .locals 4

    const/4 v0, 0x1

    .line 752
    iput-boolean v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_MainUIWindowVisible:Z

    .line 753
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    iget-boolean v3, p0, Lmobi/beyondpod/BeyondPodApplication;->_MainUIWindowVisible:Z

    invoke-direct {v1, v2, v3}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method public onTerminate()V
    .locals 4

    .line 307
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_StorageCardUnmountReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_StorageCardUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iput-object v1, p0, Lmobi/beyondpod/BeyondPodApplication;->_StorageCardUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/BeyondPodApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 316
    iput-object v1, p0, Lmobi/beyondpod/BeyondPodApplication;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    :cond_1
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->stopListeningForMediaButton()V

    .line 321
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v2, "BeyondPodApplication is Terminating... Releasing the wake locks"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->releaseWakeLocks()V

    .line 325
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositorySync()V

    .line 326
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/BeyondPodApplication;->_PlayListListener:Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;

    const-class v3, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 328
    sput-object v1, Lmobi/beyondpod/BeyondPodApplication;->_Instance:Lmobi/beyondpod/BeyondPodApplication;

    .line 330
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 331
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 333
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->getInstance()Lmobi/beyondpod/rsscore/helpers/NotificationHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/NotificationHelper;->clearNotification(Landroid/content/Context;I)V

    .line 335
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public abstract playFromQuery(Ljava/lang/String;)Z
.end method

.method public playList()Lmobi/beyondpod/services/player/PlayList;
    .locals 1

    .line 349
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_PlayList:Lmobi/beyondpod/services/player/PlayList;

    return-object v0
.end method

.method public abstract refreshWidgets()V
.end method

.method public registerEnvironmentListeners()V
    .locals 2

    .line 365
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_StorageCardUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lmobi/beyondpod/BeyondPodApplication$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/BeyondPodApplication$4;-><init>(Lmobi/beyondpod/BeyondPodApplication;)V

    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_StorageCardUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 429
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 431
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lmobi/beyondpod/BeyondPodApplication;->_StorageCardUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 437
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 439
    new-instance v0, Lmobi/beyondpod/BeyondPodApplication$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/BeyondPodApplication$5;-><init>(Lmobi/beyondpod/BeyondPodApplication;)V

    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 454
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    .line 456
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lmobi/beyondpod/BeyondPodApplication;->_BatteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/BeyondPodApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public abstract sendCommandToVideoPlayer(Landroid/content/Intent;)Z
.end method

.method public abstract setChangeSyncNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMasterActivity(Landroid/app/Activity;)V
.end method

.method public abstract setNotification(Landroid/app/Service;Landroid/content/Intent;)V
.end method

.method public abstract setPlayerNotification(Landroid/app/Service;Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract setPlayerPauseNotification(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public abstract setReaderSyncNotification(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public shutdown()V
    .locals 4

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_IsShutdown:Z

    .line 282
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->_Handler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/BeyondPodApplication$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/BeyondPodApplication$3;-><init>(Lmobi/beyondpod/BeyondPodApplication;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startDownloadServiceHolder()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 628
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->isDownloadServiceHolderRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 630
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_DownloadService:Landroid/content/ComponentName;

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_DownloadService:Landroid/content/ComponentName;

    .line 638
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->isDownloadServiceHolderRunning()Z

    move-result v0

    return v0
.end method

.method public abstract startVideoPlayback(Lmobi/beyondpod/rsscore/Track;)V
.end method

.method public stopDownloadServiceHolder()V
    .locals 4

    .line 651
    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lmobi/beyondpod/services/download/DownloadHolderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 652
    iput-object v0, p0, Lmobi/beyondpod/BeyondPodApplication;->_DownloadService:Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 464
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 465
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->TAG:Ljava/lang/String;

    const-string v0, "!!! Unhandled exception !!!"

    invoke-static {p1, v0, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logUnhandledException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->releaseWakeLocks()V

    return-void
.end method
