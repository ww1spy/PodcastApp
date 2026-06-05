.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$2;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$2;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 115
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$2;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz p1, :cond_0

    .line 117
    new-instance p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$2;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$1;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
