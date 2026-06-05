.class public Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;
.super Landroid/support/v7/app/MediaRouteControllerDialog;
.source "BPMediaRouteControllerDialog.java"

# interfaces
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$IRouteControllerDialogOwner;
    }
.end annotation


# static fields
.field private static final PLAYBACK_ERROR:Ljava/lang/String;

.field private static final PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

.field private static final PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

.field private static final PREPARING_STREAM_S:Ljava/lang/String;


# instance fields
.field private _Context:Landroid/content/Context;

.field private _Handler:Landroid/os/Handler;

.field private _PlayPause:Landroid/widget/ImageButton;

.field private _PrepareProgress:Landroid/widget/ProgressBar;

.field private _SubTitle:Landroid/widget/TextView;

.field private _Title:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1002d5

    .line 28
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PLAYBACK_ERROR:Ljava/lang/String;

    const v0, 0x7f1002d8

    .line 30
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PREPARING_STREAM_S:Ljava/lang/String;

    const v0, 0x7f1002d7

    .line 32
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

    const v0, 0x7f1002d6

    .line 34
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)Lmobi/beyondpod/rsscore/Track;
    .locals 0

    .line 25
    invoke-direct {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->updateCurrentTrack()V

    return-void
.end method

.method private currentTrack()Lmobi/beyondpod/rsscore/Track;
    .locals 1

    .line 168
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    return-object v0
.end method

.method private updateCurrentTrack()V
    .locals 9

    .line 173
    invoke-direct {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x7f080075

    if-eqz v0, :cond_5

    .line 180
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    iget-object v1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Title:Landroid/widget/TextView;

    sget-object v4, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PREPARING_STREAM_S:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 188
    :cond_0
    iget-object v4, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 192
    sget-object v1, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PLAYBACK_ERROR:Ljava/lang/String;

    goto :goto_2

    .line 194
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 196
    sget-object v1, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PLAYBACK_ERROR_STREAMING_DISABLED:Ljava/lang/String;

    :goto_0
    move v3, v2

    goto :goto_2

    .line 199
    :cond_2
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_3

    .line 201
    sget-object v1, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PLAYBACK_ERROR_CANT_CAST:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " \u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    const-string v4, ""

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    :goto_2
    iget-object v4, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_SubTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_SubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 218
    :cond_5
    iget-object v3, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_SubTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    iget-object v1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Title:Landroid/widget/TextView;

    const v3, 0x7f1002e1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    move v3, v2

    .line 222
    :goto_3
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->setPlayPauseButtonImage(Lmobi/beyondpod/rsscore/Track;)V

    .line 224
    iget-object v0, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Title:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v3, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method


# virtual methods
.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 61
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0081

    .line 64
    invoke-virtual {v0, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09028a

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Title:Landroid/widget/TextView;

    const v0, 0x7f090252

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_SubTitle:Landroid/widget/TextView;

    const v0, 0x7f0901cc

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PlayPause:Landroid/widget/ImageButton;

    .line 71
    iget-object v0, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PlayPause:Landroid/widget/ImageButton;

    new-instance v1, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$1;-><init>(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d0

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PrepareProgress:Landroid/widget/ProgressBar;

    .line 83
    invoke-direct {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->updateCurrentTrack()V

    .line 85
    new-instance v0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$2;-><init>(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 1

    .line 121
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Handler:Landroid/os/Handler;

    new-instance v0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$3;-><init>(Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 157
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 159
    iget-object p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 161
    invoke-direct {p0}, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->updateCurrentTrack()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 105
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 106
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 107
    invoke-super {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 113
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 114
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 115
    invoke-super {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->onStop()V

    return-void
.end method

.method public setPlayPauseButtonImage(Lmobi/beyondpod/rsscore/Track;)V
    .locals 5

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PrepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    .line 140
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_Title:Landroid/widget/TextView;

    sget-object v2, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->PREPARING_STREAM_S:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getBufferedPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PrepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 144
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 148
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PrepareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 150
    iget-object p1, p0, Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog;->_PlayPause:Landroid/widget/ImageButton;

    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800fd

    goto :goto_0

    :cond_2
    const v0, 0x7f0800fe

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    return-void
.end method
