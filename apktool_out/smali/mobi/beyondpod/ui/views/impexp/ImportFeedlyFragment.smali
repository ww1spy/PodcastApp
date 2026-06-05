.class public Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ImportFeedlyFragment.java"


# static fields
.field private static final FAILED_TO_LOAD_READER_SUBSCRIPTIONS:Ljava/lang/String;

.field private static final LOADING_FEED_SUBSCRIPTIONS:Ljava/lang/String;

.field private static final LOGGED_OUT_MSG:Ljava/lang/String;

.field private static final LOGIN_FAILED:Ljava/lang/String;

.field private static final MENU_LOG_OUT:I = 0x65

.field private static final OPERATION_CANCELED:Ljava/lang/String;

.field private static final RETRIEVING_ACCOUNT_DETAILS:Ljava/lang/String;

.field private static final SUCCESS:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ImportFeedlyFragment"


# instance fields
.field _AutoLoadSubscriptions:Z

.field _ForLoginOnly:Z

.field _ProgressDialog:Landroid/app/ProgressDialog;

.field _ProgressMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f10024c

    .line 50
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->FAILED_TO_LOAD_READER_SUBSCRIPTIONS:Ljava/lang/String;

    const v0, 0x7f10024d

    .line 52
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->LOADING_FEED_SUBSCRIPTIONS:Ljava/lang/String;

    const v0, 0x7f100253

    .line 53
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->SUCCESS:Ljava/lang/String;

    const v0, 0x7f100250

    .line 54
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->LOGIN_FAILED:Ljava/lang/String;

    const v0, 0x7f100251

    .line 56
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->OPERATION_CANCELED:Ljava/lang/String;

    const v0, 0x7f100252

    .line 58
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->RETRIEVING_ACCOUNT_DETAILS:Ljava/lang/String;

    const v0, 0x7f10024f

    .line 60
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->loadResourceString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->LOGGED_OUT_MSG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ForLoginOnly:Z

    .line 64
    iput-boolean v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_AutoLoadSubscriptions:Z

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->FAILED_TO_LOAD_READER_SUBSCRIPTIONS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->showNotification(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->OPERATION_CANCELED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->LOGIN_FAILED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->SUCCESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getFeedlyFeedList()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .line 120
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getFeedlyFeedList()V
    .locals 1

    .line 173
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->LOADING_FEED_SUBSCRIPTIONS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 174
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;-><init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V

    invoke-static {v0}, Lmobi/beyondpod/aggregators/feedly/Feedly;->getFeedList(Lmobi/beyondpod/aggregators/feedly/Feedly$FGetFeedsResult;)V

    return-void
.end method

.method private showNotification(Ljava/lang/CharSequence;)V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    new-instance v1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;

    invoke-direct {v1, p0, p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$2;-><init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->dismissProgressDialog()V

    .line 128
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressMessage:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;-><init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->setHasOptionsMenu(Z)V

    .line 167
    iput-boolean p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ForLoginOnly:Z

    .line 168
    iput-boolean p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_AutoLoadSubscriptions:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const p2, 0x7f0c0076

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 84
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->currentAccount()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isLoggedIn(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getFeedlyFeedList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 98
    :try_start_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 100
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    invoke-direct {p3, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x1618

    .line 101
    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 106
    :try_start_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p3, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_1
    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 73
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onOAuthAccessDenied()V
    .locals 1

    .line 282
    sget-object v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->OPERATION_CANCELED:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onOAuthAccessGranted(Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 231
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    sget-object p1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->OPERATION_CANCELED:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->showNotification(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 240
    :cond_0
    sget-object v1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->RETRIEVING_ACCOUNT_DETAILS:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 241
    new-instance v1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$FeedlyOAuthAccountInfo;

    invoke-direct {v1, p1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$FeedlyOAuthAccountInfo;-><init>(Ljava/lang/String;)V

    new-instance p1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;

    invoke-direct {p1, p0, v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$4;-><init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;Landroid/app/Activity;)V

    invoke-static {v1, p1, v0}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->getAuthToken(Lmobi/beyondpod/aggregators/AggregatorLoginHelper$AccountInfo;Lmobi/beyondpod/aggregators/AggregatorLoginHelper$GetAuthTokenResult;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 306
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 308
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->clearLogin()V

    .line 309
    sget-object p1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->LOGGED_OUT_MSG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->showNotification(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 312
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const/16 v0, 0x65

    .line 292
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const v2, 0x7f10024e

    const/4 v3, 0x0

    .line 295
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 296
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 299
    :cond_0
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->isLoggedIn()Z

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method
