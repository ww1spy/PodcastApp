.class public Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;
.super Landroid/widget/LinearLayout;
.source "PublishedEpisodesHeader.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;


# static fields
.field private static final CONFIGURE:Ljava/lang/String;

.field private static final DISABLED:Ljava/lang/String;

.field private static final MAX_S:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PublishedEpisodesHeader"

.field private static final THIS_FEED_IS_S_DAYS_OLD:Ljava/lang/String;


# instance fields
.field private _ActiveContent:Landroid/view/View;

.field private _BottomSpacer:Landroid/view/View;

.field _CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field private _EpisodeGroup:Landroid/view/View;

.field _FeedName:Landroid/widget/TextView;

.field _FeedPodcasts:Landroid/widget/TextView;

.field private _ImageHeight:I

.field _ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

.field private _ImageWidth:I

.field private _LastFeed:Ljava/lang/String;

.field _LastUpdatedDate:Landroid/widget/TextView;

.field _NextUpdateDate:Landroid/widget/TextView;

.field private _OpenFeedSettings:Landroid/widget/ImageView;

.field private _Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

.field _Progress:Landroid/view/View;

.field _ToggleExtras:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1001a6

    .line 67
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->MAX_S:Ljava/lang/String;

    const v0, 0x7f1001a9

    .line 69
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->DISABLED:Ljava/lang/String;

    const v0, 0x7f1001a8

    .line 70
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->CONFIGURE:Ljava/lang/String;

    const v0, 0x7f1001b2

    .line 72
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->THIS_FEED_IS_S_DAYS_OLD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 82
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageWidth:I

    .line 83
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 82
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageWidth:I

    .line 83
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 82
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageWidth:I

    .line 83
    iput p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageHeight:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;
    .locals 0

    .line 64
    iget-object p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 0

    .line 64
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->getFirstScheduledTask()Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->updateBackground(Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    return-void
.end method

.method private getFirstScheduledTask()Lmobi/beyondpod/schedulercore/ScheduledTask;
    .locals 9

    .line 402
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    .line 408
    invoke-static {v0}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v0

    .line 409
    invoke-static {v1}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v1

    .line 410
    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v2}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getScheduledTaskForCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v2

    .line 412
    new-instance v3, Ljava/util/Date;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 413
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 414
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 416
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 418
    iget-boolean v5, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lmobi/beyondpod/schedulercore/ScheduledTask;->existsOnDevice()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 420
    iget-object v3, v0, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v3}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v3

    .line 421
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    .line 424
    iget-boolean v5, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lmobi/beyondpod/schedulercore/ScheduledTask;->existsOnDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 426
    iget-object v5, v1, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v5}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v6

    .line 427
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 430
    iget-boolean v1, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->existsOnDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 432
    iget-object v1, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v1}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v7

    .line 433
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_3
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v8, v1, v5

    if-nez v8, :cond_4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v1, v5

    if-nez v3, :cond_4

    return-object v0

    .line 440
    :cond_4
    invoke-static {v4}, Lmobi/beyondpod/schedulercore/ScheduleUtils;->getEarliestTask(Ljava/util/ArrayList;)Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v0

    return-object v0
.end method

.method private updateBackground(Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ActiveContent:Landroid/view/View;

    iget p1, p1, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->PrimaryVibrantColor:I

    .line 288
    invoke-static {}, Lmobi/beyondpod/ui/core/ThemeManager;->isDarkTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x5a

    goto :goto_0

    :cond_0
    const/16 v1, 0xb4

    :goto_0
    const/16 v2, 0x50

    .line 287
    invoke-static {p1, v2, v1}, Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;->normalizeColor(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public initialize(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 223
    new-instance p1, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    invoke-direct {p1, p2}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    return-void
.end method

.method public notifyCardSizeChanged()V
    .locals 3

    .line 229
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 230
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070069

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 232
    :goto_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_BottomSpacer:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 109
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageHeight:I

    .line 110
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageWidth:I

    const v0, 0x7f0900f2

    .line 112
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_Progress:Landroid/view/View;

    const v0, 0x7f0900f3

    .line 113
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_FeedName:Landroid/widget/TextView;

    const v0, 0x7f0900f1

    .line 114
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_LastUpdatedDate:Landroid/widget/TextView;

    const v0, 0x7f0900f4

    .line 115
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_NextUpdateDate:Landroid/widget/TextView;

    const v0, 0x7f0900ec

    .line 116
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_FeedPodcasts:Landroid/widget/TextView;

    const v0, 0x7f090291

    .line 117
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ToggleExtras:Landroid/widget/ImageView;

    const v0, 0x7f0901b0

    .line 118
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_OpenFeedSettings:Landroid/widget/ImageView;

    const v0, 0x7f09002a

    .line 119
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ActiveContent:Landroid/view/View;

    const v0, 0x7f09014b

    .line 120
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_BottomSpacer:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_OpenFeedSettings:Landroid/widget/ImageView;

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$1;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_OpenFeedSettings:Landroid/widget/ImageView;

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$2;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0900f5

    .line 148
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$3;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900ed

    .line 185
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_EpisodeGroup:Landroid/view/View;

    .line 186
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_EpisodeGroup:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ToggleExtras:Landroid/widget/ImageView;

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$5;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$5;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->notifyCardSizeChanged()V

    return-void
.end method

.method public refreshContent()V
    .locals 6

    .line 300
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 306
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_LastUpdatedDate:Landroid/widget/TextView;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->hasUnsynchronizedGoogleReaderItems()Z

    move-result v2

    if-nez v2, :cond_2

    .line 309
    :cond_1
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->hasUploadPendingChanges()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const v2, 0x7f0800e6

    goto :goto_0

    :cond_3
    move v2, v0

    .line 308
    :goto_0
    invoke-virtual {v1, v2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 311
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_FeedName:Landroid/widget/TextView;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    if-nez v1, :cond_4

    .line 317
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_LastUpdatedDate:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_NextUpdateDate:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_FeedPodcasts:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 326
    :cond_4
    :try_start_0
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->getDaysOld()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_5

    .line 328
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_LastUpdatedDate:Landroid/widget/TextView;

    sget-object v4, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->THIS_FEED_IS_S_DAYS_OLD:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->getDaysOld()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 330
    :cond_5
    iget-object v2, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    if-eqz v2, :cond_6

    .line 332
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_LastUpdatedDate:Landroid/widget/TextView;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->LastRetrievalDate:Ljava/util/Date;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :cond_6
    :goto_1
    sget-object v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->CONFIGURE:Ljava/lang/String;

    .line 339
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->getFirstScheduledTask()Lmobi/beyondpod/schedulercore/ScheduledTask;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 342
    iget-boolean v1, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v1, :cond_8

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->existsOnDevice()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 345
    :cond_7
    iget-object v1, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->event:Lmobi/beyondpod/schedulercore/Event;

    invoke-virtual {v1}, Lmobi/beyondpod/schedulercore/Event;->startTime()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/DateTime;->formatDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 343
    :cond_8
    :goto_2
    sget-object v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->DISABLED:Ljava/lang/String;

    .line 348
    :cond_9
    :goto_3
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x21

    if-eqz v2, :cond_a

    .line 350
    iget-boolean v5, v2, Lmobi/beyondpod/schedulercore/ScheduledTask;->active:Z

    if-eqz v5, :cond_a

    invoke-virtual {v2}, Lmobi/beyondpod/schedulercore/ScheduledTask;->existsOnDevice()Z

    move-result v2

    if-nez v2, :cond_b

    .line 351
    :cond_a
    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v4, v2, v0, v5, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 354
    :cond_b
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_NextUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->hasPodcasts()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 359
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_EpisodeGroup:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v2, "%s "

    .line 361
    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v5

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v4

    if-eq v4, v3, :cond_f

    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 365
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    goto :goto_5

    .line 375
    :cond_c
    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_e

    iget-object v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 376
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_d

    goto :goto_4

    .line 387
    :cond_d
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_FeedPodcasts:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 378
    :cond_e
    :goto_4
    sget-object v4, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->MAX_S:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumberPodcastToDownload()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 381
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 384
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_FeedPodcasts:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 367
    :cond_f
    :goto_5
    sget-object v4, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->MAX_S:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getKeepAtMostPodcasts()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 370
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 373
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_FeedPodcasts:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 391
    :cond_10
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_EpisodeGroup:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 396
    sget-object v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->TAG:Ljava/lang/String;

    const-string v2, "failed to refresh ContentListView header"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    return-void
.end method

.method public setCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 6

    .line 237
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 239
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/volley/FadingNetworkImageViewFeed;->generateFeedImageUrl(Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {}, Lmobi/beyondpod/ui/core/ThemeManager;->isDarkTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ActiveContent:Landroid/view/View;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0600c7

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 247
    :cond_0
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 249
    invoke-static {}, Lmobi/beyondpod/ui/views/base/colormatcher/DominantColorCalculator;->getDefaultColors()Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->updateBackground(Lmobi/beyondpod/ui/views/base/colormatcher/ColorScheme;)V

    return-void

    .line 253
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_LastFeed:Ljava/lang/String;

    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 258
    :cond_2
    iput-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_LastFeed:Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    new-instance v3, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$6;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$6;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V

    iget v4, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageWidth:I

    iget v5, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_ImageHeight:I

    invoke-virtual/range {v0 .. v5}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->get(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;Lcom/android/volley/toolbox/ImageLoader$ImageListener;II)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 282
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->refreshContent()V

    return-void
.end method

.method public toggleProgressIndicator(Z)V
    .locals 1

    .line 445
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_Progress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
