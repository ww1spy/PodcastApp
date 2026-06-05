.class public Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FeedPropertiesView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;
    }
.end annotation


# static fields
.field protected static final ACTIVITY_SELECT_IMAGE:I = 0x0

.field private static final ADD_FEED:Ljava/lang/String;

.field private static final ADD_VIRTUAL_FEED:Ljava/lang/String;

.field private static final CHECKING_FEED_INFORMATION:Ljava/lang/String;

.field private static final CHECKING_FOR_ALTERNATIVES:Ljava/lang/String;

.field private static final CONNECTING:Ljava/lang/String;

.field private static final EDIT_FEED:Ljava/lang/String;

.field private static final EDIT_VIRTUAL_FEED:Ljava/lang/String;

.field private static final LOCATING_RSS_FEEDS:Ljava/lang/String;

.field private static final MENU_CANCEL:I = 0x1

.field private static final MENU_OK:I = 0x0

.field private static final PATCHED_FEED_MSG:Ljava/lang/String;

.field private static final RETRIEVING_FEED:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FeedPropertiesView"

.field private static final UPDATING_DOWNLOAD_HISTORY:Ljava/lang/String;

.field public static final URL_KEY:Ljava/lang/String; = "URL_KEY"


# instance fields
.field _Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

.field _ClearCustomImageListener:Landroid/view/View$OnClickListener;

.field _ClearHistoryListener:Landroid/view/View$OnClickListener;

.field _CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

.field private _CurrentFeedIsNew:Z

.field private _FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

.field _MarkDownloadedListener:Landroid/view/View$OnClickListener;

.field _ProgressDialog:Landroid/app/ProgressDialog;

.field _SelectCustomImageListener:Landroid/view/View$OnClickListener;

.field _SettingsRoot:Landroid/view/View;

.field _SettingsScroll:Landroid/widget/ScrollView;

.field _SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f10010f

    .line 76
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->CHECKING_FOR_ALTERNATIVES:Ljava/lang/String;

    const v0, 0x7f1001cd

    .line 77
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->PATCHED_FEED_MSG:Ljava/lang/String;

    const v0, 0x7f100227

    .line 79
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->LOCATING_RSS_FEEDS:Ljava/lang/String;

    const v0, 0x7f10021f

    .line 80
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->CONNECTING:Ljava/lang/String;

    const v0, 0x7f100228

    .line 81
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->RETRIEVING_FEED:Ljava/lang/String;

    const v0, 0x7f10021e

    .line 83
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->CHECKING_FEED_INFORMATION:Ljava/lang/String;

    const v0, 0x7f100229

    .line 85
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->UPDATING_DOWNLOAD_HISTORY:Ljava/lang/String;

    const v0, 0x7f10021d

    .line 87
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->ADD_VIRTUAL_FEED:Ljava/lang/String;

    const v0, 0x7f10021c

    .line 88
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->ADD_FEED:Ljava/lang/String;

    const v0, 0x7f100221

    .line 89
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->EDIT_FEED:Ljava/lang/String;

    const v0, 0x7f100222

    .line 91
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->EDIT_VIRTUAL_FEED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 98
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ClearHistoryListener:Landroid/view/View$OnClickListener;

    .line 110
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$2;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_MarkDownloadedListener:Landroid/view/View$OnClickListener;

    .line 122
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$3;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SelectCustomImageListener:Landroid/view/View$OnClickListener;

    .line 143
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$4;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ClearCustomImageListener:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-direct {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeedIsNew:Z

    .line 165
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->refreshActiveSection()V

    return-void
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeedIsNew:Z

    return p0
.end method

.method static synthetic access$202(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeedIsNew:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->CHECKING_FOR_ALTERNATIVES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->RETRIEVING_FEED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->CONNECTING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->saveChanges()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->LOCATING_RSS_FEEDS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->PATCHED_FEED_MSG:Ljava/lang/String;

    return-object v0
.end method

.method private addOkCancelButtons()V
    .locals 4

    .line 371
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 372
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c001b

    const/4 v2, 0x0

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090028

    .line 375
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$6;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$6;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090027

    .line 383
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$7;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$7;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/16 v2, 0x10

    const/16 v3, 0x1a

    .line 394
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 398
    new-instance v2, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method private refreshActiveSection()V
    .locals 2

    .line 558
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->refresh(Lmobi/beyondpod/rsscore/Feed;)V

    return-void
.end method

.method private saveChanges()V
    .locals 7

    .line 429
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->validateControls(Lmobi/beyondpod/rsscore/Feed;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 434
    iput-boolean v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeedIsNew:Z

    const-string v0, ""

    const-string v2, ""

    const-string v3, ""

    .line 435
    invoke-static {v0, v2, v3}, Lmobi/beyondpod/rsscore/Feed;->createAndAddFeedWithDefaults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 438
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    .line 440
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    .line 441
    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v3

    .line 442
    iget-object v4, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v4

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v4

    .line 444
    iget-object v5, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    iget-object v6, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v5, v6}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->saveToFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 448
    iget-object v5, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->ensureFeedPathIsUnique()V

    .line 451
    iget-object v5, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v5

    if-eq v0, v5, :cond_4

    .line 453
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 454
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    goto :goto_0

    .line 461
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    .line 462
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v5}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    goto :goto_1

    .line 456
    :cond_3
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lmobi/beyondpod/rsscore/Feed;->setForceFeedItemSort(I)V

    .line 457
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v5}, Lmobi/beyondpod/rsscore/Feed;->setTrackSortOrder(I)V

    .line 467
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeedIsNew:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 468
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    if-ne v3, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 469
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getSecondary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object v0

    if-eq v4, v0, :cond_7

    :cond_6
    const/4 v0, 0x3

    .line 471
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/16 v3, 0x3c

    invoke-static {v0, v2, v3}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalFeedChange(ILmobi/beyondpod/rsscore/Feed;I)V

    .line 474
    :cond_7
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 476
    invoke-static {}, Lmobi/beyondpod/rsscore/StartupContentBuilder;->backupRepositoriesAsync()V

    .line 478
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->hasFeedAddressChanged()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 480
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->isURLFeed()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 481
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->checkIfFeedIsValid(Lmobi/beyondpod/rsscore/Feed;)V

    goto :goto_2

    .line 484
    :cond_8
    new-instance v0, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;

    new-instance v3, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;

    invoke-direct {v3, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$8;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    invoke-direct {v0, v3}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;-><init>(Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask$ITrackImageRefreshProgress;)V

    .line 512
    new-array v1, v1, [Lmobi/beyondpod/rsscore/Feed;

    iget-object v3, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/commands/RefreshVirtualFeedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 516
    :cond_9
    iput-boolean v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeedIsNew:Z

    .line 517
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->finish()V

    :goto_2
    return-void
.end method


# virtual methods
.method public SetTitle(Ljava/lang/String;)V
    .locals 1

    .line 608
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$10;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$10;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected checkIfFeedIsValid(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 595
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {v0}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->stop()V

    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_FeedUpdateListener:Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->setFeedUpdateListener(Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;)V

    .line 602
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->updateFeed(Lmobi/beyondpod/rsscore/Feed;Z)V

    .line 603
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showDialog(I)V

    return-void
.end method

.method public getPassedFeedUrl()Ljava/lang/String;
    .locals 2

    .line 365
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "URL_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 523
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p1, "_data"

    .line 530
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 535
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const/4 p3, 0x0

    .line 538
    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 539
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 540
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 542
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f100210

    const/4 p3, 0x1

    .line 544
    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 546
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 549
    :cond_2
    iget-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p2, p1}, Lmobi/beyondpod/ui/core/FeedImageCache;->setCustomFeedImage(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->refreshActiveSection()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 420
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 422
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 423
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 424
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 277
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 279
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    .line 281
    sget-object p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->TAG:Ljava/lang/String;

    const-string v0, "Closing view because the repository is not Loaded"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c0062

    .line 286
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->setContentView(I)V

    .line 288
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    .line 289
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    .line 290
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->addOkCancelButtons()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    .line 294
    invoke-virtual {p1, v0, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 298
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    :goto_1
    const/4 p1, 0x0

    .line 311
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 313
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 315
    new-instance p1, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    :goto_2
    move p1, v1

    goto :goto_3

    .line 318
    :cond_3
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    goto :goto_3

    .line 322
    :cond_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getPassedFeedUrl()Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 326
    new-instance p1, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;

    invoke-direct {p1, p0}, Lmobi/beyondpod/ui/views/feedsettings/VirtualFeedSection;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    goto :goto_2

    .line 331
    :cond_5
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedCommonSection;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    .line 337
    :goto_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_7

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    sget-object p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->EDIT_VIRTUAL_FEED:Ljava/lang/String;

    goto :goto_4

    :cond_6
    sget-object p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->EDIT_FEED:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_8

    .line 343
    sget-object p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->ADD_VIRTUAL_FEED:Ljava/lang/String;

    goto :goto_5

    :cond_8
    sget-object p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->ADD_FEED:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    :goto_6
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->show()V

    .line 347
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->loadFromFeed(Lmobi/beyondpod/rsscore/Feed;)V

    .line 349
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 351
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FocusControl"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_9

    .line 353
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsSection:Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/feedsettings/SettingsSectionBase;->focusControl(I)V

    :cond_9
    const p1, 0x7f090221

    .line 356
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsRoot:Landroid/view/View;

    const p1, 0x7f090222

    .line 357
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsScroll:Landroid/widget/ScrollView;

    .line 359
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsScroll:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700c3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 360
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_SettingsScroll:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 564
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    .line 565
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 566
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    sget-object v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->UPDATING_DOWNLOAD_HISTORY:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->CHECKING_FEED_INFORMATION:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 568
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$9;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$9;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 578
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 689
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x258

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const v2, 0x7f100094

    .line 692
    invoke-interface {p1, v1, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f0800d7

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x6

    .line 693
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f10008a

    const/4 v3, 0x1

    .line 694
    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f0800b5

    .line 695
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 696
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v3
.end method

.method protected onDestroy()V
    .locals 1

    .line 407
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeedIsNew:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->deleteFeedAndRelatedFoldersAsync(Lmobi/beyondpod/rsscore/Feed;)V

    .line 410
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 414
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 703
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 718
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 710
    :pswitch_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->finish()V

    return v2

    .line 714
    :pswitch_1
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->saveChanges()V

    return v2

    .line 706
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->finish()V

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 587
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 590
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    return-void
.end method

.method showError(Ljava/lang/String;)V
    .locals 1

    .line 621
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method showPatchFound(Ljava/lang/String;)V
    .locals 1

    .line 660
    new-instance v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;

    invoke-direct {v0, p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
