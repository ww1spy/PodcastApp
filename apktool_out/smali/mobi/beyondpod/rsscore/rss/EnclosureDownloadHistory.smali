.class public Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;
.super Ljava/lang/Object;
.source "EnclosureDownloadHistory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EnclosureDownloadHistory"

.field static _SaveHistoryRunnable:Ljava/lang/Runnable;

.field private static _SavingHistory:Z

.field private static _lastSize:I

.field private static m_history:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 172
    new-instance v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory$1;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory$1;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 39
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->saveHistoryInternal()V

    return-void
.end method

.method public static addEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V
    .locals 0

    .line 74
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->addEnclosureInternal(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    .line 75
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->saveHistoryAsync()V

    return-void
.end method

.method private static addEnclosureInternal(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V
    .locals 7

    .line 80
    const-class p1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;

    monitor-enter p1

    .line 82
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Inserted download history for: %s (hash:%s) %d %s..."

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->relativeLocalFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureID()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 p0, 0x2

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, p0

    const/4 p0, 0x3

    aput-object v0, v4, p0

    .line 84
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static dumpHistoryData()Ljava/lang/String;
    .locals 10

    .line 280
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    const-wide/high16 v3, -0x8000000000000000L

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_1

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v1

    if-gez v8, :cond_2

    .line 286
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 288
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-lez v8, :cond_0

    .line 289
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    .line 292
    :cond_3
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Download history is empty"

    return-object v0

    .line 295
    :cond_4
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    .line 296
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v5, v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v6, "history size: %d. history range: %s to %s."

    const/4 v7, 0x3

    .line 297
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasEntryFor(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z
    .locals 3

    .line 56
    const-class v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;

    monitor-enter v0

    .line 58
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureAlternativeID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureOldMountID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureRelativePathID()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static history()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->loadHistory()V

    .line 51
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    return-object v0
.end method

.method public static historySize()I
    .locals 1

    .line 273
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method private static loadHistory()V
    .locals 7

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    .line 114
    const-class v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;

    monitor-enter v0

    .line 116
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 121
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 130
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 132
    sget-object v6, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 140
    :catch_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    .line 152
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catch_1
    move-exception v1

    .line 156
    :try_start_6
    sget-object v2, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load download history. reason: "

    :goto_1
    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v2

    goto :goto_3

    :catch_3
    move-exception v1

    .line 144
    :goto_2
    :try_start_7
    sget-object v3, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load download history. reason: "

    invoke-static {v3, v4, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_1

    .line 152
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5

    :catch_4
    move-exception v1

    .line 156
    :try_start_9
    sget-object v2, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load download history. reason: "
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :goto_3
    if-eqz v3, :cond_0

    .line 152
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    :catch_5
    move-exception v2

    .line 156
    :try_start_b
    sget-object v3, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v4, "Unable to load download history. reason: "

    invoke-static {v3, v4, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :cond_0
    :goto_4
    throw v1

    .line 162
    :cond_1
    :goto_5
    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    sput v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_lastSize:I

    .line 163
    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modified set to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_lastSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1
.end method

.method public static removeEnclosure(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V
    .locals 0

    .line 91
    invoke-static {p0, p1}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->removeEnclosureInternal(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V

    .line 92
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->saveHistoryAsync()V

    return-void
.end method

.method private static removeEnclosureInternal(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;Z)V
    .locals 4

    .line 97
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->hasEntryFor(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    sget-object p1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v0, "Deleted download history for: %s (hash:%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->relativeLocalFileName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 99
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-class p1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;

    monitor-enter p1

    .line 104
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->history()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureID()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static saveHistoryAsync()V
    .locals 4

    .line 184
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    invoke-static {}, Lmobi/beyondpod/rsscore/repository/RepositoryPersistence;->repositoryHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_SaveHistoryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static saveHistoryInternal()V
    .locals 11

    .line 192
    sget-object v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    sget v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_lastSize:I

    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_7

    .line 198
    :cond_0
    const-class v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-boolean v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_SavingHistory:Z

    if-eqz v1, :cond_1

    .line 201
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 203
    sput-boolean v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_SavingHistory:Z

    .line 206
    sget-object v2, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v3, "Saving Download history..."

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 212
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    :try_start_2
    sget-object v3, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Integer;

    .line 216
    sget-object v7, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 218
    array-length v7, v3

    move v8, v4

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v3, v8

    .line 220
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 221
    sget-object v10, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->sync(Ljava/io/FileOutputStream;)Z

    .line 225
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    .line 238
    :try_start_3
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v3

    .line 242
    :try_start_4
    sget-object v5, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v6, "Unable to save download history"

    invoke-static {v5, v6, v3}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v3, v6

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v3

    goto :goto_5

    :catch_2
    move-exception v1

    .line 230
    :goto_1
    :try_start_5
    sget-object v5, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v6, "Unable to save download history"

    invoke-static {v5, v6, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    .line 238
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_3
    move-exception v1

    .line 242
    :try_start_7
    sget-object v3, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v5, "Unable to save download history"

    invoke-static {v3, v5, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_3
    :goto_2
    move v1, v4

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 252
    :try_start_8
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enclosureDownloadHistoryFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    invoke-static {v2}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->deleteFileIfExists(Ljava/lang/String;)Z

    .line 254
    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->m_history:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    sput v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_lastSize:I

    .line 255
    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v2, "enclosure Download history was saved to file"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntryInProduction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_4
    move-exception v1

    .line 259
    :try_start_9
    sget-object v2, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v3, "Unable to copy download history! "

    invoke-static {v2, v3, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 264
    :cond_5
    sget-object v1, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v2, "failed to save enclosure Download history!"

    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_4
    sput-boolean v4, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->_SavingHistory:Z

    .line 268
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void

    :goto_5
    if-eqz v6, :cond_6

    .line 238
    :try_start_a
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    :catch_5
    move-exception v2

    .line 242
    :try_start_b
    sget-object v3, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v4, "Unable to save download history"

    invoke-static {v3, v4, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->logException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    :cond_6
    :goto_6
    throw v1

    :catchall_2
    move-exception v1

    .line 268
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v1

    .line 194
    :cond_7
    :goto_7
    sget-object v0, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->TAG:Ljava/lang/String;

    const-string v1, "Download history not modified. No need to save!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveHistorySync()V
    .locals 0

    .line 169
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->saveHistoryInternal()V

    return-void
.end method
