.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Lmobi/beyondpod/downloadengine/RssFeedCatcher$FeedUpdateListener;


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

    .line 166
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private analyzeURL(Ljava/lang/String;)V
    .locals 3

    .line 211
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f10015e

    if-nez v0, :cond_3

    const-string v0, ".mp3"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f100161

    move v1, v0

    :cond_0
    const-string v0, "http://"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-static {}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->SetTitle(Ljava/lang/String;)V

    .line 219
    invoke-static {p1}, Lmobi/beyondpod/rsscore/FeedURLPatcher;->tryPatchFeedUrl(Ljava/lang/String;)Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;->isPatched()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/FeedURLPatcher$PatchResult;->patchedURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showPatchFound(Ljava/lang/String;)V

    return-void

    .line 226
    :cond_2
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->isItunesFeed(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const v1, 0x7f10015f

    .line 232
    :cond_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {p0, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->constructFeedErroressage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showError(Ljava/lang/String;)V

    return-void
.end method

.method private constructFeedErroressage(I)Ljava/lang/String;
    .locals 3

    .line 203
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    .line 204
    invoke-virtual {v2, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f100160

    .line 203
    invoke-virtual {v0, p1, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method isItunesFeed(Ljava/lang/String;)Z
    .locals 1

    .line 237
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://phobos.apple.com"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://itunes.apple.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://phobos.apple.com"

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://itunes.apple.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onFeedUpdateCompleted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 170
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_Catcher:Lmobi/beyondpod/downloadengine/RssFeedCatcher;

    invoke-virtual {p1}, Lmobi/beyondpod/downloadengine/RssFeedCatcher;->lastFeedParseData()Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->hasParseFailed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/Feed;->setLastServerModifiedDate(Ljava/util/Date;)V

    .line 183
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$202(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Z)Z

    .line 185
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {v0, p0, v1}, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;-><init>(Ljava/lang/Object;Lmobi/beyondpod/rsscore/Feed;)V

    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    .line 186
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->finish()V

    goto :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz p1, :cond_2

    .line 192
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->analyzeURL(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const v0, 0x7f10015e

    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->constructFeedErroressage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFeedUpdateError(Lmobi/beyondpod/rsscore/Feed;Ljava/lang/Exception;)V
    .locals 3

    .line 245
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 246
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const p2, 0x7f10015d

    .line 245
    invoke-virtual {v0, p2, v1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 248
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->isGReaderFeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getFeedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->analyzeURL(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onFeedUpdateProgress(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 3

    .line 257
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->updatePercent()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " %"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->SetTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onFeedUpdateStarted(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 1

    .line 263
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-static {}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->SetTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onFeedUpdateTerminated(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 269
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 270
    iget-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$5;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
