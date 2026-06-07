.class public Lmobi/beyondpod/ui/views/MasterView;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MasterView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;
.implements Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;
.implements Lmobi/beyondpod/ui/core/volley/ImageLoader$ImageLoaderProvider;
.implements Lmobi/beyondpod/ui/views/navigator/NavigatorFragment$INavigatorFragmentOwner;
.implements Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;
.implements Lmobi/beyondpod/ui/core/mediarouter/BPMediaRouteControllerDialog$IRouteControllerDialogOwner;


# static fields
.field private static final BEYOND_POD_FAILED_TO_START:Ljava/lang/String;

.field private static final BEYOND_POD_WILL_NOW_EXIT:Ljava/lang/String;

.field private static final ID_HOME:I = 0x102002c

.field private static final LOADING_EPISODES:Ljava/lang/String;

.field private static final LOADING_FEEDS:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MasterView"

.field private static final THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

.field private static final WELCOME_TO_BEYOND_POD:Ljava/lang/String;

.field private static _InstanceCount:I

.field private static _LastAddFeedUri:Landroid/net/Uri;


# instance fields
.field public Workspace:Lmobi/beyondpod/ui/views/Workspace;

.field private _AppBar:Landroid/support/design/widget/AppBarLayout;

.field private _ApplicationEventListener:Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEventListener;

.field private final _CmdCloseListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEventListener;

.field private final _CmdSelectCategoryListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEventListener;

.field private _DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

.field private _DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private _Handler:Landroid/os/Handler;

.field private _ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

.field private _LastActiveTheme:I

.field private _LoadingProgress:Landroid/view/View;

.field private final _LockScreenOrientationListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEventListener;

.field private final _PlaylistListener:Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;

.field private _RegisterTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final _RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

.field private _Title:Lmobi/beyondpod/ui/views/base/TitleBar;

.field private _externalCommandReceiver:Lmobi/beyondpod/services/scheduler/CommandReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f100224

    .line 127
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MasterView;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    const v0, 0x7f100264

    .line 129
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MasterView;->WELCOME_TO_BEYOND_POD:Ljava/lang/String;

    const v0, 0x7f100261

    .line 131
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MasterView;->BEYOND_POD_WILL_NOW_EXIT:Ljava/lang/String;

    const v0, 0x7f100260

    .line 133
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MasterView;->BEYOND_POD_FAILED_TO_START:Ljava/lang/String;

    const v0, 0x7f100262

    .line 134
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MasterView;->LOADING_EPISODES:Ljava/lang/String;

    const v0, 0x7f100263

    .line 135
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/MasterView;->LOADING_FEEDS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 136
    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$1;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    .line 178
    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$2;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_PlaylistListener:Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;

    .line 190
    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$3;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_CmdCloseListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEventListener;

    .line 199
    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$4;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$4;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_LockScreenOrientationListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEventListener;

    .line 211
    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$5;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$5;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_CmdSelectCategoryListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEventListener;

    .line 239
    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$6;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$6;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_ApplicationEventListener:Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEventListener;

    const/4 v0, 0x0

    .line 307
    iput v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_LastActiveTheme:I

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->LOADING_FEEDS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/MasterView;Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MasterView;->setMasterViewTitle(Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;)V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    .line 115
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->_LastAddFeedUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lmobi/beyondpod/ui/views/MasterView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 115
    iput-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->_RegisterTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/MasterView;Z)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MasterView;->toggleTitleIndeterminateProgress(Z)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->LOADING_EPISODES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 115
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->WELCOME_TO_BEYOND_POD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->finishInitialization()V

    return-void
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/MasterView;)Lmobi/beyondpod/ui/views/base/BPDrawerLayout;
    .locals 0

    .line 115
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    return-object p0
.end method

.method static synthetic access$700(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->lockCurrentScreenOrientation()V

    return-void
.end method

.method static synthetic access$800(Lmobi/beyondpod/ui/views/MasterView;)V
    .locals 0

    .line 115
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->restoreCurrentScreenOrientation()V

    return-void
.end method

.method static synthetic access$900(Lmobi/beyondpod/ui/views/MasterView;)Landroid/os/Handler;
    .locals 0

    .line 115
    iget-object p0, p0, Lmobi/beyondpod/ui/views/MasterView;->_Handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static appBarScrollAllowed()Z
    .locals 3

    .line 1542
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 1545
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->DBGActionBarScroll()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowPullToRefresh()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private finishInitialization()V
    .locals 2

    .line 793
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    iget-boolean v0, v0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/Workspace;->activateViews(I)V

    return-void

    .line 799
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->loadDataInWorkspaceViews()V

    .line 801
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->handleFirstRunOrUpgrade()V

    .line 803
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/PolicyManager;->licenseType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onApplicationStartedUnlocked(Ljava/lang/String;)V

    goto :goto_0

    .line 806
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onApplicationStartedLocked()V

    .line 808
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/AnalyticsTracker;->onCaptureUIConfigs()V

    .line 810
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->showStartupWarningsIfNeeded()V

    .line 811
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->navigateToViewBasedOnIntentSource(Landroid/content/Intent;)V

    return-void
.end method

.method private forwardToSplashScreenOnNoStorageCard()V
    .locals 4

    # DIAG: Toast to confirm isInit=false path was taken
    const-string v0, "BP: isInit=false in MasterView"
    const/4 v1, 0x1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    # DIAG: show why isInitialized() returned false
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MasterView: isInitialized=false\n\nlastAppEx: "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nConfigErrorMsg: "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmobi/beyondpod/rsscore/Configuration;->ConfigurationInitErrorMsg:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\nStorageState: "
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->externalStorageState()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;
    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
    const-string v2, "DIAG: isInit=false"
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
    const-string v2, "OK"
    const/4 v3, 0x0
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private handleFirstRunOrUpgrade()V
    .locals 4

    .line 816
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isFirstRun()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 818
    invoke-static {v1, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    .line 819
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->clearIsFirstRun()V

    .line 820
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->writeLastInstalledVersionCode()V

    goto :goto_0

    .line 822
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersionCode()I

    move-result v0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getLastInstalledVersionCode()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 824
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BeyondPod upgraded from v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getLastInstalledVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 824
    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getLastInstalledVersionCode()I

    move-result v0

    const v2, 0x9c49

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    .line 830
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->introduceNavigator(Z)V

    .line 833
    :cond_1
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    .line 834
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getLastInstalledVersionCode()I

    move-result v2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersionCode()I

    move-result v3

    .line 833
    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/BeyondPodApplication;->configureDefaultsForVersionUpgrade(II)V

    const/4 v0, 0x2

    .line 836
    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/notifications/UserNotificationManager;->setNotificationPreferenceFor(IZ)V

    .line 838
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->writeLastInstalledVersionCode()V

    .line 839
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->rescheduleAllActiveTasks()I

    goto :goto_0

    .line 843
    :cond_2
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->areAllActiveTasksScheduled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 845
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "Detected that Android has lost our update schedule, Restoring..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-static {}, Lmobi/beyondpod/schedulercore/ScheduledTasksManager;->rescheduleAllActiveTasks()I

    goto :goto_0

    .line 850
    :cond_3
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "Scheduled task check complete. No issues found."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->androidBackupRestored()I

    move-result v0

    if-lez v0, :cond_4

    .line 859
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "Detected that Android backup was restored. Starting feed refresh..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 861
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setAndroidBackupRestored(I)V

    .line 862
    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->AllFeeds:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedsInCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)Lmobi/beyondpod/rsscore/FeedList;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->startQuickUpdate(Lmobi/beyondpod/rsscore/FeedList;)V

    :cond_4
    return-void
.end method

.method private initializeDrawers()V
    .locals 7

    const v0, 0x7f0900cb

    .line 884
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    .line 885
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v1, 0x7f08022d

    const v2, 0x800003

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->setDrawerShadow(II)V

    .line 886
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v1, 0x7f08022e

    const v2, 0x800005

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->setDrawerShadow(II)V

    .line 888
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    invoke-virtual {v0, p0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->initialize(Lmobi/beyondpod/ui/views/base/BPDrawerLayout$IDrawerOwner;)V

    .line 890
    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$10;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v5, 0x7f100195

    const v6, 0x7f100194

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lmobi/beyondpod/ui/views/MasterView$10;-><init>(Lmobi/beyondpod/ui/views/MasterView;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 933
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 934
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    goto :goto_0

    .line 937
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    :goto_0
    return-void
.end method

.method private introduceNavigator(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 868
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    if-eqz p1, :cond_0

    .line 869
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/Workspace;->Feeds:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->expandFirstCategory()V

    .line 871
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->_Handler:Landroid/os/Handler;

    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$9;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$9;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private lockCurrentScreenOrientation()V
    .locals 3

    .line 1141
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "window"

    .line 1143
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/MasterView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1144
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1149
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 1151
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    if-ne v1, v2, :cond_2

    const/16 v0, 0x9

    .line 1156
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1158
    :cond_2
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static master()Lmobi/beyondpod/ui/views/MasterView;
    .locals 1

    .line 313
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->masterActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_0
    check-cast v0, Lmobi/beyondpod/ui/views/MasterView;

    return-object v0
.end method

.method private navigateToViewBasedOnIntentSource(Landroid/content/Intent;)V
    .locals 3

    .line 943
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 946
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BeyondPod Received intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 948
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "mobi.beyondpod.ui.views.PlaylistEditorActivity"

    .line 949
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v0, 0x800005

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->openDrawer(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 955
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, "mobi.beyondpod.ui.dialogs.WidgetActionPicker"

    .line 956
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 958
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isCurrentlyPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 959
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/Workspace;->showPlayer(Z)V

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 963
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v1, "mobi.beyondpod.action.OPEN_PLAYER"

    .line 964
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 966
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->requestDrawersClose()V

    .line 967
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/Workspace;->showPlayer(Z)V

    return-void

    :cond_4
    if-eqz p1, :cond_5

    const-string v0, "mobi.beyondpod.action.VIEW_LATEST"

    .line 971
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 973
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    sget-object v0, Lmobi/beyondpod/rsscore/categories/CategoryManager;->CategoryHome:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/Workspace;->selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    const-string v0, "com.google.android.gms.actions.SEARCH_ACTION"

    .line 978
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "query"

    .line 980
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 981
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 983
    invoke-virtual {p0, v0, v1, p1, v1}, Lmobi/beyondpod/ui/views/MasterView;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void

    :cond_6
    if-eqz p1, :cond_7

    const-string v0, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    .line 988
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "query"

    .line 990
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 993
    invoke-static {v0}, Lmobi/beyondpod/services/player/smartplay/PlayFromQuery;->cmdPlayFromVoiceSearch(Ljava/lang/String;)Z

    return-void

    .line 998
    :cond_7
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MasterView;->openSearchResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1001
    :cond_8
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MasterView;->openAddFeedActivityIfNeeded(Landroid/content/Intent;)V

    return-void
.end method

.method private openAddFeedActivityIfNeeded(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_c

    .line 1058
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const-string v1, "android.intent.action.SEND"

    .line 1063
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.TEXT"

    .line 1065
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1068
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1069
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    .line 1075
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1077
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 1079
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1082
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//subscribe/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1085
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//subscribeonandroid.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1088
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//www.subscribeonandroid.com/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x1d

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1091
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "//http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    .line 1092
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v1, "//"

    .line 1093
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1096
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1098
    :goto_0
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v0, "\\\\x"

    const-string v1, "%"

    .line 1100
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1101
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->safeDecodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1102
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1108
    :cond_8
    :goto_1
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isPodcastOrFeedUrl(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1110
    sget-object p1, Lmobi/beyondpod/ui/views/MasterView;->_LastAddFeedUri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 1113
    :cond_9
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedByUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    .line 1116
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->THIS_FEED_ALREADY_EXISTS_IN_CATEGORY:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getCategories()Lmobi/beyondpod/rsscore/categories/FeedCategories;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategories;->getPrimary()Lmobi/beyondpod/rsscore/categories/FeedCategory;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/categories/FeedCategory;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 1120
    :cond_a
    sput-object v0, Lmobi/beyondpod/ui/views/MasterView;->_LastAddFeedUri:Landroid/net/Uri;

    .line 1123
    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/MasterView;->toggleTitleIndeterminateProgress(Z)V

    .line 1124
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->_Handler:Landroid/os/Handler;

    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$11;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$11;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    return-void

    :cond_c
    :goto_2
    return-void
.end method

.method private openSearchResult(Landroid/content/Intent;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "android.intent.action.SEARCH"

    .line 1008
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v0, "query"

    .line 1010
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1011
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenFeedSearch(Ljava/lang/String;)V

    return v2

    .line 1015
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1017
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmobi/beyondpod/ui/evosearch/RepositorySearchProvider;->PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1021
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1022
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    .line 1024
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1026
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPath(Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 1029
    invoke-static {v1, p1, p1, p0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdOpenEpisodeNotes(Lmobi/beyondpod/rsscore/Track;Lmobi/beyondpod/rsscore/TrackList;Landroid/view/View;Landroid/support/v4/app/FragmentActivity;)V

    return v2

    .line 1036
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    .line 1037
    invoke-static {p1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1040
    invoke-virtual {p0, p1, v0, v0}, Lmobi/beyondpod/ui/views/MasterView;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    :cond_2
    return v0
.end method

.method private registerCommands()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 324
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_externalCommandReceiver:Lmobi/beyondpod/services/scheduler/CommandReceiver;

    if-nez v0, :cond_2

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 328
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 329
    sget-object v1, Lmobi/beyondpod/services/scheduler/CommandReceiver;->ALL_COMMANDS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 330
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 333
    :cond_1
    new-instance v1, Lmobi/beyondpod/services/scheduler/CommandReceiver;

    invoke-direct {v1}, Lmobi/beyondpod/services/scheduler/CommandReceiver;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_externalCommandReceiver:Lmobi/beyondpod/services/scheduler/CommandReceiver;

    .line 334
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_externalCommandReceiver:Lmobi/beyondpod/services/scheduler/CommandReceiver;

    invoke-virtual {p0, v1, v0}, Lmobi/beyondpod/ui/views/MasterView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private restoreCurrentScreenOrientation()V
    .locals 2

    .line 1164
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->orientationLock()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1165
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    goto :goto_0

    .line 1166
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->orientationLock()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1167
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1169
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    :goto_0
    return-void
.end method

.method private setMasterViewTitle(Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;)V
    .locals 1

    .line 775
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/TitleBar;->setTitle(Lmobi/beyondpod/ui/views/base/TitleBar$TitleInfo;)V

    :cond_0
    return-void
.end method

.method private showAppBar()V
    .locals 3

    .line 1501
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_AppBar:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_AppBar:Landroid/support/design/widget/AppBarLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method private showStartupWarningsIfNeeded()V
    .locals 4

    .line 513
    sget v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->RepositoryLoadKind:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 515
    sput v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;->RepositoryLoadKind:I

    .line 518
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_Handler:Landroid/os/Handler;

    new-instance v1, Lmobi/beyondpod/ui/views/MasterView$7;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/MasterView$7;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 543
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->subFeeds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 545
    invoke-static {}, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    const-class v2, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 548
    sget v1, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->ACTIVITY_REQUEST_FirstRun:I

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/ui/views/MasterView;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private toggleTitleIndeterminateProgress(Z)V
    .locals 0

    .line 781
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/MasterView;->setLoadingProgressVisibility(Z)V

    return-void
.end method

.method private unRegisterCommands()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 339
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_externalCommandReceiver:Lmobi/beyondpod/services/scheduler/CommandReceiver;

    if-eqz v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isOreoCompatible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_externalCommandReceiver:Lmobi/beyondpod/services/scheduler/CommandReceiver;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateGCMRegistration()V
    .locals 4

    .line 1210
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->isGCMSupportedOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1213
    :cond_0
    invoke-static {}, Lmobi/beyondpod/sync/ChangeTracker;->isTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1217
    :cond_1
    invoke-static {}, Lmobi/beyondpod/evo/GcmRegistrar;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 1218
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1230
    :cond_2
    invoke-static {}, Lmobi/beyondpod/evo/GcmRegistrar;->isRegisteredOnServer()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 1236
    :cond_3
    new-instance v1, Lmobi/beyondpod/ui/views/MasterView$12;

    invoke-direct {v1, p0, v0}, Lmobi/beyondpod/ui/views/MasterView$12;-><init>(Lmobi/beyondpod/ui/views/MasterView;Ljava/lang/String;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_RegisterTask:Landroid/os/AsyncTask;

    .line 1267
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "--- Found local CDS registration, but not server one. Updating server..."

    invoke-static {v0, v1, v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 1270
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_RegisterTask:Landroid/os/AsyncTask;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 1220
    :cond_4
    :goto_0
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "--- Found that CDS is enabled but the device is not registered with the CDS server! Registering..."

    .line 1221
    invoke-static {v0, v1, v2}, Lmobi/beyondpod/sync/TrackedChangeBase;->logSyncEvent(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/sync/TrackedChangeBase;)V

    .line 1225
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/evo/GcmRegistrar;->register(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1467
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public autoExpandPlayerOnNextPlay()V
    .locals 1

    .line 493
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->autoExpandPlayerOnNextPlay()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1187
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1188
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1202
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_0
    if-nez v0, :cond_0

    .line 1198
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->adjustVolume(I)Z

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_0

    .line 1193
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->adjustVolume(I)Z

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableAppBarAutoScroll(Z)V
    .locals 3

    const v0, 0x7f090292

    .line 1507
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 1508
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1515
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 1517
    check-cast v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    if-eqz p1, :cond_0

    const/16 p1, 0x15

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq v1, p1, :cond_2

    if-nez p1, :cond_1

    .line 1524
    sget-object v1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v2, "Scroll disabled"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->showAppBar()V

    goto :goto_1

    .line 1528
    :cond_1
    sget-object v1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v2, "Scroll enabled"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :goto_1
    invoke-virtual {v0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->setScrollFlags(I)V

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1175
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    sget v0, Lmobi/beyondpod/ui/views/MasterView;->_InstanceCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lmobi/beyondpod/ui/views/MasterView;->_InstanceCount:I

    .line 1178
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### MasterView FINALIZED! Remaining instances: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lmobi/beyondpod/ui/views/MasterView;->_InstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 0

    return-object p0
.end method

.method public getImageLoaderInstance()Lmobi/beyondpod/ui/core/volley/ImageLoader;
    .locals 1

    .line 1310
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    return-object v0
.end method

.method public isNavigatorDrawerOpen()Z
    .locals 2

    .line 1347
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method public isOwnerDestroyed()Z
    .locals 1

    .line 1359
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method public isPlaylistDrawerOpen()Z
    .locals 2

    .line 1341
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 476
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 478
    sget p3, Lmobi/beyondpod/ui/views/onboarding/startup/FirstRun;->ACTIVITY_REQUEST_FirstRun:I

    const/4 v0, -0x1

    if-ne p1, p3, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p3, 0x1

    .line 481
    invoke-direct {p0, p3}, Lmobi/beyondpod/ui/views/MasterView;->introduceNavigator(Z)V

    .line 484
    :cond_0
    sget p3, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPager;->ACTIVITY_REQUEST_ContentViewPager:I

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_1

    .line 487
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->onMediaItemSelected()V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1473
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->onDrawerBackKeyPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1478
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1483
    :catch_0
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "Exception during onBackPressed"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCastDeviceDetected()V
    .locals 2

    .line 1293
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    .line 1294
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1297
    :cond_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->invalidateOptionsMenu(Landroid/app/Activity;)Z

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 787
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 788
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onConnectedToDevice(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConnectionRefused()V
    .locals 2

    const v0, 0x7f1002fa

    const/4 v1, 0x1

    .line 1286
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    # DIAG: Toast to confirm MasterView.onCreate() was entered
    const-string v1, "BP: MV-onCreate started"
    const/4 v2, 0x1
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 350
    :try_start_0
    sget v1, Lmobi/beyondpod/ui/views/MasterView;->_InstanceCount:I

    add-int/2addr v1, v0

    sput v1, Lmobi/beyondpod/ui/views/MasterView;->_InstanceCount:I

    .line 351
    sget-object v1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### MasterView Created! Current instances: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lmobi/beyondpod/ui/views/MasterView;->_InstanceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    sget v1, Lmobi/beyondpod/ui/views/MasterView;->_InstanceCount:I

    if-le v1, v0, :cond_0

    .line 353
    sget-object v1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "################## Possible MasterView Leak ############ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lmobi/beyondpod/ui/views/MasterView;->_InstanceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceErrorInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    sget-object v1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v2, "master View Created"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmobi/beyondpod/BeyondPodApplication;->setMasterActivity(Landroid/app/Activity;)V

    .line 360
    invoke-static {}, Lmobi/beyondpod/ui/core/ThemeManager;->activeThemeId()I

    move-result v1

    iput v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_LastActiveTheme:I

    .line 361
    iget v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_LastActiveTheme:I

    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/MasterView;->setTheme(I)V

    .line 365
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 367
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 371
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 373
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->forwardToSplashScreenOnNoStorageCard()V

    return-void

    .line 379
    :cond_1
    # DIAG: Toast to confirm isInitialized() returned true in MasterView
    const-string v1, "BP: isInit=true, continuing"
    const/4 v2, 0x1
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->orientationLock()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 380
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->orientationLock()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 382
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->setRequestedOrientation(I)V

    .line 384
    :cond_3
    :goto_0
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/MasterView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    const-class v5, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v1, v4, v5}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 385
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/MasterView;->_PlaylistListener:Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;

    const-class v5, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v1, v4, v5}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 386
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/MasterView;->_CmdCloseListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEventListener;

    const-class v5, Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEvent;

    invoke-virtual {v1, v4, v5}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 387
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/MasterView;->_CmdSelectCategoryListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEventListener;

    const-class v5, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;

    invoke-virtual {v1, v4, v5}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 388
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/MasterView;->_LockScreenOrientationListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEventListener;

    const-class v5, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;

    invoke-virtual {v1, v4, v5}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 389
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v4, p0, Lmobi/beyondpod/ui/views/MasterView;->_ApplicationEventListener:Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEventListener;

    const-class v5, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    invoke-virtual {v1, v4, v5}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->subscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 391
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_Handler:Landroid/os/Handler;

    .line 393
    new-instance v1, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/core/volley/ImageLoaderTrack;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    # DIAG: Toast to confirm we reached setContentView
    const-string v2, "BP: about to setContentView"
    const/4 v3, 0x1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const v1, 0x7f0c007e

    .line 395
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/MasterView;->setContentView(I)V

    const v1, 0x7f090292

    .line 397
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/MasterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 398
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/MasterView;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const v1, 0x7f090049

    .line 400
    invoke-virtual {p0, v1}, Lmobi/beyondpod/ui/views/MasterView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_AppBar:Landroid/support/design/widget/AppBarLayout;

    .line 403
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->initializeDrawers()V

    .line 405
    new-instance v1, Lmobi/beyondpod/ui/views/base/TitleBar;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/base/TitleBar;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    iput-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_Title:Lmobi/beyondpod/ui/views/base/TitleBar;

    const/4 v1, 0x0

    const v4, 0x7f090172

    .line 410
    invoke-virtual {p0, v4}, Lmobi/beyondpod/ui/views/MasterView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lmobi/beyondpod/ui/views/MasterView;->_LoadingProgress:Landroid/view/View;

    .line 411
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/MasterView;->setLoadingProgressVisibility(Z)V

    const v2, 0x7f0902b9

    .line 413
    invoke-virtual {p0, v2}, Lmobi/beyondpod/ui/views/MasterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/ui/views/Workspace;

    iput-object v2, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    .line 414
    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v2, v1, p1, p0}, Lmobi/beyondpod/ui/views/Workspace;->Initialize(Lmobi/beyondpod/ui/core/MasterViewState;Landroid/os/Bundle;Lmobi/beyondpod/ui/views/Workspace$IWorkspaceOwner;)V

    .line 415
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->appBarScrollAllowed()Z

    move-result p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/MasterView;->enableAppBarAutoScroll(Z)V

    .line 417
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result p1

    if-eq p1, v3, :cond_4

    .line 418
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 420
    :cond_4
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->finishInitialization()V

    .line 424
    :cond_5
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "DiscoveryFragment"

    .line 425
    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_6

    .line 427
    new-instance v1, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;

    invoke-direct {v1}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;-><init>()V

    .line 428
    invoke-virtual {v1, p0}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->setOwner(Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment$IDiscoveryFragmentOwner;)V

    .line 429
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/BeyondPodApplication;->chromecastDevice()Lmobi/beyondpod/services/player/impl/ChromecastDevice;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/core/mediarouter/MediaRouteDiscoveryFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 430
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const-string v2, "DiscoveryFragment"

    invoke-virtual {p1, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 434
    :cond_6
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->updateGCMRegistration()V

    .line 435
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->registerCommands()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 439
    sget-object v1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v2, "Exception loading the Workspace!"

    invoke-static {v1, v2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    # Capture full stack trace before exception ref gets overwritten
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 440
    sget-object v1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->lastApplicationException:Ljava/lang/String;

    goto :goto_1

    .line 441
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 442
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmobi/beyondpod/ui/views/MasterView;->BEYOND_POD_FAILED_TO_START:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lmobi/beyondpod/ui/views/MasterView;->BEYOND_POD_WILL_NOW_EXIT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # DIAGNOSTIC: Append stack trace and show AlertDialog (stays visible for screenshot)
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n\n---STACK---\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "DIAG: onCreate exception"
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v4, "OK"
    const/4 v5, 0x0
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 658
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "===> OnDestroy"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_Handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 664
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    .line 666
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->unRegisterCommands()V

    .line 667
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView;->_RepositoryListener:Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEventListener;

    const-class v3, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 668
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView;->_PlaylistListener:Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;

    const-class v3, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 669
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView;->_CmdCloseListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEventListener;

    const-class v3, Lmobi/beyondpod/evo/ApplicationCmdEvents$CloseMasterViewEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 670
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView;->_CmdSelectCategoryListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEventListener;

    const-class v3, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 671
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView;->_LockScreenOrientationListener:Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEventListener;

    const-class v3, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 672
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/MasterView;->_ApplicationEventListener:Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEventListener;

    const-class v3, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;

    invoke-virtual {v0, v2, v3}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->unsubscribe(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 674
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->release()V

    .line 677
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    if-eqz v0, :cond_2

    .line 678
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->onActivityDestroy()V

    .line 680
    :cond_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/BeyondPodApplication;->setMasterActivity(Landroid/app/Activity;)V

    .line 683
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_RegisterTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_3

    .line 684
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_RegisterTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 686
    :cond_3
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onDisconnectFromDevice()V
    .locals 0

    return-void
.end method

.method public onDrawerBackKeyPressed()Z
    .locals 5

    .line 1366
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->closeSmartPlayListIfNeeded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1370
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isPlaylistDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v2, 0x800005

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->closeDrawer(I)V

    return v1

    .line 1377
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->userHomeScreen()I

    move-result v0

    const/4 v2, 0x0

    const v3, 0x800003

    if-nez v0, :cond_5

    .line 1379
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isNavigatorDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    invoke-virtual {v0, v3}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->closeDrawer(I)V

    return v1

    .line 1385
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->isFullScreenPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1388
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->turnOffPlaylistPagerIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 1391
    :cond_3
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->collapsePlayer()V

    return v1

    :cond_4
    return v2

    .line 1399
    :cond_5
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->userHomeScreen()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 1401
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isNavigatorDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1403
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->finish()V

    return v1

    .line 1407
    :cond_6
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->isFullScreenPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1410
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->turnOffPlaylistPagerIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 1413
    :cond_7
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->collapsePlayer()V

    return v1

    .line 1417
    :cond_8
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isNavigatorDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1419
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    invoke-virtual {v0, v3}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->openDrawer(I)V

    return v1

    .line 1425
    :cond_9
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->userHomeScreen()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_d

    .line 1427
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isNavigatorDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1429
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    invoke-virtual {v0, v3}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->closeDrawer(I)V

    return v1

    .line 1433
    :cond_a
    invoke-static {}, Lmobi/beyondpod/services/player/PlayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1435
    invoke-static {v2}, Lmobi/beyondpod/rsscore/ConfigurationHD;->setPlayerDismissedByUser(Z)V

    .line 1436
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/Workspace;->showPlayer(Z)V

    return v1

    .line 1440
    :cond_b
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->isFullScreenPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1442
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->turnOffPlaylistPagerIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 1446
    :cond_c
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->finish()V

    :cond_d
    return v1
.end method

.method public onIncompatiblePlayServices()V
    .locals 1

    const/4 v0, 0x1

    .line 1304
    invoke-static {p0, v0}, Lmobi/beyondpod/services/player/impl/ChromecastDevice;->checkGooglePlayServices(Landroid/app/Activity;Z)Z

    return-void
.end method

.method public onMediaItemSelected()V
    .locals 2

    .line 1490
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->isPlayerVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1492
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/Workspace;->showPlayer(Z)V

    .line 1493
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->autoExpandPlayerOnNextPlay()V

    goto :goto_0

    .line 1495
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->isMiniPlayerVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1496
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->expandPlayer()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 465
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 467
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    iget-boolean v0, v0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/MasterView;->navigateToViewBasedOnIntentSource(Landroid/content/Intent;)V

    goto :goto_0

    .line 470
    :cond_0
    sget-object p1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v0, "onNewIntent received while workspace is not yet initialized! Ignoring..."

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 740
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->isDrawerIndicatorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isPlaylistDrawerOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->togglePlaylistDrawer()V

    return v0

    .line 749
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 752
    :cond_1
    iget-object v1, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmobi/beyondpod/ui/views/Workspace;->handleOptionsMenu(ILandroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 753
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method protected onPause()V
    .locals 2

    .line 639
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "===> OnPause"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->onMainWindowHidden()V

    .line 643
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->onActivityPause()V

    .line 645
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 451
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 452
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 459
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .line 620
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 621
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "===> OnPostResume"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->isRepositoryAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->finishInitialization()V

    goto :goto_0

    .line 629
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******* OnPosResume found that repository is not loaded! (repo state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->repositoryLoadState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Loading repository..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->initializeAndLoadRepository()Z

    :goto_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 728
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 730
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    iget-boolean v0, v0, Lmobi/beyondpod/ui/views/Workspace;->DataIsLoadedInWorkspaceViews:Z

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/Workspace;->prepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onRestart()V
    .locals 2

    .line 556
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "===> OnRestart"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 720
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 721
    sget-object p1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v0, "===> RestoreInstanceState"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->refreshActionBarTitle()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 580
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 581
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "===> OnResume"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_LastActiveTheme:I

    invoke-static {}, Lmobi/beyondpod/ui/core/ThemeManager;->activeThemeId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 594
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->recreate()V

    return-void

    .line 606
    :cond_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->onMainWindowVisible()V

    .line 609
    invoke-static {}, Lmobi/beyondpod/ui/views/MasterView;->master()Lmobi/beyondpod/ui/views/MasterView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 610
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/beyondpod/BeyondPodApplication;->setMasterActivity(Landroid/app/Activity;)V

    .line 612
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/Workspace;->onActivityResume()V

    .line 614
    invoke-static {}, Lmobi/beyondpod/services/player/MediaButtonIntentReceiver;->startListeningForMediaButton()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 705
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 706
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "===> SaveInstanceState"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/Workspace;->saveCurrentStateToBundle(Landroid/os/Bundle;)V

    .line 710
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->getChangingConfigurations()I

    move-result p1

    if-nez p1, :cond_0

    .line 712
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryAsync()V

    .line 713
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->saveRepositoryAsync()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 563
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "===> OnStart"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 571
    sget-object v1, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Possible Google Analytics crash: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->clearNotification()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 651
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    const-string v1, "===> OnStop"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/ItemStateHistory;->saveHistoryAsync()V

    .line 653
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3

    .line 692
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onTrimMemory(I)V

    .line 694
    sget-object v0, Lmobi/beyondpod/ui/views/MasterView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory called! Level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Releasing image caches..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    if-eqz p1, :cond_0

    .line 696
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->_ImageLoader:Lmobi/beyondpod/ui/core/volley/ImageLoader;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/core/volley/ImageLoader;->evictAll()V

    .line 698
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    if-eqz p1, :cond_1

    .line 699
    iget-object p1, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/Workspace;->onTrimMemory()V

    :cond_1
    return-void
.end method

.method public openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V
    .locals 1

    .line 1454
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->showAppBar()V

    .line 1455
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0, p1, p2, p3}, Lmobi/beyondpod/ui/views/Workspace;->openFeed(Lmobi/beyondpod/rsscore/Feed;ZZ)V

    return-void
.end method

.method public openNavigator()V
    .locals 2

    .line 1335
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->openDrawer(I)V

    return-void
.end method

.method public refreshActionBarTitle()V
    .locals 1

    .line 760
    new-instance v0, Lmobi/beyondpod/ui/views/MasterView$8;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/MasterView$8;-><init>(Lmobi/beyondpod/ui/views/MasterView;)V

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/MasterView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestDrawersClose()V
    .locals 1

    .line 1316
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->closeDrawers()V

    return-void
.end method

.method public selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 1

    .line 1460
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/MasterView;->showAppBar()V

    .line 1461
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->Workspace:Lmobi/beyondpod/ui/views/Workspace;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/Workspace;->selectCategory(Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return-void
.end method

.method public setLoadingProgressVisibility(Z)V
    .locals 1

    .line 1537
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_LoadingProgress:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)V
    .locals 0

    .line 500
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/MasterView;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    return-void
.end method

.method public togglePlaylistDrawer()V
    .locals 2

    .line 1322
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isPlaylistDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 1326
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->openDrawer(I)V

    .line 1327
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/MasterView;->isNavigatorDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lmobi/beyondpod/ui/views/MasterView;->_DrawerLayout:Lmobi/beyondpod/ui/views/base/BPDrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/BPDrawerLayout;->closeDrawer(I)V

    :cond_1
    :goto_0
    return-void
.end method
