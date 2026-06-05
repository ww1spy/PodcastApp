.class Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$1;
.super Landroid/os/Handler;
.source "FeedItemContentViewPagerBase.java"


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

    .line 87
    iput-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$1;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 94
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    const v1, 0x7f0900aa

    if-eq p1, v1, :cond_4

    const v1, 0x7f0901b1

    if-eq p1, v1, :cond_3

    const v1, 0x7f090228

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$1;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_3
    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object p1, p0, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase$1;->this$0:Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;->access$000(Lmobi/beyondpod/ui/views/contentview/FeedItemContentViewPagerBase;Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method
