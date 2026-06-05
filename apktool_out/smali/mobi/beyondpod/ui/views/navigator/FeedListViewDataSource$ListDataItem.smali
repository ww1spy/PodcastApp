.class public Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;
.super Ljava/lang/Object;
.source "FeedListViewDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListDataItem"
.end annotation


# instance fields
.field public Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

.field public Feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method public constructor <init>(Lmobi/beyondpod/rsscore/categories/FeedCategory;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    .line 44
    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedListViewDataSource$ListDataItem;->Feed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method
