.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$3;
.super Ljava/lang/Object;
.source "MyEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$3;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 448
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    return-object p1
.end method

.method public mapToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 439
    instance-of v0, p1, Lmobi/beyondpod/rsscore/Track;

    if-eqz v0, :cond_0

    .line 440
    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
