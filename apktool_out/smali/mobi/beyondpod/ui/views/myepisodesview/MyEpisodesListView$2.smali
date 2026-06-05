.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$2;
.super Ljava/lang/Object;
.source "MyEpisodesListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->initializeView(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;)V
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

    .line 213
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 217
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$300(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)I

    move-result p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$600(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 219
    invoke-static {v1}, Lmobi/beyondpod/rsscore/Configuration;->setActiveMediaFilter(I)V

    .line 220
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    :goto_0
    return-void
.end method
