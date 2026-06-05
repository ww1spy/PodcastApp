.class public abstract Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;
.super Landroid/appwidget/AppWidgetProvider;
.source "MediaAppWidgetProviderBase.java"

# interfaces
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


# static fields
.field static TAG:Ljava/lang/String;


# instance fields
.field _handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lmobi/beyondpod/services/player/MediaAppWidgetProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->_handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->refreshViewsInternal()V

    return-void
.end method

.method static createOpenMainWindowPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 233
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.ui.dialogs.WidgetActionPicker"

    .line 234
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 235
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static createOpenPlaylistEditorPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->masterViewClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    .line 225
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "mobi.beyondpod.ui.views.PlaylistEditorActivity"

    .line 226
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 227
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static createWidgetActionPickerPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmobi/beyondpod/ui/dialogs/WidgetActionPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 241
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private getIds()[I
    .locals 2

    .line 149
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->thisAppWidget()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getProgressResource(F)I
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const p0, 0x7f080066

    return p0

    :cond_0
    cmpl-double p0, v0, v2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    if-ltz p0, :cond_1

    cmpg-double p0, v0, v2

    if-gez p0, :cond_1

    const p0, 0x7f080067

    return p0

    :cond_1
    cmpl-double p0, v0, v2

    const-wide v2, 0x3fd3333333333333L    # 0.3

    if-ltz p0, :cond_2

    cmpg-double p0, v0, v2

    if-gez p0, :cond_2

    const p0, 0x7f08006a

    return p0

    :cond_2
    cmpl-double p0, v0, v2

    const-wide v2, 0x3fd999999999999aL    # 0.4

    if-ltz p0, :cond_3

    cmpg-double p0, v0, v2

    if-gez p0, :cond_3

    const p0, 0x7f08006b

    return p0

    :cond_3
    cmpl-double p0, v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-ltz p0, :cond_4

    cmpg-double p0, v0, v2

    if-gez p0, :cond_4

    const p0, 0x7f08006c

    return p0

    :cond_4
    cmpl-double p0, v0, v2

    const-wide v2, 0x3fe3333333333333L    # 0.6

    if-ltz p0, :cond_5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_5

    const p0, 0x7f08006d

    return p0

    :cond_5
    cmpl-double p0, v0, v2

    const-wide v2, 0x3fe6666666666666L    # 0.7

    if-ltz p0, :cond_6

    cmpg-double p0, v0, v2

    if-gez p0, :cond_6

    const p0, 0x7f08006e

    return p0

    :cond_6
    cmpl-double p0, v0, v2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    if-ltz p0, :cond_7

    cmpg-double p0, v0, v2

    if-gez p0, :cond_7

    const p0, 0x7f08006f

    return p0

    :cond_7
    cmpl-double p0, v0, v2

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    if-ltz p0, :cond_8

    cmpg-double p0, v0, v2

    if-gez p0, :cond_8

    const p0, 0x7f080070

    return p0

    :cond_8
    cmpl-double p0, v0, v2

    const-wide v2, 0x3fee666666666666L    # 0.95

    if-ltz p0, :cond_9

    cmpg-double p0, v0, v2

    if-gez p0, :cond_9

    const p0, 0x7f080071

    return p0

    :cond_9
    cmpl-double p0, v0, v2

    if-ltz p0, :cond_a

    const-wide v2, 0x3fef0a3d70a3d70aL    # 0.97

    cmpg-double p0, v0, v2

    if-gez p0, :cond_a

    const p0, 0x7f080068

    return p0

    :cond_a
    const p0, 0x7f080069

    return p0
.end method

.method private refreshViewsInternal()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->getIds()[I

    move-result-object v0

    .line 79
    array-length v1, v0

    if-lez v1, :cond_0

    .line 80
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->performWidgetUpdate(Landroid/content/Context;[I)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->performNotificationUpdate()V

    return-void
.end method


# virtual methods
.method protected getWidgetSize(Landroid/content/Context;I)Landroid/graphics/Rect;
    .locals 5

    .line 135
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    .line 136
    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p1

    .line 137
    new-instance p2, Landroid/graphics/Rect;

    const-string v0, "appWidgetMinWidth"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "appWidgetMinHeight"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "appWidgetMaxWidth"

    .line 138
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "appWidgetMaxHeight"

    .line 139
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p2, v0, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public hasInstances()Z
    .locals 1

    .line 155
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->getIds()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initWidgets(Landroid/content/Context;[I)V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 54
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 55
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 57
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->TAG:Ljava/lang/String;

    const-string v1, "WidgetProvider initialized"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 1

    const/4 p4, 0x1

    .line 109
    new-array p4, p4, [I

    const/4 v0, 0x0

    aput p3, p4, v0

    invoke-virtual {p0, p1, p2, p4}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2

    .line 94
    sget-object v0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->TAG:Ljava/lang/String;

    const-string v1, "Widgets enabled! Initializing..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->getIds()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->initWidgets(Landroid/content/Context;[I)V

    .line 97
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    sget-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->TAG:Ljava/lang/String;

    const-string v0, "Found that the repository is not loaded when enabling widgets! Loading now..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->initializeAndLoadRepository()Z

    :cond_0
    return-void
.end method

.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->refreshViews()V

    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 169
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 171
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    .line 173
    iget-object v1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    if-ne v1, v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->refreshViews()V

    .line 186
    :cond_0
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    if-eqz v0, :cond_1

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 189
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->refreshViews()V

    :cond_2
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p3}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->performWidgetUpdate(Landroid/content/Context;[I)V

    return-void
.end method

.method protected abstract performNotificationUpdate()V
.end method

.method protected abstract performWidgetUpdate(Landroid/content/Context;[I)V
.end method

.method protected pushUpdate(Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 0

    .line 116
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 122
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    sget-object p1, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->TAG:Ljava/lang/String;

    const-string p2, "failed to publish widget update"

    invoke-static {p1, p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public refreshViews()V
    .locals 2

    .line 66
    iget-object v0, p0, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;->_handler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase$1;-><init>(Lmobi/beyondpod/services/player/MediaAppWidgetProviderBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected abstract thisAppWidget()Landroid/content/ComponentName;
.end method
