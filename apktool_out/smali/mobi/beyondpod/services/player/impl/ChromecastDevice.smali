.class public Lmobi/beyondpod/services/player/impl/ChromecastDevice;
.super Ljava/lang/Object;
.source "ChromecastDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;,
        Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;,
        Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;,
        Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;,
        Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;,
        Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;
    }
.end annotation


# static fields
.field public static final APPLICATION_ID_DEV:Ljava/lang/String; = "BBC4E9EF"

.field public static final APPLICATION_ID_PROD:Ljava/lang/String; = "D1B83C8C"

.field public static final APPLICATION_ID_TEST:Ljava/lang/String; = "6F001398"

.field public static final CC_SDK_LEVEL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "chromecastDevice"

.field private static final VOLUME_INCREMENT:D = 0.05


# instance fields
.field private _AppMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

.field private _CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private _CastDeviceControllerListener:Lcom/google/android/gms/cast/Cast$Listener;

.field private _ChromecastSessionID:Ljava/lang/String;

.field private _ConnectionCallbacks:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

.field private _ConnectionFailedListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;

.field private _MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

.field private _MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

.field private _MediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

.field private _MediaRouter:Landroid/support/v7/media/MediaRouter;

.field private _MediaRouterCallback:Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;

.field private _NumAvailableDevices:I

.field private _RemoteControlClient:Ljava/lang/Object;

.field private _SelectedDevice:Lcom/google/android/gms/cast/CastDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_ChromecastSessionID:Ljava/lang/String;

    const/4 v1, 0x0

    .line 68
    iput v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_NumAvailableDevices:I

    .line 74
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouter:Landroid/support/v7/media/MediaRouter;

    .line 76
    new-instance p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    invoke-direct {p1, p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_ConnectionCallbacks:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    .line 77
    new-instance p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;

    invoke-direct {p1, p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_ConnectionFailedListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;

    .line 78
    new-instance p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;

    invoke-direct {p1, p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastDeviceControllerListener;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastDeviceControllerListener:Lcom/google/android/gms/cast/Cast$Listener;

    .line 80
    new-instance p1, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {p1}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    .line 81
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->appId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    .line 83
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 85
    new-instance p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;

    invoke-direct {p1, p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;-><init>(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;)V

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouterCallback:Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;

    .line 86
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouterCallback:Lmobi/beyondpod/services/player/impl/ChromecastDevice$CastMediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    return-void
.end method

.method static synthetic access$1000(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;
    .locals 0

    .line 44
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    return-object p0
.end method

.method static synthetic access$1002(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;
    .locals 0

    .line 44
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    return-object p1
.end method

.method static synthetic access$1100(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;
    .locals 0

    .line 44
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    return-object p0
.end method

.method static synthetic access$1102(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;)Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;
    .locals 0

    .line 44
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    return-object p1
.end method

.method static synthetic access$1200(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lcom/google/android/gms/cast/CastDevice;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->connectToDeviceInternal(Lcom/google/android/gms/cast/CastDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->disconnectFromDeviceInternal()V

    return-void
.end method

.method static synthetic access$1400(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)I
    .locals 0

    .line 44
    iget p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_NumAvailableDevices:I

    return p0
.end method

.method static synthetic access$1408(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)I
    .locals 2

    .line 44
    iget v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_NumAvailableDevices:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_NumAvailableDevices:I

    return v0
.end method

.method static synthetic access$1410(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)I
    .locals 2

    .line 44
    iget v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_NumAvailableDevices:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_NumAvailableDevices:I

    return v0
.end method

.method static synthetic access$400(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->hasDeviceConnection()Z

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Lcom/google/android/gms/cast/ApplicationMetadata;)Lcom/google/android/gms/cast/ApplicationMetadata;
    .locals 0

    .line 44
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_AppMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    return-object p1
.end method

.method static synthetic access$600(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->detachMediaChannel()V

    return-void
.end method

.method static synthetic access$700(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->detachFeedbackChannel()V

    return-void
.end method

.method static synthetic access$800(Lmobi/beyondpod/services/player/impl/ChromecastDevice;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    .line 44
    iget-object p0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p0
.end method

.method static synthetic access$902(Lmobi/beyondpod/services/player/impl/ChromecastDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_ChromecastSessionID:Ljava/lang/String;

    return-object p1
.end method

.method private static appId()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGChromecastEnvironment()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "D1B83C8C"

    goto :goto_0

    :cond_0
    const-string v0, "BBC4E9EF"

    :goto_0
    return-object v0
.end method

.method public static castControlCategory()Ljava/lang/String;
    .locals 1

    .line 92
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->appId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkGooglePlayServices(Landroid/app/Activity;Z)Z
    .locals 3

    .line 847
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_1
    if-eqz p1, :cond_1

    .line 858
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object p0

    .line 859
    new-instance p1, Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;

    invoke-direct {p1}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 867
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private connectToDeviceInternal(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 3

    .line 200
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifChromecastRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "chromecastDevice"

    const-string v0, "Found cast device, but we are in Restricted mode. Ignoring..."

    .line 202
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 206
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_SelectedDevice:Lcom/google/android/gms/cast/CastDevice;

    const-string p1, "chromecastDevice"

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found cast device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_SelectedDevice:Lcom/google/android/gms/cast/CastDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "chromecastDevice"

    const-string v0, "Acquiring controller for it..."

    .line 209
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :try_start_0
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_SelectedDevice:Lcom/google/android/gms/cast/CastDevice;

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastDeviceControllerListener:Lcom/google/android/gms/cast/Cast$Listener;

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/Cast$CastOptions;->builder(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;

    move-result-object p1

    .line 218
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/cast/Cast;->API:Lcom/google/android/gms/common/api/Api;

    .line 219
    invoke-virtual {p1}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->build()Lcom/google/android/gms/cast/Cast$CastOptions;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_ConnectionCallbacks:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionCallbacks;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_ConnectionFailedListener:Lmobi/beyondpod/services/player/impl/ChromecastDevice$ConnectionFailedListener;

    .line 220
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 222
    iget-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "chromecastDevice"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while creating a device controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private detachFeedbackChannel()V
    .locals 3

    .line 300
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "chromecastDevice"

    const-string v1, "Unabe to remove Media Feedback Channel callbacks"

    .line 310
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    :cond_1
    return-void
.end method

.method private detachMediaChannel()V
    .locals 3

    .line 280
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 286
    :try_start_0
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/cast/Cast$CastApi;->removeMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "chromecastDevice"

    const-string v1, "Unabe to remove Media Control Channel callbacks"

    .line 289
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;->release()V

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    :cond_1
    return-void
.end method

.method public static disconnect()V
    .locals 1

    .line 150
    invoke-static {}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->switchToDefaultRoute()V

    return-void
.end method

.method private disconnectFromDeviceInternal()V
    .locals 6

    .line 232
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->hasDeviceConnection()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "chromecastDevice"

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to disconnect from Chromecast device... (was connected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :try_start_0
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_3

    .line 239
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    sget-object v2, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v3, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v4, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_ChromecastSessionID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/cast/Cast$CastApi;->stopApplication(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;

    .line 242
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->detachMediaChannel()V

    .line 243
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->detachFeedbackChannel()V

    .line 245
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    iget-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_2

    :cond_3
    const-string v2, "chromecastDevice"

    const-string v3, "device appears to be already disconnected..."

    .line 252
    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "chromecastDevice"

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to disconnect from device! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    const/4 v2, 0x0

    .line 260
    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    .line 261
    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    .line 262
    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 263
    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_SelectedDevice:Lcom/google/android/gms/cast/CastDevice;

    .line 264
    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_AppMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    .line 265
    iput-object v2, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_ChromecastSessionID:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 268
    invoke-static {v1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdSwitchPlayerForCurrentTrack(Z)V

    :cond_5
    return-void
.end method

.method public static hasAvailableDevices()Z
    .locals 1

    .line 163
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getAvailableDeviceCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasDeviceConnection()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_SelectedDevice:Lcom/google/android/gms/cast/CastDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isConnected()Z
    .locals 1

    .line 145
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v0

    invoke-direct {v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->hasDeviceConnection()Z

    move-result v0

    return v0
.end method

.method private onSetVolume(D)V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/cast/Cast$CastApi;->setVolume(Lcom/google/android/gms/common/api/GoogleApiClient;D)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "chromecastDevice"

    const-string v0, "Problem sending Set Volume"

    .line 133
    invoke-static {p2, v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addRemoteControlClient(Ljava/lang/Object;)V
    .locals 1

    .line 481
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_RemoteControlClient:Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter;->addRemoteControlClient(Ljava/lang/Object;)V

    return-void
.end method

.method public adjustVolume(I)Z
    .locals 6

    .line 107
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->hasDeviceConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_CastClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/cast/Cast$CastApi;->getVolume(Lcom/google/android/gms/common/api/GoogleApiClient;)D

    move-result-wide v0

    int-to-double v2, p1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    const-string p1, "chromecastDevice"

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting volume from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, v2, v3}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->onSetVolume(D)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public connectToDevice(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 187
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->ifChromecastRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/IllegalAccessException;

    invoke-direct {p1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public connectedDeviceName()Ljava/lang/String;
    .locals 1

    .line 168
    invoke-direct {p0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->hasDeviceConnection()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public disconnectFromDevice()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAvailableDeviceCount()I
    .locals 1

    .line 158
    iget v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_NumAvailableDevices:I

    return v0
.end method

.method getMediaControlChannel()Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;
    .locals 1

    .line 177
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaControlChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel;

    return-object v0
.end method

.method getMediaFeedbackChannel()Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;
    .locals 1

    .line 182
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaFeedbackChannel:Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaFeedbackChannel;

    return-object v0
.end method

.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1

    .line 102
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouteSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public removeRemoteControlClient()V
    .locals 2

    .line 487
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_RemoteControlClient:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_RemoteControlClient:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeRemoteControlClient(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMediaSession(Ljava/lang/Object;)V
    .locals 1

    .line 493
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouter:Landroid/support/v7/media/MediaRouter;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter;->setMediaSession(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public switchToDefaultRoute()V
    .locals 2

    const-string v0, "chromecastDevice"

    const-string v1, "Switching to default route..."

    .line 273
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->_MediaRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->select()V

    const/4 v0, 0x0

    .line 275
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdSwitchPlayerForCurrentTrack(Z)V

    return-void
.end method
