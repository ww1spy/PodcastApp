.class Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "OAuthLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/OAuthLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OAuthWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/ui/views/OAuthLoginActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/views/OAuthLoginActivity;Lmobi/beyondpod/ui/views/OAuthLoginActivity$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;-><init>(Lmobi/beyondpod/ui/views/OAuthLoginActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    new-instance v1, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient$2;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient$2;-><init>(Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    new-instance v1, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient$1;-><init>(Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_Account:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

    invoke-virtual {p1, p4}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;->checkRedirectUrl(Ljava/lang/String;)Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;

    move-result-object p1

    .line 125
    iget p2, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->Result:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 127
    new-instance p2, Landroid/content/Intent;

    iget-object p1, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->AuthCode:Ljava/lang/String;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->setResult(I)V

    .line 132
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->finish()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 139
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3, p2}, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 197
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    .line 198
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 178
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->_Account:Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo;->checkRedirectUrl(Ljava/lang/String;)Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;

    move-result-object p1

    .line 180
    iget p2, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->Result:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 183
    :cond_0
    iget p2, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->Result:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 185
    new-instance p2, Landroid/content/Intent;

    iget-object p1, p1, Lmobi/beyondpod/aggregators/AggregatorLoginHelper$OAuthAccountInfo$RedirectResult;->AuthCode:Ljava/lang/String;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, p2}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->setResult(I)V

    .line 190
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebViewClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->finish()V

    return v1
.end method
