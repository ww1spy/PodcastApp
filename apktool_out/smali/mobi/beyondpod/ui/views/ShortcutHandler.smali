.class public Lmobi/beyondpod/ui/views/ShortcutHandler;
.super Landroid/app/Activity;
.source "ShortcutHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private openBeyondPodUI()V
    .locals 2

    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.action.OPEN_PLAYER"

    .line 84
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSmartPlay(I)V
    .locals 3

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/services/player/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mobi.beyondpod.services.musicservicewidgetcommand.startsmartplay"

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.playlist.id"

    .line 92
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 50
    sget-object p1, Lmobi/beyondpod/ui/views/ShortcutHandler;->TAG:Ljava/lang/String;

    const-string v0, "WidgetActionPicker started with no storage card. Exiting..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lmobi/beyondpod/ui/views/Splash;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/ShortcutHandler;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->finish()V

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->isConfigured()Z

    move-result p1

    if-nez p1, :cond_1

    .line 59
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->openBeyondPodUI()V

    .line 60
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->finish()V

    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "mobi.beyondpod.playlist.id"

    const/4 v1, -0x1

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 68
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/ShortcutHandler;->startSmartPlay(I)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 76
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->openBeyondPodUI()V

    .line 77
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/ShortcutHandler;->finish()V

    return-void
.end method
