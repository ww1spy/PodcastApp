.class Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;
.super Landroid/os/AsyncTask;
.source "FeedContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/FeedContentDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadFeedContentAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lmobi/beyondpod/rsscore/Feed;",
        "Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 165
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 162
    new-instance v0, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;-><init>(I)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    .line 166
    iget-object v0, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    new-instance v1, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync$1;-><init>(Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->setParseListener(Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData$ParseListener;)V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;[Ljava/lang/Object;)V
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method

.method private addItemIfNeeded(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 2

    .line 317
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getItemFilter()I

    move-result v0

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$1000(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$1100(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    .line 325
    :cond_0
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$1100(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private allowAddOnProgress()Z
    .locals 2

    .line 311
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getForceFeedItemSort()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 312
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getItemFilter()I

    move-result v0

    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isEpisodeOnlyFilter(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 160
    check-cast p1, [Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->doInBackground([Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Lmobi/beyondpod/rsscore/Feed;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    .line 190
    aget-object p1, p1, v0

    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$102(Lmobi/beyondpod/rsscore/Feed;)Lmobi/beyondpod/rsscore/Feed;

    const/4 p1, 0x0

    .line 191
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$202(Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 192
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$302(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 196
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 198
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    iget-object v2, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/rss/RssFeedCache;->loadFromCache(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;)V

    .line 203
    iget-object v1, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->hasParseFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParseException:Ljava/lang/Exception;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$202(Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 206
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$200()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->ParsedFeedType:I

    .line 207
    invoke-static {v1}, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->isRssFeedType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->data:Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/parsers/FeedParseData;->RssFeed:Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$302(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 210
    :cond_1
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$300()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 212
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$300()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncAllDownloadedWithRead(Z)V

    .line 213
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$300()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->SyncOwnerFeedReadStatus()V

    .line 214
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/beyondpod/rsscore/Feed;->setHasNewContent(Z)V

    goto :goto_0

    .line 219
    :cond_2
    new-instance v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;-><init>()V

    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$302(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 220
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$300()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object v0

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->FeedID:Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 226
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$302(Lmobi/beyondpod/rsscore/rss/entities/RssFeed;)Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    .line 227
    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$202(Ljava/lang/Exception;)Ljava/lang/Exception;

    :cond_3
    :goto_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7

    .line 254
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$100()Lmobi/beyondpod/rsscore/Feed;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$300()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 258
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->allowAddOnProgress()Z

    move-result p1

    if-nez p1, :cond_0

    .line 260
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$300()Lmobi/beyondpod/rsscore/rss/entities/RssFeed;

    move-result-object p1

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssFeed;->Items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    .line 262
    invoke-direct {p0, v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->addItemIfNeeded(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 266
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$800(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 269
    invoke-static {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$502(Z)Z

    .line 271
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$900()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " items in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$600()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 273
    sput-object p1, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIds:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    .line 275
    sput-wide v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_SavedItemIdsTimestamp:J

    .line 276
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$700()Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 281
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$700()Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    move-result-object p1

    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->isDataLoaded()Z

    move-result v0

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;->onLoadCompleted(Z)V

    .line 284
    :cond_2
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$400()Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 285
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$400()Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;->onCollectionChanged()V

    .line 289
    :cond_3
    sget-object p1, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v0, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;

    const-class v1, Lmobi/beyondpod/ui/views/FeedContentDataSource;

    sget v2, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;->LOAD_COMPLETED:I

    invoke-direct {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;-><init>(Ljava/lang/Object;I)V

    .line 290
    invoke-virtual {p1, v0}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 235
    sget-object v0, Lmobi/beyondpod/ui/views/FeedContentDataSource;->_Items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$400()Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$400()Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$CollectionChangedListener;->onCollectionChanged()V

    :cond_0
    const/4 v0, 0x1

    .line 239
    invoke-static {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$502(Z)Z

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$602(J)J

    .line 241
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$700()Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$700()Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;->onLoadStarted()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, [Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->onProgressUpdate([Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 1

    .line 300
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->allowAddOnProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 301
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadFeedContentAsync;->addItemIfNeeded(Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V

    .line 303
    :cond_0
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$700()Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    invoke-static {}, Lmobi/beyondpod/ui/views/FeedContentDataSource;->access$700()Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/FeedContentDataSource$LoadListener;->onLoadProgress()V

    :cond_1
    return-void
.end method
