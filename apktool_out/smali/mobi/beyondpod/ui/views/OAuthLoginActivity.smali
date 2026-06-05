.class public Lmobi/beyondpod/ui/views/OAuthLoginActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "OAuthLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;,
        Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebChromeClient;
    }
.end annotation


# static fields
.field public static final OAuthActivityResult:I = 0x1618


# instance fields
.field _Account:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

.field _WebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 49
    invoke-static {}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper;->currentOAuthAccount()Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_Account:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onAttachedToWindow()V

    .line 85
    iget-object v0, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_WebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_Account:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

    invoke-virtual {v1}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;->OAuthEndPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->supportRequestWindowFeature(I)Z

    .line 59
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a2

    .line 61
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 65
    invoke-virtual {p1, v0, v0}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xbbbbbc

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p1, 0x7f0902ac

    .line 69
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_WebView:Landroid/webkit/WebView;

    .line 70
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_WebView:Landroid/webkit/WebView;

    new-instance v0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;-><init>(Lmobi/beyondpod/ui/views/OAuthLoginActivity;Lmobi/beyondpod/ui/views/OAuthLoginActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_WebView:Landroid/webkit/WebView;

    new-instance v0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebChromeClient;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebChromeClient;-><init>(Lmobi/beyondpod/ui/views/OAuthLoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 73
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_WebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method
