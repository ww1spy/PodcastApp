.class public Lmobi/beyondpod/services/player/PlayerUtils;
.super Ljava/lang/Object;
.source "PlayerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerUtils"

.field private static _ServiceBinder:Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder; = null

.field private static _ServiceLocked:Z = false

.field public static sService:Lmobi/beyondpod/services/player/IMediaPlaybackService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .locals 2

    .line 40
    sget-object v0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceBinder:Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 43
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    :goto_0
    new-instance v0, Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;

    invoke-direct {v0, p1}, Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    sput-object v0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceBinder:Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;

    .line 52
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceBinder:Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static isPlayerServiceLocked()Z
    .locals 1

    .line 118
    sget-boolean v0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceLocked:Z

    return v0
.end method

.method public static lockPlayerService()V
    .locals 1

    const/4 v0, 0x1

    .line 108
    sput-boolean v0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceLocked:Z

    return-void
.end method

.method public static stopService(Landroid/content/Context;)V
    .locals 2

    .line 101
    invoke-static {p0}, Lmobi/beyondpod/services/player/PlayerUtils;->unbindFromService(Landroid/content/Context;)V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public static unbindFromService(Landroid/content/Context;)V
    .locals 1

    .line 57
    sget-object v0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceBinder:Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    :try_start_0
    sget-object v0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceBinder:Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    sget-object p0, Lmobi/beyondpod/services/player/PlayerUtils;->TAG:Ljava/lang/String;

    const-string v0, "failed to unbind from the player service"

    invoke-static {p0, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    .line 68
    sput-object p0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceBinder:Lmobi/beyondpod/services/player/PlayerUtils$ServiceBinder;

    return-void
.end method

.method public static unlockPlayerService()V
    .locals 1

    const/4 v0, 0x0

    .line 113
    sput-boolean v0, Lmobi/beyondpod/services/player/PlayerUtils;->_ServiceLocked:Z

    return-void
.end method
