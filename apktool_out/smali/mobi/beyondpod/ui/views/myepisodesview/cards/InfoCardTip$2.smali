.class Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$2;
.super Ljava/lang/Object;
.source "InfoCardTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 116
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Message:Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/notifications/Message;->expandURLTokens()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.settings"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmobi/beyondpod/ui/commands/CommandManager;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodContentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip$2;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/cards/InfoCardTip;->_Message:Lmobi/beyondpod/ui/views/notifications/Message;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManagerBase;->cmdOpenExternalBrowser(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
