.class public Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;
.super Landroid/widget/RelativeLayout;
.source "PlaylistHeaderActionbar.java"


# static fields
.field private static final ABOUT:Ljava/lang/String;

.field private static final MENU_CLEAR_PLAYLIST:I = 0x65

.field private static final MENU_DELETE_PLAYED_FROM_PLAYLIST:I = 0x67

.field private static final MENU_DOWNLOAD_PLAYLIST:I = 0x66

.field private static final MENU_PLAY_VIDEO_AS_AUDIO:I = 0x68

.field private static final TAG:Ljava/lang/String; = "PlaylistHeaderActionbar"


# instance fields
.field _ABAddSmartPlay:Landroid/view/View;

.field _Overflow:Landroid/view/View;

.field private _OverflowHandler:Landroid/view/View$OnClickListener;

.field _PlaylistInfo:Landroid/widget/TextView;

.field _PlaylistName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1002e5

    .line 24
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->ABOUT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_OverflowHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_OverflowHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance p1, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$2;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_OverflowHandler:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 52
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09014c

    .line 54
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_PlaylistInfo:Landroid/widget/TextView;

    const v0, 0x7f09014d

    .line 55
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_PlaylistName:Landroid/widget/TextView;

    const v0, 0x7f09023f

    .line 57
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_ABAddSmartPlay:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_ABAddSmartPlay:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$1;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901b6

    .line 67
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_Overflow:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_Overflow:Landroid/view/View;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_OverflowHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public refreshHeader()V
    .locals 2

    .line 129
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_ABAddSmartPlay:Landroid/view/View;

    invoke-static {}, Lmobi/beyondpod/services/player/smartplay/SmartPlaylistManager;->lastUsedSmartplay()Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updatePlaylistInfo()V
    .locals 10

    .line 134
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_PlaylistName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_PlaylistInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 141
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->playlistTotalTime()Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    move-result-object v0

    .line 142
    iget-boolean v2, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTimeIsApproximate:Z

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTime:J

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_PlaylistInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 144
    :cond_2
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_PlaylistInfo:Landroid/widget/TextView;

    const-string v2, "%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTimeIsApproximate:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->ABOUT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v4, ""

    :goto_1
    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-wide v6, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTime:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 146
    invoke-static {v6, v7, v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getApproximateTimeDurationAsString(JZ)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 144
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_PlaylistInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->_PlaylistName:Landroid/widget/TextView;

    const v1, 0x7f1002da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    return-void
.end method
