.class public Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;
.super Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListView;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/IView;
.implements Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;
.implements Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEventListener;
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;,
        Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;,
        Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;
    }
.end annotation


# static fields
.field private static final BEYOND_POD_FAQ:Ljava/lang/String;

.field private static final EPISODES_SELECTED:Ljava/lang/String;

.field private static final EPISODE_DETAILS:Ljava/lang/String;

.field private static final EPISODE_FORMATS:Ljava/lang/String;

.field private static final FAILED_TO_ADD_READER_SUBSCRIPTION_FOR_FEED:Ljava/lang/String;

.field private static final FEED_CONTENT:Ljava/lang/String;

.field private static final INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN:Ljava/lang/String;

.field private static final MENU_ADD_TO_MY_EPISODES:I = 0x56

.field private static final MENU_ADD_TO_PLAYLIST:I = 0x4c

.field private static final MENU_CARD_LAYOUT_GROUP:I = 0x50

.field private static final MENU_DELETE_EPISODES:I = 0x4e

.field private static final MENU_DELETE_PLAYED:I = 0x53

.field private static final MENU_DOWNLOAD_ITEMS:I = 0x52

.field private static final MENU_EPISODE_INFO:I = 0x4f

.field private static final MENU_MARK_ALL_AS_PLAYED:I = 0x51

.field private static final MENU_MARK_ALL_AS_READ:I = 0x46

.field private static final MENU_PLAY_IN_EXTERNAL_PLAYER:I = 0x4b

.field private static final MENU_PODCAST_INFO:I = 0x55

.field private static final MENU_REMOVE_FROM_PLAYLIST:I = 0x4d

.field private static final MENU_SHARE_PODCAST_URL:I = 0x4a

.field private static final MENU_SHARE_POST_URL:I = 0x49

.field private static final MENU_SHOW_HIDE_READ:I = 0x47

.field private static final MENU_TOGGLE_LOCK_PODCAST:I = 0x50

.field private static final MENU_TOGGLE_PLAYLIST:I = 0x54

.field private static final MENU_TOGGLE_READ:I = 0x48

.field private static final OF:Ljava/lang/String;

.field private static final OPERATION_FAILED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PublishedEpisodesListView"

.field private static final UPDATE_CANCELED:Ljava/lang/String;

.field private static final UPDATE_FAILED:Ljava/lang/String;

.field private static final VIEW_MENU_GROUP:I = 0x46


# instance fields
.field _ActionMode:Landroid/view/ActionMode;

.field private _Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

.field _AllowProgressDisplay:Z

.field private _CanDownloadRemoteImages:Z

.field _Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

.field private _CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field private _FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

.field _Footer:Landroid/view/View;

.field _FooterGroup:Landroid/view/View;

.field _FooterText1:Landroid/widget/TextView;

.field _FooterText2:Landroid/widget/TextView;

.field _Header:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

.field private _IsInPreviewMode:Z

.field _Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

.field private _PauseRefresh:Z

.field _ReaderSyncListener:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;

.field _ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

.field private _ScrollState:Ljava/lang/String;

.field _SelectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
            ">;"
        }
    .end annotation
.end field

.field _ShouldRefreshOnActivate:Z

.field private _Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

.field _actionModeListener:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f1001a7

    .line 97
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->BEYOND_POD_FAQ:Ljava/lang/String;

    const v0, 0x7f1001ac

    .line 100
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->FAILED_TO_ADD_READER_SUBSCRIPTION_FOR_FEED:Ljava/lang/String;

    const v0, 0x7f1001b1

    .line 102
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->OPERATION_FAILED:Ljava/lang/String;

    const v0, 0x7f1001ab

    .line 104
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->EPISODE_FORMATS:Ljava/lang/String;

    const v0, 0x7f1001aa

    .line 106
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->EPISODE_DETAILS:Ljava/lang/String;

    const v0, 0x7f1001ad

    .line 108
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->FEED_CONTENT:Ljava/lang/String;

    const v0, 0x7f1001b3

    .line 110
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->UPDATE_CANCELED:Ljava/lang/String;

    const v0, 0x7f1001ae

    .line 112
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN:Ljava/lang/String;

    const v0, 0x7f1001b4

    .line 114
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->UPDATE_FAILED:Ljava/lang/String;

    const v0, 0x7f10022d

    .line 115
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->OF:Ljava/lang/String;

    const v0, 0x7f10029c

    .line 117
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->EPISODES_SELECTED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 430
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CanDownloadRemoteImages:Z

    .line 146
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_PauseRefresh:Z

    .line 171
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    .line 237
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_AllowProgressDisplay:Z

    .line 238
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ShouldRefreshOnActivate:Z

    .line 243
    new-instance v0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    .line 246
    new-instance v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    .line 249
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    .line 407
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ReaderSyncListener:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;

    .line 417
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_IsInPreviewMode:Z

    .line 1339
    new-instance p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$11;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$11;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 422
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CanDownloadRemoteImages:Z

    .line 146
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_PauseRefresh:Z

    .line 171
    new-instance p2, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;

    .line 236
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    .line 237
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_AllowProgressDisplay:Z

    .line 238
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ShouldRefreshOnActivate:Z

    .line 243
    new-instance p2, Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-direct {p2}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;-><init>()V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    .line 246
    new-instance p2, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    invoke-direct {p2}, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;-><init>()V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    .line 249
    new-instance p2, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$2;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    .line 407
    new-instance p2, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$3;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    iput-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ReaderSyncListener:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;

    .line 417
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_IsInPreviewMode:Z

    .line 1339
    new-instance p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$11;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$11;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/view/Menu;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->prepareActionModeOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;
    .locals 0

    .line 93
    iget-object p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateFooter()V

    return-void
.end method

.method static synthetic access$1100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Ljava/lang/Runnable;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_IsInPreviewMode:Z

    return p0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->UPDATE_FAILED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->INVALID_OR_EXPIRED_GOOGLE_READER_LOGIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshContent()V

    return-void
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->UPDATE_CANCELED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateFooterInternal()V

    return-void
.end method

.method static synthetic access$1800(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->showRead()V

    return-void
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/view/MenuItem;)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->handleActionModeOptionsMenu(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->OPERATION_FAILED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->FAILED_TO_ADD_READER_SUBSCRIPTION_FOR_FEED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->BEYOND_POD_FAQ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->doDownload(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method static synthetic access$2400(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->handleCardMenu(Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method static synthetic access$2502(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_PauseRefresh:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->OF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 93
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->EPISODES_SELECTED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->toggleProgressIndicator(Z)V

    return-void
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/Feed;
    .locals 0

    .line 93
    iget-object p0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    .locals 0

    .line 93
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;ZZ)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->reloadCurrentFeed(ZZ)V

    return-void
.end method

.method static synthetic access$900(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshFeedInfoHeader()V

    return-void
.end method

.method private addAsSelectedItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 1619
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1621
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private applyFilter(I)V
    .locals 1

    .line 1226
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1229
    :cond_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setItemFilter(I)V

    .line 1230
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->setItemFilter(I)V

    .line 1231
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->filterItems(I)V

    .line 1232
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->refreshActiveViewTitle()V

    .line 1233
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateFooter()V

    .line 1235
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isMultiSelecting()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1236
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method

.method private buildCardMenu(Landroid/view/Menu;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 8

    if-eqz p2, :cond_a

    .line 1771
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1774
    :cond_0
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    const/4 v1, 0x6

    const v2, 0x7f100023

    const v3, 0x7f100025

    const/16 v4, 0x48

    const/4 v5, 0x1

    const/16 v6, 0x46

    if-eqz v0, :cond_3

    const/16 p2, 0x4e

    const v7, 0x7f100011

    .line 1777
    invoke-interface {p1, v6, p2, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 p2, 0x50

    const/4 v5, 0x4

    .line 1779
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->allowAutoDelete()Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x7f100020

    goto :goto_0

    :cond_1
    const v7, 0x7f10003d

    :goto_0
    invoke-interface {p1, v6, p2, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p2, 0x5

    .line 1782
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    invoke-interface {p1, v6, v4, p2, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 p2, 0x4a

    const v2, 0x7f10000a

    .line 1783
    invoke-interface {p1, v6, p2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 1787
    :cond_3
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getRead()Z

    move-result p2

    if-eqz p2, :cond_4

    move v2, v3

    :cond_4
    invoke-interface {p1, v6, v4, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 p2, 0x56

    const v2, 0x7f1002f1

    .line 1788
    invoke-interface {p1, v6, p2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1792
    :goto_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result p2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_5

    if-nez v0, :cond_8

    :cond_5
    const/16 p2, 0x54

    const/4 v2, 0x2

    if-eqz v0, :cond_7

    .line 1795
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Lmobi/beyondpod/services/player/PlayList;->hasTrack(Lmobi/beyondpod/rsscore/Track;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    const v0, 0x7f100030

    goto :goto_3

    :cond_7
    :goto_2
    const v0, 0x7f100002

    .line 1794
    :goto_3
    invoke-interface {p1, v6, p2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1800
    :cond_8
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result p2

    if-ne p2, v1, :cond_9

    const/4 p2, 0x0

    const/16 v0, 0x55

    const v2, 0x7f10002f

    .line 1801
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_9
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method private checkIfRemoteImageDownloadsAreEnabled()Z
    .locals 3

    .line 649
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->showContentListPostImages()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 652
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getDeviceNetworkConnection()Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectedToNetwork()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 656
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper$DeviceNetworkConnection;->isConnectionCellular()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isCellularConnectionAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;
    .locals 1

    .line 1241
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private doDownload(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1728
    invoke-static {v1, p2, v0, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    .line 1729
    invoke-static {p1, p2, p3, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadEnclosure(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;Z)V

    return-void
.end method

.method private getMyEpisodesFor(Lmobi/beyondpod/ui/core/FeedRssItemList;)Lmobi/beyondpod/rsscore/TrackList;
    .locals 4

    .line 1640
    new-instance v0, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 1641
    invoke-virtual {p1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 1643
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1646
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object v2

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v1

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1649
    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private handleActionModeOptionsMenu(Landroid/view/MenuItem;)Z
    .locals 1

    .line 967
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getCheckedItems()Lmobi/beyondpod/ui/core/FeedRssItemList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->handleMenuSelection(Landroid/view/MenuItem;Lmobi/beyondpod/ui/core/FeedRssItemList;)Z

    move-result p1

    return p1
.end method

.method private handleCardMenu(Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    .line 1809
    new-instance v0, Lmobi/beyondpod/ui/core/FeedRssItemList;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;-><init>(Lmobi/beyondpod/rsscore/Feed;)V

    .line 1810
    invoke-virtual {v0, p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->add(Ljava/lang/Object;)Z

    .line 1811
    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->handleMenuSelection(Landroid/view/MenuItem;Lmobi/beyondpod/ui/core/FeedRssItemList;)Z

    return-void
.end method

.method private handleMenuSelection(Landroid/view/MenuItem;Lmobi/beyondpod/ui/core/FeedRssItemList;)Z
    .locals 5

    .line 972
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    .line 1039
    :pswitch_1
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 1041
    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1044
    :cond_0
    invoke-static {v0, p2, v2, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    goto :goto_0

    :cond_1
    return v2

    .line 1132
    :pswitch_2
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1133
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenItemContentDialog(Landroid/support/v4/app/FragmentActivity;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/view/View;)V

    :cond_2
    return v2

    .line 1126
    :pswitch_3
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1127
    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onAddRemovePlaylist(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_3
    return v2

    .line 1035
    :pswitch_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDownloadFeedItemsManually(Landroid/content/Context;Ljava/util/ArrayList;)V

    return v2

    .line 985
    :pswitch_5
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getMyEpisodesFor(Lmobi/beyondpod/ui/core/FeedRssItemList;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p1

    .line 986
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 988
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->hasUnLocked()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 989
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdLockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    goto :goto_1

    .line 991
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUnlockTracks(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    :cond_5
    :goto_1
    return v2

    .line 1077
    :pswitch_6
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->size()I

    move-result p1

    if-nez p1, :cond_6

    return v2

    .line 1080
    :cond_6
    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 1082
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemEnclosures()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p2, v2, :cond_7

    .line 1084
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->EPISODE_DETAILS:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->dumpItemDetails()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1085
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 1089
    :cond_7
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemEnclosures()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 1091
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->EPISODE_FORMATS:Ljava/lang/String;

    .line 1092
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1093
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->dumpEnclosures()[Ljava/lang/CharSequence;

    move-result-object p1

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$7;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$7;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1104
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_2
    return v2

    .line 975
    :pswitch_7
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getMyEpisodesFor(Lmobi/beyondpod/ui/core/FeedRssItemList;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p1

    .line 976
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 977
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeletePodcasts(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    .line 979
    :cond_8
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 980
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncOwnerFeedReadStatus()V

    :cond_9
    return v2

    .line 1016
    :pswitch_8
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getMyEpisodesFor(Lmobi/beyondpod/ui/core/FeedRssItemList;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p1

    .line 1017
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 1018
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdRemoveFromPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    :cond_a
    return v2

    .line 997
    :pswitch_9
    new-instance p1, Lmobi/beyondpod/rsscore/TrackList;

    invoke-direct {p1}, Lmobi/beyondpod/rsscore/TrackList;-><init>()V

    .line 998
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 1000
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_3

    .line 1003
    :cond_c
    invoke-static {v0, v3, v2, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1006
    invoke-virtual {p1, v3}, Lmobi/beyondpod/rsscore/TrackList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1009
    :cond_d
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result p2

    if-lez p2, :cond_e

    .line 1010
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddToPlaylist(Lmobi/beyondpod/rsscore/TrackList;)V

    :cond_e
    return v2

    .line 1056
    :pswitch_a
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 1059
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object p1

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    .line 1059
    invoke-virtual {p1, v0, v3}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-nez p1, :cond_f

    .line 1064
    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1066
    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->createStreamableTrackFromEnclosure(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    :cond_f
    if-eqz p1, :cond_10

    .line 1070
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenExternalPlayer(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    :cond_10
    return v2

    .line 1111
    :pswitch_b
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->size()I

    move-result p1

    if-lez p1, :cond_12

    .line 1114
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->tracks()Lmobi/beyondpod/rsscore/ConcurrentTrackList;

    move-result-object p1

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v0

    .line 1115
    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v3

    iget-object v3, v3, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    .line 1114
    invoke-virtual {p1, v0, v3}, Lmobi/beyondpod/rsscore/ConcurrentTrackList;->getTrackByNameOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1118
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePodcast(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_4

    .line 1120
    :cond_11
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {p1, v0, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePost(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_12
    :goto_4
    return v2

    .line 1050
    :pswitch_c
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 1051
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p2, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-static {p1, v0, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSharePost(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_13
    return v2

    .line 1024
    :pswitch_d
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p1

    if-nez p1, :cond_14

    return v2

    .line 1027
    :cond_14
    invoke-virtual {p2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasUnreadItems()Z

    move-result p1

    .line 1028
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SetItemsAsReadUnread(Ljava/util/List;Z)V

    .line 1029
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->refreshActiveViewTitle()V

    .line 1030
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->scheduleGoogleSynUpdateIfNeeded()V

    .line 1031
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshContent()V

    return v2

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private hideRead()V
    .locals 1

    const/4 v0, 0x1

    .line 1207
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->applyFilter(I)V

    return-void
.end method

.method private isScrollable()Z
    .locals 4

    .line 495
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 497
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 500
    :cond_0
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getHeight()I

    move-result v2

    if-gt v0, v2, :cond_3

    invoke-virtual {p0, v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-gez v0, :cond_1

    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_2

    return v3

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private markAllAsReadOrPlayed(Z)V
    .locals 2

    .line 1190
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$8;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$8;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-static {v0, v1, p1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->warnAboutMarkingAllAsReadOrPlayed(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;Z)V

    return-void
.end method

.method private notifyCardSizeChanged()V
    .locals 2

    .line 1217
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getItemIdForPosition(I)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;

    move-result-object v0

    .line 1218
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->refreshSections()V

    .line 1219
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Header:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;->notifyCardSizeChanged()V

    .line 1220
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1221
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->scrollToLocation(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;)V

    return-void
.end method

.method private notifyFeedFailedToLoad()V
    .locals 4

    .line 1532
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 1533
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getFeedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1535
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1001c5

    .line 1536
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x7f1001c3

    goto :goto_1

    :cond_1
    const v2, 0x7f1001c4

    .line 1537
    :goto_1
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1001c7

    new-instance v3, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$16;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$16;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    .line 1541
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1552
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 1557
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1001c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v3, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$17;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$17;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    .line 1556
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 1568
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10008b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1571
    :goto_2
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private notifyGoogleReadMayHaveMoreItems(I)V
    .locals 3

    .line 1455
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1456
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f1001bf

    .line 1455
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1457
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1458
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText2:Landroid/widget/TextView;

    const v0, 0x7f1001c0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1460
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterGroup:Landroid/view/View;

    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$13;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$13;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private notifyHasHiddenItems()V
    .locals 2

    .line 1518
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    const v1, 0x7f1001bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1519
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText2:Landroid/widget/TextView;

    const v1, 0x7f1001be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1520
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterGroup:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$15;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$15;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private notifyNotSubscribedInReader()V
    .locals 2

    .line 1473
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    const v1, 0x7f1001c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1474
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText2:Landroid/widget/TextView;

    const v1, 0x7f1001c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1476
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterGroup:Landroid/view/View;

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$14;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$14;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private prepareActionModeOptionsMenu(Landroid/view/Menu;)V
    .locals 8

    .line 832
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 835
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getCheckedItems()Lmobi/beyondpod/ui/core/FeedRssItemList;

    move-result-object v0

    .line 836
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasItemsWithEnclosures()Z

    move-result v1

    .line 839
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasNotFullyDownloaded()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x46

    if-eqz v2, :cond_1

    const/16 v2, 0x52

    const v6, 0x7f100038

    .line 841
    invoke-interface {p1, v5, v2, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v6, 0x7f0800b9

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 842
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 846
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasItemsThatCanBeDeleted()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4e

    const v6, 0x7f100011

    .line 847
    invoke-interface {p1, v5, v2, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v6, 0x7f0800da

    .line 848
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 852
    :cond_2
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasNonMockOrNonReaderLockedItems()Z

    move-result v2

    const/4 v4, 0x5

    const/4 v6, 0x3

    if-eqz v2, :cond_6

    .line 854
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasUnreadItems()Z

    move-result v2

    const/16 v7, 0x48

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    const v1, 0x7f100023

    goto :goto_0

    :cond_3
    const v1, 0x7f100024

    .line 856
    :goto_0
    invoke-interface {p1, v5, v7, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 858
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const v1, 0x7f100025

    goto :goto_1

    :cond_5
    const v1, 0x7f100026

    .line 862
    :goto_1
    invoke-interface {p1, v5, v7, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 864
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 869
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasItemsThatCanBeRemovedFromPlaylist()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_7

    const/16 v1, 0x4d

    const v7, 0x7f100030

    .line 870
    invoke-interface {p1, v5, v1, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 872
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    :cond_7
    const/16 v1, 0x4c

    const v7, 0x7f100002

    .line 874
    invoke-interface {p1, v5, v1, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 876
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 879
    :goto_3
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasNotInMyEpisodes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    const/16 v1, 0x56

    const v7, 0x7f1002f1

    .line 881
    invoke-interface {p1, v5, v1, v4, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 882
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 886
    :cond_8
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->size()I

    move-result v1

    if-ne v1, v3, :cond_a

    .line 888
    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 894
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerIntegrationType()I

    move-result v0

    if-eq v0, v6, :cond_9

    const/16 v0, 0x4b

    const/4 v1, 0x7

    const v3, 0x7f10002e

    .line 895
    invoke-interface {p1, v5, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 896
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 898
    :cond_9
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x4f

    const/4 v1, 0x6

    const v3, 0x7f1001aa

    .line 899
    invoke-interface {p1, v2, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 900
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_a
    return-void
.end method

.method private refreshContent()V
    .locals 1

    .line 1254
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_PauseRefresh:Z

    if-eqz v0, :cond_0

    return-void

    .line 1257
    :cond_0
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$9;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$9;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private refreshFeedInfoHeader()V
    .locals 1

    .line 438
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$4;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private reloadCurrentFeed(ZZ)V
    .locals 3

    .line 696
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    return-void

    .line 699
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isMultiSelecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 702
    :cond_1
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reloading feed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in the feed Content list View!..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->hasCachedFileFor(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 706
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_AllowProgressDisplay:Z

    .line 707
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->refreshActiveViewTitle()V

    .line 708
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, v0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->loadItems(Lmobi/beyondpod/rsscore/Feed;Z)V

    goto :goto_0

    .line 712
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateCurrentFeed()V

    :goto_0
    return-void
.end method

.method private removeAsSelectedItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 1627
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1816
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1817
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private scrollToLocation(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;)V
    .locals 2

    .line 1431
    iget-object v0, p1, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1433
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getPositionForItemID(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;)I

    move-result p1

    .line 1434
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 1438
    :goto_0
    invoke-virtual {p0, p1, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setSelectionFromTop(II)V

    return-void
.end method

.method private showRead()V
    .locals 1

    const/4 v0, 0x0

    .line 1212
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->applyFilter(I)V

    return-void
.end method

.method private stopUpdate()V
    .locals 1

    .line 747
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->stopSyncing()V

    .line 750
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->stop()V

    :cond_1
    return-void
.end method

.method private toggleProgressIndicator(Z)V
    .locals 1

    .line 1443
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$12;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$12;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateCurrentFeed()V
    .locals 3

    .line 718
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->stopUpdate()V

    const/4 v0, 0x0

    .line 720
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setUnableToEstablishWiFiConnectionInThisSession(Z)V

    .line 722
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getItemFilter()I

    move-result v1

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/Feed;->setItemFilter(I)V

    .line 724
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 725
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->clearItems()V

    .line 727
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ReaderSyncListener:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;

    invoke-static {v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->syncItemStatus(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GSyncStatusResult;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 736
    sget-object v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->TAG:Ljava/lang/String;

    const-string v2, "failed to start Google Sync"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 741
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->updateFeed(Lmobi/beyondpod/rsscore/Feed;Z)V

    :goto_0
    return-void
.end method

.method private updateFooter()V
    .locals 1

    .line 542
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$5;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateFooterInternal()V
    .locals 4

    .line 554
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->checkIfRemoteImageDownloadsAreEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CanDownloadRemoteImages:Z

    .line 558
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterGroup:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 567
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 568
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    const v2, 0x7f1001b9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 569
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->isLoadingData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    const v2, 0x7f1001b7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 571
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasHiddenItems()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->notifyHasHiddenItems()V

    goto :goto_2

    .line 576
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isUpdating()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 584
    :cond_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    const v3, 0x7f1001b8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 585
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText2:Landroid/widget/TextView;

    const v3, 0x7f1001bb

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 578
    :cond_5
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    const v2, 0x7f1001bc

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 579
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText2:Landroid/widget/TextView;

    const v2, 0x7f1001ba

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    move v2, v1

    .line 588
    :goto_2
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 590
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterGroup:Landroid/view/View;

    new-instance v3, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$6;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 617
    :cond_6
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 620
    :cond_7
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasHiddenItems()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 622
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->notifyHasHiddenItems()V

    goto :goto_5

    .line 627
    :cond_8
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->IsSubscribedInGoogleReader()Z

    move-result v0

    if-nez v0, :cond_9

    .line 629
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->notifyNotSubscribedInReader()V

    .line 633
    :cond_9
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x14

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 634
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getMaxNumGReaderItemsToGet()I

    move-result v0

    .line 635
    :goto_3
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_b

    goto :goto_4

    :cond_b
    const/4 v0, -0x1

    :goto_4
    if-lez v0, :cond_c

    .line 637
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasHiddenItems()Z

    move-result v2

    if-nez v2, :cond_c

    .line 639
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->notifyGoogleReadMayHaveMoreItems(I)V

    :cond_c
    :goto_5
    move v2, v1

    .line 644
    :cond_d
    :goto_6
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    if-eqz v2, :cond_e

    const v2, 0x7f0800bb

    goto :goto_7

    :cond_e
    move v2, v1

    :goto_7
    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method


# virtual methods
.method public canDownloadRemoteImages()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CanDownloadRemoteImages:Z

    return v0
.end method

.method public currentFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 685
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public generatePlaylist(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmobi/beyondpod/rsscore/Track;",
            ")",
            "Ljava/util/List<",
            "Lmobi/beyondpod/rsscore/Track;",
            ">;"
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->generatePlaylist(Lmobi/beyondpod/rsscore/Track;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getCheckedItems()Lmobi/beyondpod/ui/core/FeedRssItemList;
    .locals 2

    .line 1612
    new-instance v0, Lmobi/beyondpod/ui/core/FeedRssItemList;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;-><init>(Lmobi/beyondpod/rsscore/Feed;)V

    .line 1613
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/core/FeedRssItemList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method getImageLoader()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 1607
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;

    invoke-interface {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;->getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method public getViewTitle()Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;
    .locals 4

    .line 821
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v1, :cond_0

    sget-object v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->FEED_CONTENT:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->primaryTitle:Ljava/lang/String;

    .line 823
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getAllSectionItemsCount()I

    move-result v0

    .line 824
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    iget-boolean v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_IsInPreviewMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 825
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_1
    iput-object v3, v1, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->subTitle:Ljava/lang/String;

    .line 826
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    const/4 v1, 0x1

    iput v1, v0, Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;->selectorType:I

    .line 827
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;

    return-object v0
.end method

.method public handleOptionsMenu(ILandroid/view/MenuItem;)Z
    .locals 3

    .line 1144
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x51

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x53

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    .line 1178
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 p2, 0x50

    if-ne p1, p2, :cond_1

    .line 1180
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    move p2, v2

    :cond_0
    invoke-static {p2}, Lmobi/beyondpod/rsscore/Configuration;->setPublishedEpisodeCardSize(I)V

    .line 1181
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->notifyCardSizeChanged()V

    return v2

    :cond_1
    return v1

    .line 1155
    :pswitch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasReadItems()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1157
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->hideRead()V

    goto :goto_0

    .line 1159
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasHiddenItems()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1161
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->showRead()V

    :cond_3
    :goto_0
    return v2

    .line 1147
    :pswitch_1
    invoke-direct {p0, v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->markAllAsReadOrPlayed(Z)V

    return v2

    .line 1166
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getAllPlayedMyEpisodes()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object p2

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeletePodcasts(Landroid/content/Context;Lmobi/beyondpod/rsscore/TrackList;)V

    return v2

    .line 1151
    :cond_5
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->markAllAsReadOrPlayed(Z)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;)V
    .locals 4

    .line 451
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    const/4 p1, 0x0

    .line 453
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setHeaderDividersEnabled(Z)V

    .line 454
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setFooterDividersEnabled(Z)V

    const/high16 v0, 0x2000000

    .line 456
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setScrollBarStyle(I)V

    .line 458
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->appBarScrollAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 459
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 461
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->setFeedUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;)V

    .line 463
    new-instance v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_IsInPreviewMode:Z

    invoke-direct {v0, v1, p0, v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;-><init>(Landroid/content/Context;Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Z)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    .line 465
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 467
    iget-boolean v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_IsInPreviewMode:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const v1, 0x7f0c00bd

    .line 468
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Header:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    goto :goto_0

    :cond_1
    const v1, 0x7f0c00bf

    .line 470
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Header:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    .line 472
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Header:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;->initialize(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/support/v4/app/FragmentActivity;)V

    const v1, 0x7f0c005d

    .line 474
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Footer:Landroid/view/View;

    .line 476
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Footer:Landroid/view/View;

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText1:Landroid/widget/TextView;

    .line 477
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Footer:Landroid/view/View;

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterText2:Landroid/widget/TextView;

    .line 478
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Footer:Landroid/view/View;

    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_FooterGroup:Landroid/view/View;

    .line 480
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setItemFilter(I)V

    .line 483
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshFeedInfoHeader()V

    .line 484
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateFooter()V

    .line 486
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Header:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v2, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 488
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Footer:Landroid/view/View;

    invoke-virtual {p0, v0, v2, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 490
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public isItemSelected(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z
    .locals 1

    .line 1635
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isMultiSelecting()Z
    .locals 1

    .line 1848
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpdating()Z
    .locals 1

    .line 1597
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isSyncing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public loadFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 665
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->hasUri()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 670
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez p1, :cond_1

    .line 672
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getDefaultFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 674
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez p1, :cond_1

    return-void

    .line 678
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getItemFilter()I

    move-result v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setItemFilter(I)V

    .line 679
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->refreshActiveViewTitle()V

    .line 680
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getUpdateOnFeedOpen()Z

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->reloadCurrentFeed(ZZ)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .line 814
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onActivityDestroy()V

    :cond_0
    return-void
.end method

.method onAdapterDataLoadCompleted(Z)V
    .locals 4

    .line 1387
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->refreshActiveViewTitle()V

    const/4 v0, 0x0

    .line 1389
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->toggleProgressIndicator(Z)V

    .line 1390
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->onFeedUpdateCompleted()V

    .line 1392
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshFeedInfoHeader()V

    .line 1394
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1399
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->notifyFeedFailedToLoad()V

    return-void

    .line 1403
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateFooter()V

    .line 1407
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/Feed;->transientEpisodeUrl:Ljava/lang/String;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1409
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 1411
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v3

    iget-object v3, v3, Lmobi/beyondpod/rsscore/Feed;->transientEpisodeUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1413
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->items()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 1415
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 1419
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ScrollState:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 1421
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ScrollState:Ljava/lang/String;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->deserialize(Ljava/lang/String;Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;

    move-result-object p1

    .line 1422
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->scrollToLocation(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;)V

    const/4 p1, 0x0

    .line 1423
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ScrollState:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method onAdapterDataLoadStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 1576
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->toggleProgressIndicator(Z)V

    return-void
.end method

.method public onAddRemovePlaylist(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 3

    .line 1734
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1735
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->prepareEnclosureForPlayback(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;ZZ)Lmobi/beyondpod/rsscore/Track;

    move-result-object p1

    .line 1734
    invoke-static {v0, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddRemoveToPlaylist(Landroid/content/Context;Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method public onAfterActivate()V
    .locals 3

    .line 757
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 758
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 759
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 761
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->refreshActiveViewTitle()V

    .line 762
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onAfterActivate()V

    .line 763
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateFooter()V

    .line 764
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshFeedInfoHeader()V

    .line 766
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 770
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->toggleProgressIndicator(Z)V

    .line 771
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->onFeedUpdateCompleted()V

    .line 774
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 775
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 776
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isDataLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isLoadingData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 777
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshContent()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 779
    invoke-direct {p0, v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->reloadCurrentFeed(ZZ)V

    :goto_0
    return-void
.end method

.method public onAfterDeactivate()V
    .locals 2

    .line 786
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->onAfterDeactivate()V

    .line 788
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 789
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 790
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    const-class v1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, p0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 792
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isMultiSelecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public onBeforeActivate()V
    .locals 2

    .line 801
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    .line 802
    sget-object v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->TAG:Ljava/lang/String;

    const-string v1, "Activating FeedContentView with null currentFeed!!!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ShouldRefreshOnActivate:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->restoreItemsAfterConfigurationChange()V

    :cond_1
    const/4 v0, 0x0

    .line 809
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ShouldRefreshOnActivate:Z

    return-void
.end method

.method public onDownload(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    .line 1712
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0, v0, p1, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->doDownload(Landroid/content/Context;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    .line 1715
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$19;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->warnAboutStartEpisodeDownload(Landroid/content/Context;Lmobi/beyondpod/ui/views/notifications/UserNotificationManager$OnContinueListener;)V

    :goto_0
    return-void
.end method

.method public onItemLongPressed(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    .line 1694
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_IsInPreviewMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 1697
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 1699
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 1700
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->addAsSelectedItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 1701
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_1
    return-void
.end method

.method public onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    .line 1658
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isMultiSelecting()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1661
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isItemSelected(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1662
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->removeAsSelectedItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    .line 1665
    :cond_0
    invoke-direct {p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->addAsSelectedItem(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    const/4 v0, 0x1

    .line 1669
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1671
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return-void

    .line 1675
    :cond_1
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_2

    .line 1676
    check-cast p1, Landroid/widget/Checkable;

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1678
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_actionModeListener:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    invoke-interface {p1, v0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_1

    .line 1682
    :cond_3
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    iget-boolean v0, v0, Lmobi/beyondpod/rsscore/Feed;->isTransient:Z

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->enclosure()Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1684
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void

    .line 1688
    :cond_4
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenItemContentDialog(Landroid/support/v4/app/FragmentActivity;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 0

    .line 1582
    iget p1, p1, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    if-nez p1, :cond_0

    .line 1584
    new-instance p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$18;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$18;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 1707
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->onPlayPause(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method public onRepositoryEvent(Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;)V
    .locals 2

    .line 1278
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    return-void

    .line 1281
    :cond_0
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-ne v0, v1, :cond_2

    .line 1283
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getDefaultFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1286
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->loadFeed(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1289
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 1290
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->clearItems()V

    .line 1291
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->updateFooter()V

    .line 1292
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshFeedInfoHeader()V

    :goto_0
    return-void

    .line 1297
    :cond_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 1300
    :cond_3
    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    iget v0, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    iget p1, p1, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    const/16 v0, 0xe

    if-ne p1, v0, :cond_5

    .line 1304
    :cond_4
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshContent()V

    :cond_5
    return-void
.end method

.method public onUpdateAndDownloadEvent(Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;)V
    .locals 2

    .line 1311
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1314
    :cond_0
    iget v0, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_STARTED:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_COMPLETED:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_QUEUE_CHANGED:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1320
    :cond_1
    iget p1, p1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    sget v0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->UPDATE_AND_DOWNLOAD_COMPLETED:I

    if-ne p1, v0, :cond_3

    .line 1322
    new-instance p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$10;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$10;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1318
    :cond_2
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshContent()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method public prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8

    .line 913
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_8

    .line 916
    :cond_0
    new-instance v0, Lmobi/beyondpod/ui/core/FeedRssItemList;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {v0, v2}, Lmobi/beyondpod/ui/core/FeedRssItemList;-><init>(Lmobi/beyondpod/rsscore/Feed;)V

    .line 921
    :try_start_0
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->currentRssFeed()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v2

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/core/FeedRssItemList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/FeedRssItemList;->hasItemsWithEnclosures()Z

    move-result v2

    const/16 v3, 0x47

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/16 v7, 0x46

    if-eqz v2, :cond_7

    .line 930
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getMyEpisodesFor(Lmobi/beyondpod/ui/core/FeedRssItemList;)Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    .line 931
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->hasUnPlayed()Z

    move-result v0

    .line 933
    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasUnReadItems()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x51

    const v2, 0x7f100021

    .line 934
    invoke-interface {p1, v7, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 936
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 937
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    .line 938
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasReadItems()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f10001d

    goto :goto_0

    :cond_3
    const v0, 0x7f100035

    .line 937
    :goto_0
    invoke-interface {p1, v7, v3, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    .line 939
    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasHiddenItems()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasReadItems()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v6

    .line 938
    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 941
    :cond_6
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasPlayedMyEpisodes()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x53

    const/16 v2, 0x16

    const v3, 0x7f10000d

    .line 943
    invoke-interface {p1, v7, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_6

    .line 948
    :cond_7
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasUnReadItems()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f100022

    .line 949
    invoke-interface {p1, v7, v7, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 951
    :cond_8
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowHidingRead()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 952
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    .line 953
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasReadItems()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f10001e

    goto :goto_3

    :cond_9
    const v0, 0x7f100036

    .line 952
    :goto_3
    invoke-interface {p1, v7, v3, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    .line 954
    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasHiddenItems()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->hasReadItems()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    move v2, v1

    goto :goto_5

    :cond_b
    :goto_4
    move v2, v6

    .line 953
    :goto_5
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_c
    :goto_6
    const/16 v0, 0x50

    const/16 v2, 0x19

    const v3, 0x7f10000b

    .line 957
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 958
    invoke-interface {p1, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->publishedEpisodeCardSize()I

    move-result v0

    if-ne v0, v5, :cond_d

    move v0, v6

    goto :goto_7

    :cond_d
    move v0, v1

    :goto_7
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object p1

    .line 959
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v6

    :catch_0
    return v1

    :cond_e
    :goto_8
    return v1
.end method

.method public refreshCurrentFeed(ZZ)Z
    .locals 2

    .line 520
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->isUpdating()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 523
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->stopUpdate()V

    :cond_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 531
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/ui/core/FeedImageCache;->deleteImageCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    .line 532
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->deleteFeedCacheFor(Lmobi/beyondpod/rsscore/Feed;)V

    :cond_2
    const/4 p1, 0x1

    .line 534
    invoke-direct {p0, p1, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->reloadCurrentFeed(ZZ)V

    return p1
.end method

.method public refreshOnNextActivate()V
    .locals 1

    const/4 v0, 0x1

    .line 1249
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ShouldRefreshOnActivate:Z

    return-void
.end method

.method public restoreState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 1

    .line 1368
    iget-object v0, p1, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentFirstVisibleItem:Ljava/lang/String;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ScrollState:Ljava/lang/String;

    .line 1370
    iget-object v0, p1, Lmobi/beyondpod/ui/core/MasterViewState;->contentViewFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 1371
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->restoreCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    .line 1373
    iget p1, p1, Lmobi/beyondpod/ui/core/MasterViewState;->currentView:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1375
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->restoreItemsAfterConfigurationChange()V

    .line 1379
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshFeedInfoHeader()V

    goto :goto_0

    .line 1382
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshOnNextActivate()V

    :goto_0
    return-void
.end method

.method public saveState(Lmobi/beyondpod/ui/core/MasterViewState;)V
    .locals 3

    .line 1359
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1360
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getItemIdForPosition(I)Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;

    move-result-object v0

    .line 1361
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ScrollLocationMapper:Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->serialize(Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation$IObjectMapper;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lmobi/beyondpod/ui/core/MasterViewState;->feedContentFirstVisibleItem:Ljava/lang/String;

    .line 1362
    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Adapter:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    invoke-virtual {v1, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->saveCurrentState(Lmobi/beyondpod/ui/core/MasterViewState;)V

    const-string p1, "QQQQ"

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving AP=> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lmobi/beyondpod/ui/views/base/columnlistview/SectionedListViewAdapter$ItemLocation;->item:Ljava/lang/Object;

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Title:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCategorySchedule(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 2

    .line 1822
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetUpdateSchedule(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;Z)V

    return-void
.end method

.method public setCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 690
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 691
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Header:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$IListViewHeader;->setCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method public setPreviewMode()V
    .locals 1

    const/4 v0, 0x1

    .line 1602
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_IsInPreviewMode:Z

    return-void
.end method

.method public showCardMenu(Landroid/view/View;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    .line 1740
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1742
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->buildCardMenu(Landroid/view/Menu;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 1744
    new-instance p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$20;

    invoke-direct {p1, p0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$20;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1753
    new-instance p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$21;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$21;-><init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1763
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1764
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    :cond_0
    const/4 p1, 0x1

    .line 1766
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_PauseRefresh:Z

    return-void
.end method

.method public subscribeToCurrentFeed()V
    .locals 2

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-interface {v0, v1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->subscribeToCurrentFeed(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method
