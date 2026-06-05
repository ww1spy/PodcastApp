.class public Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;
.super Lcom/mobeta/android/dslv/DragSortListView;
.source "ReorderCategoriesListView.java"

# interfaces
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$IReorderCategoriesListViewOwner;
    }
.end annotation


# instance fields
.field private _Adapter:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

.field private _DropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private _InfoCardHeaderView:Landroid/view/View;

.field _Owner:Landroid/support/v4/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$1;-><init>(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_DropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->setTextFilterEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/mobeta/android/dslv/DragSortListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$1;-><init>(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_DropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_InfoCardHeaderView:Landroid/view/View;

    return-object p0
.end method

.method private refreshContent()V
    .locals 4

    .line 109
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/Feed;

    .line 111
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v2

    sget-object v3, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v1

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {v1, v2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 119
    :goto_0
    new-instance v1, Lmobi/beyondpod/rsscore/categories/CategoryList;

    invoke-direct {v1}, Lmobi/beyondpod/rsscore/categories/CategoryList;-><init>()V

    if-eqz v0, :cond_2

    .line 120
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilter()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilterNoUncategorized()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v0

    .line 120
    :goto_1
    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/categories/CategoryList;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->setCategories(Lmobi/beyondpod/rsscore/categories/CategoryList;)V

    return-void
.end method

.method private setCategories(Lmobi/beyondpod/rsscore/categories/CategoryList;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->setCategories(Lmobi/beyondpod/rsscore/categories/CategoryList;)V

    :cond_0
    return-void
.end method

.method private showHowToUseDragDropCard()V
    .locals 7

    const/16 v0, 0x8

    .line 148
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v3, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v3}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    .line 152
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    const v0, 0x7f0801ef

    .line 154
    iput v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->ImageResourceId:I

    .line 156
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0x8

    const/4 v5, 0x2

    new-instance v6, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$2;

    invoke-direct {v6, p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView$2;-><init>(Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    .line 171
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 172
    invoke-virtual {v0, v2, v3, v3}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_InfoCardHeaderView:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_InfoCardHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 174
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_InfoCardHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 69
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_Owner:Landroid/support/v4/app/Fragment;

    .line 70
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    .line 71
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_DropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 73
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f0c008e

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 75
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->showHowToUseDragDropCard()V

    .line 77
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onAfterDeactivate()V
    .locals 2

    .line 93
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesViewAdapter;->clearContent()V

    :cond_0
    return-void
.end method

.method public onBeforeActivate()V
    .locals 2

    .line 100
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 102
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->refreshContent()V

    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 128
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 130
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/ReorderCategoriesListView;->refreshContent()V

    :cond_1
    return-void
.end method
