.class public final Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "WebViewFragment.java"


# static fields
.field private static final KEY_CONTENT:Ljava/lang/String; = "TestFragment:Content"


# instance fields
.field private _PageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;
    .locals 1

    const-string v0, "file:///"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;-><init>()V

    .line 30
    iput-object p0, v0, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;->_PageUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "TestFragment:Content"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TestFragment:Content"

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;->_PageUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0c006e

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902ac

    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/webkit/WebView;

    .line 50
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 52
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 53
    invoke-virtual {p3, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 55
    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 57
    new-instance p3, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment$1;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment$1;-><init>(Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;)V

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 76
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 77
    iget-object p3, p0, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;->_PageUrl:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "TestFragment:Content"

    .line 86
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/startup/WebViewFragment;->_PageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
