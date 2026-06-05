.class public Lmobi/beyondpod/ui/fragments/HtmlViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "HtmlViewFragment.java"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Lmobi/beyondpod/ui/views/base/IWebViewOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;,
        Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;
    }
.end annotation


# static fields
.field private static final FOCUS_NODE_HREF:I = 0x66

.field private static final HEADER_FLAG:I = -0x80000000

.field private static final MENU_BROWSER_REFRESH:I = 0x6

.field private static final MENU_BROWSER_STOP_LOAD:I = 0x5

.field private static final MENU_COPY_LINK:I = 0x8

.field private static final MENU_EMAIL_LOG:I = 0xd

.field private static final MENU_LOAD_IMAGES:I = 0xb

.field private static final MENU_OPEN_IN_BROWSER:I = 0xa

.field private static final MENU_SHARE_LINK:I = 0x9

.field private static final TAG:Ljava/lang/String; = "HtmlViewFragment"


# instance fields
.field private _Handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field _IsFeedContentLink:Z

.field _OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

.field _StartupUrl:Ljava/lang/String;

.field private _TitleView:Landroid/widget/TextView;

.field protected _WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_TitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 88
    iput-boolean v1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    .line 89
    iput-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_StartupUrl:Ljava/lang/String;

    .line 438
    new-instance v0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$2;-><init>(Lmobi/beyondpod/ui/fragments/HtmlViewFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/fragments/HtmlViewFragment;)Landroid/widget/TextView;
    .locals 0

    .line 70
    iget-object p0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_TitleView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected allowLoadingUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    .line 234
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 243
    :cond_0
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "youtube.com/?v="

    .line 251
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "youtube.com?v="

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v0, "youtube.com"

    const-string v2, "youtube.com/watch"

    .line 253
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "/?v="

    const-string v2, "?v="

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 254
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 259
    :cond_2
    iget-boolean v2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 261
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.BROWSABLE"

    .line 262
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    :try_start_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v4, 0x10000

    .line 266
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 271
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.browser"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 272
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.chrome"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 273
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.amazon.cloud9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 274
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.sec.webbrowserminiapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 276
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_3

    return v3

    .line 289
    :catch_0
    :cond_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v3

    :catch_1
    return v1
.end method

.method public initialize(Ljava/lang/String;Z)V
    .locals 0

    .line 109
    iput-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_StartupUrl:Ljava/lang/String;

    .line 110
    iput-boolean p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Z)V
    .locals 2

    .line 295
    iput-boolean p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    .line 297
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    if-eqz p2, :cond_0

    .line 298
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p2, p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_0
    sget-object p2, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attemting to load URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " while the fragment is not yet created. Ignoring..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 125
    check-cast p1, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    iput-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 131
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 132
    check-cast p1, Landroid/app/Activity;

    .line 133
    check-cast p1, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    iput-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 482
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 483
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_Handler:Landroid/os/Handler;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 484
    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->requestFocusNodeHref(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4

    .line 361
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 367
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x9

    if-ne p3, v0, :cond_2

    return-void

    :cond_2
    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 386
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x109000e

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_TitleView:Landroid/widget/TextView;

    .line 388
    iget-object p3, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_TitleView:Landroid/widget/TextView;

    invoke-interface {p1, p3}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 389
    iget-object p3, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_TitleView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object p3, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_Handler:Landroid/os/Handler;

    const/16 v1, 0x66

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-virtual {p3, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p3

    .line 392
    iput-object p0, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v1, p3}, Lmobi/beyondpod/ui/views/base/WebViewEx;->requestFocusNodeHref(Landroid/os/Message;)V

    const/16 p3, 0x8

    const v1, 0x7f100004

    .line 394
    invoke-interface {p1, v3, p3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 397
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 398
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 399
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 400
    invoke-virtual {p3, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    .line 402
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_3

    const/4 p3, 0x1

    const v1, 0x7f100009

    .line 403
    invoke-interface {p1, p3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 405
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->useExternalBrowser()Z

    move-result p3

    if-nez p3, :cond_4

    const/4 p3, 0x2

    const/16 v0, 0xa

    const v1, 0x7f100006

    .line 406
    invoke-interface {p1, p3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    sget-object p3, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to open HtmlView Context menu! Link:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const p2, 0x7f0c0075

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902ac

    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmobi/beyondpod/ui/views/base/WebViewEx;

    iput-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    .line 142
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowMarginNavigationInFeedItemContentDialog()Z

    move-result v0

    invoke-virtual {p2, p0, v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->initialize(Lmobi/beyondpod/ui/views/base/IWebViewOwner;Z)V

    .line 143
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    const-string v0, "HtmlViewFragment"

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setTag(Ljava/lang/Object;)V

    .line 149
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    new-instance v0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;-><init>(Lmobi/beyondpod/ui/fragments/HtmlViewFragment;)V

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 150
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    new-instance v0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$1;-><init>(Lmobi/beyondpod/ui/fragments/HtmlViewFragment;)V

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 187
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p2, p0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 189
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 194
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v0, p3}, Lmobi/beyondpod/ui/views/base/WebViewEx;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 201
    iget-object p3, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object p3, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_StartupUrl:Ljava/lang/String;

    invoke-static {p3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 206
    iget-object p3, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_StartupUrl:Ljava/lang/String;

    iget-boolean v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    invoke-virtual {p0, p3, v0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->loadUrl(Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    const-string p3, "IsFeedContentLink"

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    .line 212
    iget-boolean p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    if-eqz p2, :cond_3

    .line 214
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->loadContentViewImagesAutomatically()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    goto :goto_1

    .line 218
    :cond_3
    invoke-static {}, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;->clearNotification()V

    .line 221
    :goto_1
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 224
    iget-object p2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p2}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    .line 225
    iget-boolean p3, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/4 p3, 0x1

    .line 226
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 227
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 228
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 334
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->destroy()V

    .line 338
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDoubleTap(FFI)V
    .locals 0

    const/4 p1, 0x5

    if-ne p3, p1, :cond_0

    .line 613
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    if-eqz p1, :cond_0

    .line 614
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    invoke-interface {p1}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;->requestOwnerActivityClose()V

    :cond_0
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "attachment"

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p3

    .line 584
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p2

    if-nez p2, :cond_1

    .line 588
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    const/high16 p4, 0x10000

    invoke-virtual {p3, p2, p4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    .line 591
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_1

    .line 597
    :try_start_0
    invoke-virtual {p0, p2}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 607
    :catch_0
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 345
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->stopLoading()V

    .line 347
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->canGoBack()Z

    move-result p1

    if-nez p1, :cond_0

    return p2

    .line 350
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .line 523
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 558
    :pswitch_1
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "support@beyondpod.mobi"

    const-string v3, "BeyondPod feed Update and Download Log"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attached is "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->feedUpdateLogFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 560
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->feedUpdateLogFilePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 558
    invoke-static/range {v1 .. v6}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSendEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    return v0

    .line 551
    :pswitch_2
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->loadContentViewImagesAutomatically()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->setLoadContentViewImagesAutomatically(Z)V

    .line 552
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->loadContentViewImagesAutomatically()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 553
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->reload()V

    return v0

    .line 547
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    return v0

    .line 543
    :pswitch_4
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    return v0

    .line 535
    :pswitch_5
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string v1, "clipboard"

    invoke-virtual {p1, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v1, ""

    .line 537
    iget-object v2, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 538
    invoke-virtual {p1, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return v0

    .line 531
    :pswitch_6
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->reload()V

    goto :goto_0

    .line 527
    :pswitch_7
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->stopLoading()V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 313
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->onPause()V

    .line 314
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6

    .line 492
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 494
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    invoke-interface {v0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;->allowMenus()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 497
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->getProgress()I

    move-result v0

    const/16 v4, 0x64

    if-eq v0, v4, :cond_1

    const v0, 0x7f100039

    .line 498
    invoke-interface {p1, v3, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 499
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    const v4, 0x7f100007

    .line 501
    invoke-interface {p1, v3, v0, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v4, 0x7f0800cf

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 503
    :goto_0
    iget-boolean v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_IsFeedContentLink:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    const/4 v4, 0x2

    const v5, 0x7f100006

    .line 505
    invoke-interface {p1, v3, v0, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x8

    const/4 v4, 0x3

    const v5, 0x7f100004

    .line 507
    invoke-interface {p1, v3, v0, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x9

    const/4 v4, 0x4

    const v5, 0x7f100009

    .line 509
    invoke-interface {p1, v3, v0, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0xb

    const-string v4, ""

    .line 511
    invoke-interface {p1, v3, v0, v1, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f100005

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    .line 512
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->loadContentViewImagesAutomatically()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 515
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 516
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeedUpdateLog.htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xd

    const/4 v1, 0x7

    const v2, 0x7f100067

    .line 517
    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 320
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->onResume()V

    .line 321
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 307
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/base/WebViewEx;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 327
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 328
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_WebView:Lmobi/beyondpod/ui/views/base/WebViewEx;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/base/WebViewEx;->stopLoading()V

    return-void
.end method

.method public onVerticalScroll(II)V
    .locals 0

    return-void
.end method
