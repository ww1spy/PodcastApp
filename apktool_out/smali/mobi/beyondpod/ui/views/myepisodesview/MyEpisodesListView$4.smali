.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;
.super Ljava/lang/Object;
.source "MyEpisodesListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->reloadContent()V
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

    .line 486
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 490
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 493
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->reloadContent()V

    .line 496
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->refreshActiveViewTitle()V

    .line 498
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocation:Ljava/lang/String;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->deserialize(Ljava/lang/String;Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getPositionForItemID(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;)I

    move-result v0

    .line 503
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setSelection(I)V

    .line 504
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ScrollLocation:Ljava/lang/String;

    .line 508
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$4;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->enableDisablePullToRefresh(Z)V

    return-void
.end method
