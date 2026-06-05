.class Lmobi/beyondpod/ui/fragments/HtmlViewFragment$1;
.super Landroid/webkit/WebViewClient;
.source "HtmlViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/fragments/HtmlViewFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$1;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$1;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 169
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$1;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 182
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    .line 183
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$1;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->allowLoadingUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 176
    iget-object v0, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$1;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->allowLoadingUrl(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
