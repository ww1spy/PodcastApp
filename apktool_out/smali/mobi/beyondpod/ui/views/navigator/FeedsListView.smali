.class public Lmobi/beyondpod/ui/views/navigator/FeedsListView;
.super Landroid/widget/ListView;
.source "FeedsListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/IView;
.implements Landroid/view/View$OnClickListener;
.implements Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;
    }
.end annotation


# static fields
.field private static final MENU_ADD_CATEGORY:I = 0x5

.field private static final MENU_DELETE_CATEGORY:I = 0x1

.field private static final MENU_DELETE_FEED:I = 0x1b

.field private static final MENU_EDIT_CATEGORY:I = 0x2

.field private static final MENU_EDIT_FEED:I = 0x1a

.field private static final MENU_PLAY_EPISODES:I = 0x7

.field private static final MENU_REORDER_CATEGORIES:I = 0x4

.field private static final MENU_SET_UPDATE_SCHEDULE:I = 0x3

.field private static final MENU_UPDATE_FEED:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FeedsListView"

.field public static final VIEW_MENU_GROUP:I = 0x19


# instance fields
.field public volatile ViewIsScrolling:Z

.field _ActionMode:Landroid/support/v7/view/ActionMode;

.field private _Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

.field _Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

.field _Home:Landroid/view/View;

.field private _HomeNormalTypeface:Landroid/graphics/Typeface;

.field private _HomeText:Landroid/widget/TextView;

.field _ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

.field private _InfoCardHeaderView:Landroid/view/View;

.field private _NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

.field _Owner:Landroid/support/v4/app/Fragment;

.field _multiChoiceListener:Landroid/support/v7/view/ActionMode$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ViewIsScrolling:Z

    .line 88
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_multiChoiceListener:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ViewIsScrolling:Z

    .line 88
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_multiChoiceListener:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 81
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ViewIsScrolling:Z

    .line 88
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_multiChoiceListener:Landroid/support/v7/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->reloadFeeds()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/navigator/FeedsListView;Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->handleItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_InfoCardHeaderView:Landroid/view/View;

    return-object p0
.end method

.method private handleItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 0

    if-eqz p2, :cond_3

    .line 273
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result p3

    if-eqz p3, :cond_1

    const p3, 0x7f0900ff

    .line 274
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object p1, p3

    .line 275
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->editFeed(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->canNavigateUp()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getGoUpPlaceholder()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 281
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->openDefaultFeedView(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 284
    :cond_2
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->openDefaultFeedView(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_6

    .line 289
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f090079

    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p1, p3}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->editCategory(Landroid/view/View;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    goto :goto_0

    .line 294
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    if-eqz p1, :cond_5

    .line 295
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    invoke-interface {p1, p3}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    .line 297
    :cond_5
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->requestNavigatorClose()V

    goto :goto_0

    .line 300
    :cond_6
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    iget-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->hasHiddenFeeds()Z

    move-result p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->toggleReadFeeds(Z)V

    .line 302
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->updateHomeSelectionState()V

    return-void
.end method

.method private isInitialized()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadHeaderAndFooter()V
    .locals 4

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setFooterDividersEnabled(Z)V

    .line 196
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setHeaderDividersEnabled(Z)V

    .line 198
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c008e

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    .line 199
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-virtual {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->setOwner(Lmobi/beyondpod/ui/views/navigator/NavigatorHeader$INavigatorHeaderOwner;)V

    .line 200
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-virtual {p0, v1, v2, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 202
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->showHowToExpandCategory()V

    .line 204
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c0092

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    .line 206
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    new-instance v3, Lmobi/beyondpod/ui/views/navigator/FeedsListView$2;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$2;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    const v3, 0x7f09022b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_HomeText:Landroid/widget/TextView;

    .line 216
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_HomeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_HomeNormalTypeface:Landroid/graphics/Typeface;

    .line 218
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->updateHomeSelectionState()V

    .line 220
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    invoke-virtual {p0, v1, v2, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 222
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c008c

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    .line 223
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {v1, p0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->initialize(Lmobi/beyondpod/ui/views/navigator/NavigatorExtras$IExtrasOwner;)V

    .line 225
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {p0, v1, v2, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private openDefaultFeedView(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 337
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    if-nez v0, :cond_0

    goto :goto_1

    .line 342
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 346
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    invoke-interface {v0, p1, v1, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    .line 351
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->requestNavigatorClose()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private reloadFeeds()V
    .locals 1

    .line 445
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->reloadFeeds()V

    :cond_0
    return-void
.end method

.method private requestNavigatorClose()V
    .locals 1

    .line 306
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->requestNavigatorClose()V

    .line 309
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshFeeds()V

    return-void
.end method

.method private showHowToExpandCategory()V
    .locals 7

    const/16 v0, 0x10

    .line 767
    invoke-static {v0}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->isNotificationEnabledFor(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 770
    :cond_0
    new-instance v3, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v3}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    .line 771
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    .line 772
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    const v0, 0x7f0801ee

    .line 773
    iput v0, v3, Lmobi/beyondpod/ui/views/notifications/Message;->ImageResourceId:I

    .line 775
    new-instance v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0x10

    const/4 v5, 0x2

    new-instance v6, Lmobi/beyondpod/ui/views/navigator/FeedsListView$8;

    invoke-direct {v6, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$8;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/Message;IILmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardManager$IInfoCardAdapterOwner;)V

    .line 790
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 791
    invoke-virtual {v0, v2, v3, v3}, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_InfoCardHeaderView:Landroid/view/View;

    .line 792
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_InfoCardHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 793
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_InfoCardHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, v3, v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private updateHomeSelectionState()V
    .locals 4

    .line 467
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_HomeText:Landroid/widget/TextView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_HomeNormalTypeface:Landroid/graphics/Typeface;

    sget-object v2, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 470
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->refreshHeaderImage()V

    return-void
.end method


# virtual methods
.method public cancelActionMode()V
    .locals 1

    .line 718
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public editCategory(Landroid/view/View;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 10

    .line 606
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 609
    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, p1, :cond_1

    sget-object p1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->Unassigned:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    .line 614
    :goto_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result v3

    if-nez v3, :cond_2

    .line 616
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10003e

    new-array v7, v1, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 616
    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2, v4, v1, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 620
    :cond_2
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f100016

    const/4 v5, 0x2

    invoke-interface {v3, v2, v5, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 621
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f10000e

    const/4 v6, 0x3

    invoke-interface {v3, v2, v1, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 622
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const v3, 0x7f100031

    const/4 v4, 0x4

    invoke-interface {p1, v2, v4, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 623
    invoke-static {}, Lmobi/beyondpod/rsscore/categories/CategoryManager;->getCategoriesForFilter()Lmobi/beyondpod/rsscore/categories/CategoryList;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/CategoryList;->size()I

    move-result v3

    if-le v3, v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 624
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v1, 0x5

    const v3, 0x7f100033

    invoke-interface {p1, v2, v6, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 626
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;

    invoke-direct {p1, p0, p2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 661
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public editFeed(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 10

    .line 666
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 668
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result p1

    const/16 v1, 0x19

    if-nez p1, :cond_0

    .line 670
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v2, 0x6

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10003e

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 671
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10001b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 670
    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v2, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 673
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 v2, 0x7

    const/4 v3, 0x4

    const v4, 0x7f10002d

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 676
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v2, 0x1a

    const/4 v3, 0x2

    const v4, 0x7f100017

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 677
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/16 v2, 0x1b

    const/4 v3, 0x3

    const v4, 0x7f100010

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 679
    new-instance p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;

    invoke-direct {p1, p0, p2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 713
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public ensureSelection()V
    .locals 3

    .line 377
    new-instance v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$3;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public expandFirstCategory()V
    .locals 1

    .line 724
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    if-eqz v0, :cond_0

    .line 725
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->expandFirstCategory()V

    :cond_0
    return-void
.end method

.method public feedCount()I
    .locals 1

    .line 586
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->feedCount()I

    move-result v0

    return v0
.end method

.method public getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .line 236
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 601
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    return-object v0
.end method

.method public getViewTitle()Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleOptionsMenu(ILandroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasHiddenFeeds()Z
    .locals 1

    .line 591
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->hasHiddenFeeds()Z

    move-result v0

    return v0
.end method

.method public hasReadFeeds()Z
    .locals 1

    .line 596
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->hasReadFeeds()Z

    move-result v0

    return v0
.end method

.method public initialize(Lmobi/beyondpod/rsscore/Feed;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 167
    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    .line 168
    new-instance p2, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    .line 170
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->loadHeaderAndFooter()V

    .line 172
    new-instance p2, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    .line 174
    iget-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    const/4 p1, 0x0

    .line 176
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setTextFilterEnabled(Z)V

    const/4 p1, 0x1

    .line 177
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setChoiceMode(I)V

    .line 179
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1001ca

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->setIfEmptyText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 182
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    invoke-virtual {p0, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 185
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshHeader(Z)V

    return-void
.end method

.method public isEditingFeeds()Z
    .locals 1

    .line 230
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 520
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 523
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->nextFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    return-object p1
.end method

.method public nextUnreadFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 512
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 515
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->nextUnreadFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    return-object p1
.end method

.method public onActivityDestroy()V
    .locals 2

    .line 578
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->release()V

    .line 580
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->toggleUpdateAnimation(Z)V

    :cond_0
    return-void
.end method

.method public onAfterActivate()V
    .locals 0

    return-void
.end method

.method public onAfterDeactivate()V
    .locals 2

    .line 427
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 428
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public onBeforeActivate()V
    .locals 2

    .line 434
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 435
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 437
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->refreshContent()V

    .line 440
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->reloadFeeds()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 482
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 485
    check-cast p1, Ljava/util/UUID;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 486
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 265
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getHeaderViewsCount()I

    move-result p4

    sub-int p4, p3, p4

    invoke-virtual {p1, p4}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 266
    iget-object p4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getHeaderViewsCount()I

    move-result p5

    sub-int/2addr p3, p5

    invoke-virtual {p4, p3}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getCategoryAtPosition(I)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p3

    .line 267
    invoke-direct {p0, p2, p1, p3}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->handleItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 242
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getHeaderViewsCount()I

    move-result p4

    sub-int p4, p3, p4

    invoke-virtual {p1, p4}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedAtPosition(I)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    .line 243
    iget-object p4, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getHeaderViewsCount()I

    move-result p5

    sub-int/2addr p3, p5

    invoke-virtual {p4, p3}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getCategoryAtPosition(I)Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p3

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isSubFeed()Z

    move-result p5

    if-nez p5, :cond_0

    const p3, 0x7f090100

    .line 247
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 248
    invoke-virtual {p0, p2, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->editFeed(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;)V

    return p4

    :cond_0
    if-eqz p3, :cond_1

    const p1, 0x7f090078

    .line 254
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 255
    invoke-virtual {p0, p1, p3}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->editCategory(Landroid/view/View;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return p4

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 4

    .line 494
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 497
    :cond_0
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v3, 0xc

    if-eq v0, v3, :cond_1

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v3, 0x10

    if-eq v0, v3, :cond_1

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 500
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->reloadFeeds()V

    .line 502
    :cond_2
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v3, 0x8

    if-eq v0, v3, :cond_3

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v3, 0xf

    if-eq v0, v3, :cond_3

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v3, 0xe

    if-ne v0, v3, :cond_4

    .line 504
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshFeeds()V

    .line 506
    :cond_4
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    if-eq v0, v2, :cond_5

    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    if-ne p1, v1, :cond_6

    .line 507
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->syncSelection()V

    :cond_6
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 p1, 0x1

    .line 570
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ViewIsScrolling:Z

    goto :goto_2

    .line 567
    :pswitch_1
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ViewIsScrolling:Z

    goto :goto_2

    .line 548
    :pswitch_2
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ViewIsScrolling:Z

    .line 550
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p2

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p2, v1

    .line 551
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 555
    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 556
    iget-object v3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_InfoCardHeaderView:Landroid/view/View;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 559
    :cond_0
    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    add-int v3, p2, v0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->prefetchItemImages()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTrimMemory()V
    .locals 1

    .line 839
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderFeed;->evictAll()V

    :cond_0
    return-void
.end method

.method public onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 2

    .line 804
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 807
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 809
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$9;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public previousFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 528
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 531
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->previousFeed(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    return-object p1
.end method

.method public refreshFeeds()V
    .locals 2

    .line 452
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$4;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$4;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public refreshHeader(Z)V
    .locals 1

    .line 830
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->toggleUpdateAnimation(Z)V

    .line 833
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_NavigatorHeader:Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorHeader;->updateFeedFilter()V

    :cond_0
    return-void
.end method

.method public rootFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 389
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 357
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->canNavigateUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->removeFooterView(Landroid/view/View;)Z

    .line 360
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->removeHeaderView(Landroid/view/View;)Z

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getFooterViewsCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 365
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {p0, v0, v2, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 367
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 368
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 371
    :cond_2
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->setRootFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 372
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->ensureSelection()V

    return-void
.end method

.method public showHideNewFeeds(Z)V
    .locals 1

    .line 404
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->toggleReadFeeds(Z)V

    return-void
.end method

.method startActionMode(Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 1

    .line 798
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)V

    return-void
.end method

.method public startEditMode()V
    .locals 3

    .line 731
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->isEditingFeeds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$7;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$7;-><init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 759
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 761
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V

    :goto_0
    return-void
.end method

.method public startStopUpdate()V
    .locals 3

    .line 410
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeedOrCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    return-void
.end method

.method public syncSelection()V
    .locals 3

    .line 315
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedFilter()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getFeedIndex(Lmobi/beyondpod/rsscore/Feed;)I

    move-result v0

    goto :goto_0

    .line 320
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getActiveFeedCategory()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Adapter:Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsViewAdapter;->getCategoryIndex(Lmobi/beyondpod/rsscore/categories/FeedCategory;)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    .line 326
    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setItemChecked(IZ)V

    .line 329
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    if-ltz v1, :cond_1

    .line 330
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getChildCount()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 331
    :cond_1
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->setSelection(I)V

    :cond_2
    return-void
.end method
