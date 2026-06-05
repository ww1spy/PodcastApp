.class Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment$1;
.super Landroid/webkit/WebViewClient;
.source "GuideViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment$1;->this$0:Lmobi/beyondpod/ui/views/onboarding/GuideViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 67
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    const-string p2, ""

    const/4 v0, 0x0

    .line 68
    invoke-static {p1, p2, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 60
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, ""

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    const/4 p1, 0x1

    return p1
.end method
