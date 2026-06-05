.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$7;
.super Ljava/lang/Object;
.source "MyEpisodesListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

.field final synthetic val$track:Lmobi/beyondpod/rsscore/Track;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;Lmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$7;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$7;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 815
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$7;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$7;->val$track:Lmobi/beyondpod/rsscore/Track;

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$700(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;Lmobi/beyondpod/rsscore/Track;Landroid/view/MenuItem;)V

    const/4 p1, 0x1

    return p1
.end method
