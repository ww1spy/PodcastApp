.class Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "OAuthLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/OAuthLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OAuthWebChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/OAuthLoginActivity;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebChromeClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 112
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebChromeClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x64

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/view/Window;->setFeatureInt(II)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lmobi/beyondpod/ui/views/OAuthLoginActivity$OAuthWebChromeClient;->this$0:Lmobi/beyondpod/ui/views/OAuthLoginActivity;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/OAuthLoginActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
