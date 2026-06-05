.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;
.super Landroid/os/AsyncTask;
.source "FeedPropertiesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CmdAddRemoveAllEnclosuresToFeedHistory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;


# direct methods
.method private constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$1;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 721
    check-cast p1, [Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 3

    if-eqz p1, :cond_1

    .line 730
    :try_start_0
    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;-><init>(I)V

    .line 731
    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {v2, v0}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->loadFromCache(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 733
    iget-object v2, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 735
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 737
    iget-object p1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->ClearAllItemsReadStatus()V

    goto :goto_0

    .line 741
    :cond_0
    iget-object p1, v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SetAllItemsAsRead()V

    .line 744
    :goto_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->saveHistorySync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 721
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 763
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 764
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 757
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$CmdAddRemoveAllEnclosuresToFeedHistory;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showDialog(I)V

    return-void
.end method
