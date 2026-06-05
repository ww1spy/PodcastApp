.class public Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;
.super Landroid/support/v4/app/Fragment;
.source "NavigatorFragment.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$IReorderCategoriesListViewOwner;
.implements Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NavigatorFragment"


# instance fields
.field public FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

.field private _ReorderCategories:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public autoExpandPlayerOnNextPlay()V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;->autoExpandPlayerOnNextPlay()V

    :cond_0
    return-void
.end method

.method public doneReordering()V
    .locals 1

    .line 124
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->cancelActionMode()V

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->switchToReorderCategoriesMode(Z)V

    return-void
.end method

.method public isReorderingCategories()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->_ReorderCategories:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDrawerClosed()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->doneReordering()V

    .line 112
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshHeader(Z)V

    return-void
.end method

.method public notifyDrawerOpened()V
    .locals 2

    .line 117
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshFeeds()V

    .line 118
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshHeader(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const p3, 0x7f0c008d

    .line 76
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090101

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    const p2, 0x7f0901f6

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->_ReorderCategories:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 106
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ensureSelection()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->onAfterDeactivate()V

    .line 88
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->onBeforeActivate()V

    .line 95
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->onAfterActivate()V

    .line 96
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->isReorderingCategories()Z

    move-result v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->switchToReorderCategoriesMode(Z)V

    .line 97
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    invoke-interface {v0, p1, p2, p3}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    :cond_0
    return-void
.end method

.method public requestNavigatorClose()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;->requestDrawersClose()V

    :cond_0
    return-void
.end method

.method public restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 1

    .line 63
    iget-object v0, p1, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_0

    .line 64
    iget-object p1, p1, Lmobi/beyondpod/ui/core/MasterViewState;->feedsViewRootFeed:Lmobi/beyondpod/rsscore/Feed;

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 68
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v0, p1, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->initialize(Lmobi/beyondpod/rsscore/Feed;Landroid/support/v4/app/Fragment;)V

    .line 70
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->_ReorderCategories:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-virtual {p1, p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->initialize(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;->selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)V

    return-void
.end method

.method public switchToReorderCategoriesMode(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 140
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->_ReorderCategories:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->onBeforeActivate()V

    .line 142
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->_ReorderCategories:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->_ReorderCategories:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-virtual {p1, v1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->setVisibility(I)V

    .line 147
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->FeedsList:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/NavigatorFragment;->_ReorderCategories:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->onAfterDeactivate()V

    :goto_0
    return-void
.end method
