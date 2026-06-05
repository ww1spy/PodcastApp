.class public Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;
.super Lmobi/beyondpod/services/player/MediaAppWidgetProvider;
.source "MediaAppWidgetProviderLockscreen.java"


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->packageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobi.beyondpod.services.player.MediaAppWidgetProviderLockscreen"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected performWidgetUpdate(Landroid/content/Context;[I)V
    .locals 6

    const/4 v0, 0x0

    .line 35
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget v2, p2, v0

    .line 37
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/BeyondPodApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c002a

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 40
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v4

    const/4 v5, 0x6

    .line 41
    invoke-static {p1, v3, v4, v5}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;->wireRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Lmobi/beyondpod/rsscore/Track;I)V

    const/4 v4, 0x1

    .line 42
    invoke-static {p1, v3, v4}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;->wireRemoteNotificationViewButtons(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 43
    invoke-virtual {p0, p1, v2, v3}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;->pushUpdate(Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected thisAppWidget()Landroid/content/ComponentName;
    .locals 1

    .line 50
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderLockscreen;->THIS_APPWIDGET:Landroid/content/ComponentName;

    return-object v0
.end method
