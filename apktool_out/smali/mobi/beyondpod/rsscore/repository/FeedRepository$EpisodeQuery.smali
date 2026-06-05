.class public Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;
.super Ljava/lang/Object;
.source "FeedRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/repository/FeedRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpisodeQuery"
.end annotation


# instance fields
.field private final feedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field private final feedFilter:Lmobi/beyondpod/rsscore/Feed;

.field private final mediaFilter:I

.field public resultList:Lmobi/beyondpod/rsscore/TrackList;

.field public totalCount:I

.field public visibleCount:I


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/Feed;ILmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->feedFilter:Lmobi/beyondpod/rsscore/Feed;

    .line 209
    iput p2, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->mediaFilter:I

    .line 210
    iput-object p3, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->feedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)Lmobi/beyondpod/rsscore/categories/FeedCategory;
    .locals 0

    .line 204
    iget-object p0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->feedCategory:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 204
    iget-object p0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->feedFilter:Lmobi/beyondpod/rsscore/Feed;

    return-object p0
.end method

.method static synthetic access$200(Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;)I
    .locals 0

    .line 204
    iget p0, p0, Lmobi/beyondpod/rsscore/repository/FeedRepository$EpisodeQuery;->mediaFilter:I

    return p0
.end method
