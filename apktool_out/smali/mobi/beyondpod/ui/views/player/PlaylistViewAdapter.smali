.class public Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlaylistViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;,
        Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;
    }
.end annotation


# static fields
.field private static sInfoTextFormatter:Ljava/util/Formatter;

.field private static sInfoTextStringBuilder:Ljava/lang/StringBuilder;


# instance fields
.field private _ImageHeight:I

.field private _ImageWidth:I

.field private _Inflater:Landroid/view/LayoutInflater;

.field private _Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private _Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    .line 53
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/player/PlaylistListView;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    .line 62
    iput-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    .line 64
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ed

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_ImageWidth:I

    .line 65
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ec

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_ImageHeight:I

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;)Lmobi/beyondpod/ui/views/player/PlaylistListView;
    .locals 0

    .line 50
    iget-object p0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    return-object p0
.end method

.method private assignTrackPrimaryImage(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;Lmobi/beyondpod/rsscore/Track;)V
    .locals 6

    .line 216
    iget-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryImage:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v1

    invoke-static {v1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewTrack;->getDefaultImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setErrorImageResId(I)V

    .line 218
    iget-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryImage:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->playedAsFraction()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setProgress(I)V

    .line 220
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryImage:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setTrack(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryImage:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFeed(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/ui/core/volley/ImageLoader;)V

    .line 227
    :goto_0
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result v0

    .line 229
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_4

    if-ne v0, v2, :cond_1

    const v0, 0x7f080140

    goto :goto_2

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const v0, 0x7f08013f

    goto :goto_2

    :cond_3
    :goto_1
    const v0, 0x7f080143

    goto :goto_2

    :cond_4
    move v0, v3

    .line 241
    :goto_2
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 242
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v4

    .line 243
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result p2

    const/4 v5, 0x4

    if-ne p2, v5, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    const p2, 0x7f080146

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    const p2, 0x7f080147

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    const p2, 0x7f08013e

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_9

    const p2, 0x7f080145

    goto :goto_4

    :cond_9
    move p2, v3

    .line 255
    :goto_4
    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->duration:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v3, p2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method private buildViewItem(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;Lmobi/beyondpod/rsscore/Track;Landroid/view/ViewGroup;)V
    .locals 6

    .line 183
    iget-object p3, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->assignTrackPrimaryImage(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;Lmobi/beyondpod/rsscore/Track;)V

    .line 186
    iget-object p3, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p3}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lmobi/beyondpod/ui/views/base/UIUtils;->formatEpisodeTimeAsRemaining(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)Ljava/lang/String;

    move-result-object p3

    .line 188
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTimeToday(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object p3, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->duration:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    :cond_0
    sget-object v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->sInfoTextStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 197
    iget-object v2, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->duration:Landroid/widget/TextView;

    sget-object v3, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->sInfoTextFormatter:Ljava/util/Formatter;

    const-string v4, "%s \u2022 %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object p3, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->duration:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :goto_0
    iget-object p3, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->overflow:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 205
    iget-object p3, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->overflow:Landroid/widget/ImageView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->isMultiSelecting()Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    iget-object p3, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->dragDropHandle:Landroid/view/View;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->isMultiSelecting()Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryText:Landroid/widget/TextView;

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f06007f

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    .line 209
    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f060082

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 208
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private generateItemsFromTrackList(Lmobi/beyondpod/rsscore/TrackList;)V
    .locals 4

    .line 311
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    .line 312
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    new-instance v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;-><init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getItemAt(I)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;
    .locals 1

    if-ltz p1, :cond_0

    .line 172
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    return-object p1

    .line 175
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 176
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 261
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentTracksSizeOnDisk()Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;
    .locals 9

    .line 317
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;-><init>()V

    .line 319
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    .line 321
    iget-object v3, v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    if-eqz v3, :cond_0

    .line 323
    iget-wide v3, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    iget-object v5, v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v5

    add-long v7, v3, v5

    iput-wide v7, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    .line 325
    iget-object v3, v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 327
    iget-wide v3, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTime:J

    iget-object v5, v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v5

    add-long v7, v3, v5

    iput-wide v7, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTime:J

    .line 328
    iget-object v2, v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    .line 329
    iput-boolean v2, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTimeIsApproximate:Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getItemAt(I)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getItemAt(I)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 98
    iget-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    if-nez v0, :cond_0

    iget-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getTrackAt(I)Lmobi/beyondpod/rsscore/Track;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 270
    check-cast p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTrackIndex(Lmobi/beyondpod/rsscore/Track;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 341
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 343
    iget-object v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    .line 344
    iget-object v2, v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 111
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getItemAt(I)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 121
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00af

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    :try_start_1
    new-instance p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;

    invoke-direct {p2, v1}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$1;)V

    const v1, 0x7f0901cb

    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryText:Landroid/widget/TextView;

    const v1, 0x7f0901c6

    .line 124
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->duration:Landroid/widget/TextView;

    const v1, 0x7f0901c8

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iput-object v1, p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryImage:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const v1, 0x7f0901c5

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->dragDropHandle:Landroid/view/View;

    .line 128
    iget-object v1, p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryImage:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setFadeInImage(Z)V

    .line 129
    iget-object v1, p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->primaryImage:Lmobi/beyondpod/ui/views/base/ProgressImageView;

    iget v2, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_ImageWidth:I

    iget v3, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_ImageHeight:I

    invoke-virtual {v1, v2, v3}, Lmobi/beyondpod/ui/views/base/ProgressImageView;->setMaxImageSize(II)V

    const v1, 0x7f0901c9

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->overflow:Landroid/widget/ImageView;

    .line 133
    iget-object v1, p2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;->overflow:Landroid/widget/ImageView;

    new-instance v2, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$1;-><init>(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 151
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v0

    move-object v0, p2

    move-object p2, v4

    .line 154
    :goto_0
    :try_start_3
    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0, p2, p1, p3}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->buildViewItem(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$PodcastsViewItem;Lmobi/beyondpod/rsscore/Track;Landroid/view/ViewGroup;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 159
    :cond_2
    :try_start_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0c00ae

    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p2

    .line 164
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getItemAt(I)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;->track:Lmobi/beyondpod/rsscore/Track;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public refresh()V
    .locals 0

    .line 278
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public reloadTracks()V
    .locals 3

    .line 283
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 285
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 288
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/services/player/PlayList;->getTracks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/TrackList;->addAll(Ljava/util/Collection;)Z

    .line 290
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 291
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->generateItemsFromTrackList(Lmobi/beyondpod/rsscore/TrackList;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    new-instance v1, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$ListDataItem;-><init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1

    .line 299
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_1

    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    .line 304
    :goto_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setMaxScrollSpeed(F)V

    .line 306
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
