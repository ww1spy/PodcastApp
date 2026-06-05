.class Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SearchResultFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    .line 174
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 175
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p3, p3, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-virtual {p3}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 176
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_ResultView:Lmobi/beyondpod/ui/views/base/BPRecyclerView;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/base/BPRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p2

    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {p3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->getFooterCount()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int/2addr p2, v0

    if-lez p2, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_3

    if-ne p1, p2, :cond_3

    .line 179
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-boolean p1, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_NoMoreResultsExist:Z

    if-nez p1, :cond_3

    .line 182
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_SearchingLock:Ljava/lang/Object;

    monitor-enter p1

    .line 184
    :try_start_0
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->isSearching()Z

    move-result p2

    if-nez p2, :cond_1

    .line 186
    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iput-boolean v0, p3, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_IsSearching:Z

    .line 187
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    .line 191
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget p2, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_CurrentPage:I

    add-int/2addr p2, v0

    iput p2, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_CurrentPage:I

    .line 193
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget p1, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_CurrentPage:I

    const/16 p2, 0x14

    if-lt p1, p2, :cond_2

    .line 194
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iput-boolean v0, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_NoMoreResultsExist:Z

    .line 196
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iput-boolean v0, p1, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_IsSearching:Z

    .line 197
    iget-object p1, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget-object p2, p2, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_Query:Ljava/lang/String;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase$1;->this$0:Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;

    iget p3, p3, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->_CurrentPage:I

    invoke-virtual {p1, p2, v0, p3}, Lmobi/beyondpod/ui/views/impexp/SearchResultFragmentBase;->performSearch(Ljava/lang/String;ZI)V

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 187
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_3
    :goto_1
    return-void
.end method
