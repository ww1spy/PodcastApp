.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$8;
.super Ljava/lang/Object;
.source "MyEpisodesListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$8;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 825
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$8;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_PauseRefresh:Z

    .line 826
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$8;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->refreshContent()V

    return-void
.end method
