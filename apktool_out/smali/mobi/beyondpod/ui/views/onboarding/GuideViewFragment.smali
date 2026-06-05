.class public final Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;
.super Landroid/support/v4/app/Fragment;
.source "GuideViewFragment.java"


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

.method public static newInstance(Ljava/lang/String;)Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;
    .locals 1

    .line 26
    new-instance v0, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;-><init>()V

    .line 27
    iput-object p0, v0, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;->_PageUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "TestFragment:Content"

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TestFragment:Content"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;->_PageUrl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0c0072

    const/4 p3, 0x0

    .line 45
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0902ac

    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    .line 47
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 p3, 0x0

    .line 48
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 49
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 50
    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 52
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 54
    new-instance p2, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment$1;

    invoke-direct {p2, p0}, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment$1;-><init>(Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 73
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 74
    iget-object p2, p0, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;->_PageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "TestFragment:Content"

    .line 82
    iget-object v1, p0, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;->_PageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
