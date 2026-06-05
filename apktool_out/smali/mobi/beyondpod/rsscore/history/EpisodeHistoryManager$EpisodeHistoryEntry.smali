.class public Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;
.super Ljava/lang/Object;
.source "EpisodeHistoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpisodeHistoryEntry"
.end annotation


# instance fields
.field private _Deleted:Z

.field private _EntryType:I

.field private _EpisodeUrl:Ljava/lang/String;

.field private _FeedUrl:Ljava/lang/String;

.field private _IsModified:Z

.field private _StorageRowID:Ljava/lang/Long;

.field private _TimeStamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 1

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_IsModified:Z

    .line 428
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_Deleted:Z

    .line 440
    iput-object p1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_StorageRowID:Ljava/lang/Long;

    .line 441
    iput-object p2, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_EpisodeUrl:Ljava/lang/String;

    .line 442
    iput-object p3, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_FeedUrl:Ljava/lang/String;

    .line 443
    iput-object p4, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_TimeStamp:Ljava/lang/Long;

    .line 444
    iput p5, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_EntryType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)V
    .locals 1

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_IsModified:Z

    .line 428
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_Deleted:Z

    .line 432
    iput-object p1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_EpisodeUrl:Ljava/lang/String;

    .line 433
    iput-object p2, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_FeedUrl:Ljava/lang/String;

    .line 434
    iput-object p3, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_TimeStamp:Ljava/lang/Long;

    .line 435
    iput p4, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_EntryType:I

    return-void
.end method


# virtual methods
.method public entryType()I
    .locals 1

    .line 469
    iget v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_EntryType:I

    return v0
.end method

.method public episodeUrl()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_EpisodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public feedUrl()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_FeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public friendlyName()Ljava/lang/String;
    .locals 3

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_EpisodeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feedUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_FeedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_TimeStamp:Ljava/lang/Long;

    .line 512
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Entry type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_EntryType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRowID(Ljava/lang/Long;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_StorageRowID:Ljava/lang/Long;

    return-void
.end method

.method public isMarkedForDeletion()Z
    .locals 1

    .line 479
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_Deleted:Z

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_IsModified:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .line 505
    iget-object v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_StorageRowID:Ljava/lang/Long;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public markDeleted()V
    .locals 1

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_Deleted:Z

    return-void
.end method

.method public rowID()Ljava/lang/Long;
    .locals 1

    .line 449
    iget-object v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_StorageRowID:Ljava/lang/Long;

    return-object v0
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 500
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_IsModified:Z

    return-void
.end method

.method public setTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_TimeStamp:Ljava/lang/Long;

    const/4 p1, 0x1

    .line 490
    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->setIsModified(Z)V

    return-void
.end method

.method public timeStamp()Ljava/lang/Long;
    .locals 1

    .line 464
    iget-object v0, p0, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager$EpisodeHistoryEntry;->_TimeStamp:Ljava/lang/Long;

    return-object v0
.end method
