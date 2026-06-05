.class Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;
.super Landroid/webkit/WebChromeClient;
.source "HtmlViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/fragments/HtmlViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebChrome"
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/fragments/HtmlViewFragment;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 431
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    if-eqz p1, :cond_0

    .line 433
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;->SetProgress(I)V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 421
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    if-eqz p1, :cond_0

    .line 422
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    invoke-interface {p1}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;->getActivityTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 423
    iget-object p1, p0, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$WebChrome;->this$0:Lmobi/beyondpod/ui/fragments/HtmlViewFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/fragments/HtmlViewFragment;->_OwnerListener:Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/fragments/HtmlViewFragment$HtmlViewOwnerListener;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
