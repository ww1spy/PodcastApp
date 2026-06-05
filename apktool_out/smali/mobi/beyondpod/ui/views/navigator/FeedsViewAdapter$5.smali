.class Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$5;
.super Ljava/lang/Object;
.source "FeedsViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->buildFeedViewItem(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->access$400(Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;)Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->editFeed(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method
