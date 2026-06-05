.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$11;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 1340
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$11;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1353
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->getItemById(Ljava/lang/String;)Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    move-result-object p1

    return-object p1
.end method

.method public mapToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1344
    instance-of v0, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    .line 1345
    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
