.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$2;
.super Ljava/lang/Object;
.source "FeedItemContentViewPagerBase.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 125
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->_Handler:Landroid/os/Handler;

    const/16 v2, 0x66

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 126
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->currentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 129
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$2;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$100(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
