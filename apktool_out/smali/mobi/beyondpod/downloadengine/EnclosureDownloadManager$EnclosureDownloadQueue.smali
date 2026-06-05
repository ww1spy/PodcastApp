.class Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;
.super Ljava/util/concurrent/ConcurrentLinkedQueue;
.source "EnclosureDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnclosureDownloadQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedQueue<",
        "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
        ">;"
    }
.end annotation


# instance fields
.field _SaveDownloadQueueRunnable:Ljava/lang/Runnable;

.field public downloadCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->downloadCount:I

    .line 184
    new-instance v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue$1;-><init>(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->_SaveDownloadQueueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$1;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->saveDownloadQueueToFileInternal()V

    return-void
.end method

.method private enqueueInternal(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)Z
    .locals 2

    .line 116
    iget-object v0, p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->contains(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 124
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 125
    iput v1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->downloadCount:I

    goto :goto_0

    .line 127
    :cond_2
    iget v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->downloadCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->downloadCount:I

    .line 129
    :goto_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method private onDownloadQueueChanged()V
    .locals 5

    .line 172
    sget-object v0, Lmobi/beyondpod/BeyondPodApplication;->messageBus:Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;

    new-instance v1, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;

    const-class v2, Lmobi/beyondpod/downloadengine/DownloadEngineNotificationManager;

    sget v3, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->ENCLOSURE_DOWNLOAD_QUEUE_CHANGED:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;-><init>(Ljava/lang/Object;ILmobi/beyondpod/rsscore/Track;)V

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/helpers/SimpleMessageBus;->publishEvent(Ljava/util/EventObject;)V

    .line 175
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->saveDownloadQueueToFile()V

    return-void
.end method

.method private saveDownloadQueueToFile()V
    .locals 4

    .line 180
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->_SaveDownloadQueueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->_SaveDownloadQueueRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveDownloadQueueToFileInternal()V
    .locals 10

    .line 195
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadQueueFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadQueueFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 204
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Queue is empty. Deleted the enclosure Download Queue file"

    invoke-static {v0, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 208
    :cond_0
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " enclosures to the enclosure Download Queue..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :try_start_1
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 215
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/Feed;->id()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 216
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v4, v4, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v4, v4, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 217
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v4, v4, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 218
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v4, v4, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 219
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 220
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->parentItemID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 221
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_2

    move-wide v7, v5

    goto :goto_2

    :cond_2
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_2
    invoke-virtual {v0, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 222
    iget-object v4, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v4}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->pubDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, v3, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->pubDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    :goto_3
    invoke-virtual {v0, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_0

    .line 225
    :cond_4
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 226
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_5

    .line 238
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 230
    :goto_4
    :try_start_3
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to save enclosure Download Queue"

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_5

    .line 238
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 242
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to save enclosure Download Queue"

    invoke-static {v1, v2, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    return-void

    :catchall_1
    move-exception v1

    :goto_6
    if-eqz v0, :cond_6

    .line 238
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    .line 242
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to save enclosure Download Queue"

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :cond_6
    :goto_7
    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 166
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 167
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->onDownloadQueueChanged()V

    return-void
.end method

.method public contains(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)Z
    .locals 0

    .line 160
    iget-object p1, p1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->containsUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public containsUrl(Ljava/lang/String;)Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 138
    iget-object v1, v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v1, v1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v1, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public dequeue()Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;
    .locals 1

    .line 109
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 110
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->onDownloadQueueChanged()V

    return-object v0
.end method

.method public downloadQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    new-array v0, v0, [Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    invoke-virtual {p0, v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 90
    invoke-direct {p0, v0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->enqueueInternal(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->onDownloadQueueChanged()V

    return-void
.end method

.method public enqueue(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->enqueueInternal(Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->onDownloadQueueChanged()V

    :cond_0
    return-void
.end method

.method public loadDownloadQueueFromFile()Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;",
            ">;"
        }
    .end annotation

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadQueueFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v5, 0x0

    .line 280
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    .line 281
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    .line 283
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    .line 284
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v11

    .line 285
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 286
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 288
    invoke-static {v5}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 291
    new-instance v15, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    new-instance v14, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    .line 292
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v6, v18, v20

    if-nez v6, :cond_0

    const/16 v18, 0x0

    goto :goto_2

    :cond_0
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v18, v6

    :goto_2
    const/16 v19, 0x0

    move-object v6, v14

    move-wide/from16 v12, v16

    move-object v3, v14

    move-object/from16 v14, v18

    move-object/from16 v22, v2

    move-object v2, v15

    move-object/from16 v15, v19

    invoke-direct/range {v6 .. v15}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/lang/String;)V

    invoke-direct {v2, v5, v3}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;-><init>(Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)V

    .line 291
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_1
    move-object/from16 v22, v2

    :goto_3
    move-object/from16 v2, v22

    goto :goto_0

    .line 301
    :catch_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    .line 313
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    .line 305
    :goto_4
    :try_start_6
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to load enclosure Download Queue. reason: "

    invoke-static {v4, v5, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_3

    .line 313
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    .line 317
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to load enclosure Download Queue. reason: "

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_2

    .line 313
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 317
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to load enclosure Download Queue. reason: "

    invoke-static {v2, v3, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    :cond_2
    :goto_6
    throw v1

    .line 323
    :cond_3
    :goto_7
    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " enclosures from the enclosure Download Queue..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public removeFromQueue(Ljava/lang/String;)V
    .locals 3

    .line 147
    invoke-virtual {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;

    .line 149
    iget-object v2, v1, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$DownloadableEnclosure;->enclosure:Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v2, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-super {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager$EnclosureDownloadQueue;->onDownloadQueueChanged()V

    return-void

    :cond_1
    return-void
.end method
