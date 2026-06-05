.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$2;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$2;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 648
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$2;->this$1:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 649
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->feedURLErrorHelpURL(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 650
    invoke-static {}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$700()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 648
    invoke-static {p1, p2, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdStartHtmlViewActivity(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    return-void
.end method
