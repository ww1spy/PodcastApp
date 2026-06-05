.class public Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;
.super Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;
.source "MyEpisodesListViewAdapter.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;


# static fields
.field private static final ALL_EPISODES:Ljava/lang/String;

.field public static final SCOPE_CURRENT_CATEGORY:I = 0x1

.field private static final THIS:Ljava/lang/String;

.field private static _DefaultDividerColor:I


# instance fields
.field private _CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field private _FeedFilter:Lmobi/beyondpod/rsscore/Feed;

.field private _Handler:Landroid/os/Handler;

.field private _Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

.field private _TotalEpisodeCount:I

.field private _VisibleEpisodeCount:I

.field _prefetchImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1002eb

    .line 64
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->THIS:Ljava/lang/String;

    const v0, 0x7f1000d4

    .line 65
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->ALL_EPISODES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V
    .locals 3

    const/4 v0, 0x7

    .line 88
    new-array v0, v0, [Ljava/util/UUID;

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->AdapterID:Ljava/util/UUID;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardGuidedTour;->AdapterID:Ljava/util/UUID;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter;-><init>([Ljava/util/UUID;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Handler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter$1;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_prefetchImageListener:Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 82
    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    .line 91
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 93
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06002a

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    sput p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_DefaultDividerColor:I

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->reloadContentInternal()V

    return-void
.end method

.method private addEpisodeSection(Lmobi/beyondpod/rsscore/TrackList;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/TrackList;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 342
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 346
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 347
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 349
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 350
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 352
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->episodeCardSize()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 367
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    move v7, v0

    move v8, v1

    goto :goto_1

    .line 360
    :pswitch_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 362
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v8, v0

    move v7, v1

    goto :goto_1

    .line 355
    :pswitch_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 372
    :goto_1
    new-instance v0, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-direct {v4, v1, v2, p1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;Ljava/util/List;)V

    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 373
    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0a001b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/base/columnlistview/MultiItemRowListAdapter$MultiItemRowChildAdapter;IIII)V

    .line 372
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addListEmptySection(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 379
    iget v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_TotalEpisodeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 381
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 383
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f1002dd

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v4}, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-nez v0, :cond_2

    .line 392
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v6, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 393
    invoke-virtual {v6}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1002de

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-nez v8, :cond_1

    sget-object v8, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->THIS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 394
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v8

    :goto_0
    aput-object v8, v2, v1

    .line 393
    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v5, v1, v4}, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 398
    :cond_2
    new-instance v3, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v4}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v6, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 399
    invoke-virtual {v6}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f1002df

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v1

    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1002e3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, ""

    :goto_1
    invoke-direct {v3, v4, v5, v1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 406
    :cond_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f030025

    .line 407
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveMediaFilter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 406
    invoke-static {v0, v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->findIndexInNumArray(Landroid/content/Context;ILjava/lang/Object;)I

    move-result v0

    .line 408
    iget-object v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1002e0

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 409
    invoke-virtual {v5}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v0

    aput-object v0, v2, v1

    .line 408
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 412
    invoke-virtual {v4}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/SectionEmptyListAdapter$IEpmtyListAdapterOwner;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private generateAdCard(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 182
    invoke-static {}, Lmobi/beyondpod/ui/core/AdManager;->areAdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private generateHomeScreenItems(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 217
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder;->build()Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;->numEpisodes()I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_TotalEpisodeCount:I

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_VisibleEpisodeCount:I

    .line 223
    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_VisibleEpisodeCount:I

    if-nez v1, :cond_0

    .line 225
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->addListEmptySection(Ljava/util/List;)V

    return-void

    .line 229
    :cond_0
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;

    .line 231
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$HomeScreenSections;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    new-instance v3, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v4}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->SectionName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v2, v2, Lmobi/beyondpod/ui/views/myepisodesview/HomeScreenContentBuilder$SectionInfo;->EpisodeBucket:Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p0, v2, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->addEpisodeSection(Lmobi/beyondpod/rsscore/TrackList;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private generateInfoCards(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager;->generateInfoCardIfNeeded(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private generateItemsGroupedByDate(Lmobi/beyondpod/rsscore/TrackList;ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/TrackList;",
            "I",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 287
    new-instance v0, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {v0, p2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 290
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeBands;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/TimeBands;-><init>()V

    .line 292
    new-instance v1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 294
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, -0x1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmobi/beyondpod/rsscore/Track;

    .line 296
    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Track;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 297
    invoke-virtual {v0, p2}, Lmobi/beyondpod/rsscore/helpers/TimeBands;->getDateBand(Ljava/util/Calendar;)I

    move-result v5

    if-eq v3, v5, :cond_3

    .line 300
    invoke-direct {p0, v1, p3}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->addEpisodeSection(Lmobi/beyondpod/rsscore/TrackList;Ljava/util/List;)V

    packed-switch v5, :pswitch_data_0

    const v3, 0x7f100145

    goto :goto_1

    :pswitch_0
    const v3, 0x7f100143

    goto :goto_1

    :pswitch_1
    const v3, 0x7f100144

    goto :goto_1

    :pswitch_2
    if-ne v3, v2, :cond_0

    const v3, 0x7f100148

    goto :goto_1

    :cond_0
    const v3, 0x7f100142

    goto :goto_1

    :pswitch_3
    if-ne v3, v2, :cond_1

    const v3, 0x7f100146

    goto :goto_1

    :cond_1
    const v3, 0x7f100140

    goto :goto_1

    :pswitch_4
    if-ne v3, v2, :cond_2

    const v3, 0x7f100147

    goto :goto_1

    :cond_2
    const v3, 0x7f100141

    goto :goto_1

    :pswitch_5
    const v3, 0x7f100149

    .line 329
    :goto_1
    new-instance v6, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;

    iget-object v7, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v7}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v8}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3}, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    move v3, v5

    .line 334
    :cond_3
    invoke-virtual {v1, v4}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_4
    invoke-direct {p0, v1, p3}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->addEpisodeSection(Lmobi/beyondpod/rsscore/TrackList;Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateItemsGroupedByFeedUsingFeedSort(Lmobi/beyondpod/rsscore/TrackList;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/TrackList;",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 247
    new-instance v0, Lmobi/beyondpod/rsscore/FeedList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/FeedList;-><init>()V

    .line 250
    new-instance v1, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 253
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    .line 255
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/FeedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/FeedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    :cond_1
    new-instance v1, Lmobi/beyondpod/rsscore/FeedSorter;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getFeedsSortOrder()I

    move-result v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/FeedSorter;-><init>(I)V

    .line 261
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 263
    new-instance v1, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>()V

    .line 267
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/Feed;

    .line 269
    new-instance v3, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v3}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 271
    new-instance v4, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;

    iget-object v5, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v5}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lmobi/beyondpod/ui/views/myepisodesview/SectionHeaderAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmobi/beyondpod/rsscore/Track;

    .line 275
    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v6

    invoke-virtual {v6, v2}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    invoke-virtual {v3, v5}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 279
    :cond_3
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result v2

    iput v2, v1, Lmobi/beyondpod/rsscore/TrackSorter;->SortOrder:I

    .line 280
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    invoke-direct {p0, v3, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->addEpisodeSection(Lmobi/beyondpod/rsscore/TrackList;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private generateItemsUsingDefaultSortSettings(Lmobi/beyondpod/rsscore/TrackList;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/TrackList;",
            "I",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 241
    new-instance v0, Lmobi/beyondpod/rsscore/TrackSorter;

    invoke-direct {v0, p2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 242
    invoke-direct {p0, p1, p3}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->addEpisodeSection(Lmobi/beyondpod/rsscore/TrackList;Ljava/util/List;)V

    return-void
.end method

.method private generateMyEpisodeItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;",
            ">;)V"
        }
    .end annotation

    .line 188
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveMediaFilter()I

    move-result v2

    iget-object v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-direct {v0, v1, v2, v3}, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;-><init>(Lmobi/beyondpod/rsscore/Feed;ILmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 189
    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->queryEpisodes(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)V

    .line 190
    iget v1, v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->totalCount:I

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_TotalEpisodeCount:I

    .line 191
    iget v1, v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->visibleCount:I

    iput v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_VisibleEpisodeCount:I

    .line 193
    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_VisibleEpisodeCount:I

    if-nez v1, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->addListEmptySection(Ljava/util/List;)V

    goto :goto_1

    .line 199
    :cond_0
    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/myepisodesview/SectionMyEpisodesHeaderAdapter$IMyEpisodesHeaderAdapterOwner;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->generateAdCard(Ljava/util/List;)V

    .line 203
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result v1

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getPodcastsSortOrder()I

    move-result v1

    .line 206
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getGroupByFeedIfShowingCategoryTracks()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    if-nez v2, :cond_2

    .line 207
    iget-object v0, v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->resultList:Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p0, v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->generateItemsGroupedByFeedUsingFeedSort(Lmobi/beyondpod/rsscore/TrackList;Ljava/util/List;)V

    goto :goto_1

    .line 211
    :cond_2
    iget-object v0, v0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->resultList:Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p0, v0, v1, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->generateItemsUsingDefaultSortSettings(Lmobi/beyondpod/rsscore/TrackList;ILjava/util/List;)V

    :goto_1
    return-void
.end method

.method private pauseAds()V
    .locals 1

    .line 580
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getSection(Ljava/util/UUID;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 582
    check-cast v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->onPause()V

    :cond_0
    return-void
.end method

.method private reloadContentInternal()V
    .locals 3

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->generateInfoCards(Ljava/util/List;)V

    .line 153
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    if-nez v1, :cond_0

    .line 154
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->generateHomeScreenItems(Ljava/util/List;)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->generateMyEpisodeItems(Ljava/util/List;)V

    .line 158
    :goto_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->setSections(Ljava/util/List;)V

    .line 160
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_VisibleEpisodeCount:I

    iget v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_TotalEpisodeCount:I

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->onAdapterDataLoaded(II)V

    .line 164
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->enableFastScrollIfNeeded()V

    return-void
.end method

.method private resumeAds()V
    .locals 1

    .line 587
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getSection(Ljava/util/UUID;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    check-cast v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->onResume()V

    :cond_0
    return-void
.end method


# virtual methods
.method public enableFastScrollIfNeeded()V
    .locals 0

    return-void
.end method

.method generatePlaylist(Lmobi/beyondpod/rsscore/Track;)Lmobi/beyondpod/rsscore/TrackList;
    .locals 5

    .line 428
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 431
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 433
    instance-of v4, v3, Lmobi/beyondpod/rsscore/Track;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 436
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_0

    .line 439
    check-cast v3, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    invoke-virtual {v0, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method getAllEpisodes()Lmobi/beyondpod/rsscore/TrackList;
    .locals 4

    .line 510
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 512
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 514
    instance-of v3, v2, Lmobi/beyondpod/rsscore/Track;

    if-nez v3, :cond_0

    goto :goto_0

    .line 517
    :cond_0
    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getAllPlayedEpisodes()Lmobi/beyondpod/rsscore/TrackList;
    .locals 4

    .line 462
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 464
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 466
    instance-of v3, v2, Lmobi/beyondpod/rsscore/Track;

    if-nez v3, :cond_1

    goto :goto_0

    .line 469
    :cond_1
    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCurrentTracksSizeOnDisk()Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;
    .locals 9

    .line 525
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;-><init>()V

    .line 527
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 529
    instance-of v3, v2, Lmobi/beyondpod/rsscore/Track;

    if-eqz v3, :cond_0

    .line 531
    iget-wide v3, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v5

    add-long v7, v3, v5

    iput-wide v7, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    .line 533
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->contentType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 535
    iget-wide v3, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTime:J

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v5

    add-long v7, v3, v5

    iput-wide v7, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTime:J

    .line 536
    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    .line 537
    iput-boolean v2, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->totalTimeIsApproximate:Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 566
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-nez v0, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->color()I

    move-result v0

    if-nez v0, :cond_1

    .line 570
    sget v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_DefaultDividerColor:I

    :cond_1
    return v0

    .line 567
    :cond_2
    :goto_0
    sget v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_DefaultDividerColor:I

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .line 547
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 548
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->ALL_EPISODES:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method getLargestPodcasts()Lmobi/beyondpod/rsscore/TrackList;
    .locals 4

    .line 494
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 496
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 498
    instance-of v3, v2, Lmobi/beyondpod/rsscore/Track;

    if-nez v3, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 504
    :cond_1
    new-instance v1, Lmobi/beyondpod/rsscore/TrackSorter;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getNumEpisodes()I
    .locals 1

    .line 560
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method getOldestEpisodes()Lmobi/beyondpod/rsscore/TrackList;
    .locals 4

    .line 478
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 480
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 482
    instance-of v3, v2, Lmobi/beyondpod/rsscore/Track;

    if-nez v3, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    check-cast v2, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v0, v2}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 488
    :cond_1
    new-instance v1, Lmobi/beyondpod/rsscore/TrackSorter;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/TrackSorter;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method getTotalEpisodeCount()I
    .locals 1

    .line 418
    iget v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_TotalEpisodeCount:I

    return v0
.end method

.method public getTotalSize()Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getCurrentTracksSizeOnDisk()Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    move-result-object v0

    return-object v0
.end method

.method getVisibleEpisodeCount()I
    .locals 1

    .line 423
    iget v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_VisibleEpisodeCount:I

    return v0
.end method

.method hasPlayedEpisodes()Z
    .locals 3

    .line 448
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getAllSectionItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 450
    instance-of v2, v1, Lmobi/beyondpod/rsscore/Track;

    if-nez v2, :cond_1

    goto :goto_0

    .line 453
    :cond_1
    check-cast v1, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 594
    sget-object v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->AdapterID:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getSection(Ljava/util/UUID;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ISectionedAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    check-cast v0, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/SectionAdAdapter;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onAfterActivate()V
    .locals 0

    .line 601
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->resumeAds()V

    return-void
.end method

.method public onAfterDeactivate()V
    .locals 0

    .line 606
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->pauseAds()V

    return-void
.end method

.method public refreshContent()V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method reloadContent()V
    .locals 5

    .line 98
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 99
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    .line 103
    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 106
    iget-object v4, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    if-eq v4, v1, :cond_0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne v4, v0, :cond_3

    iget-object v4, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    if-eq v4, v1, :cond_0

    .line 108
    :cond_3
    :goto_0
    iput-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    .line 111
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_FeedFilter:Lmobi/beyondpod/rsscore/Feed;

    if-nez v1, :cond_4

    .line 112
    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    goto :goto_1

    .line 114
    :cond_4
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryNull:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_CategoryFilter:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 116
    :goto_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 118
    iput v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_TotalEpisodeCount:I

    .line 119
    iput v3, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_VisibleEpisodeCount:I

    .line 120
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->setSections(Ljava/util/List;)V

    if-nez v2, :cond_5

    .line 126
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->reloadContentInternal()V

    goto :goto_2

    .line 130
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->refreshContent()V

    .line 131
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->_Handler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter$2;-><init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method
