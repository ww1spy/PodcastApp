.class public Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;
.super Ljava/lang/Object;
.source "RssEnclosure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;
    }
.end annotation


# instance fields
.field public final DownloadPath:Ljava/lang/String;

.field public Duration:J

.field public Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

.field public TempTitle:Ljava/lang/String;

.field public Type:Ljava/lang/String;

.field public Url:Ljava/lang/String;

.field private _EnclosureID:I

.field private _Length:Ljava/lang/Long;

.field private m_ExtendedEncodingInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;",
            ">;"
        }
    .end annotation
.end field

.field private m_FileName:Ljava/lang/String;

.field private final m_ForceUniqueEnclosureNames:Z

.field m_FullPath:Ljava/lang/String;

.field private m_ParentItemId:Ljava/lang/String;

.field m_PubDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    .line 76
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_FileName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ParentItemId:Ljava/lang/String;

    .line 81
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->setEnclosureFileLength(Ljava/lang/Long;)V

    .line 82
    iput-object p8, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_PubDate:Ljava/util/Date;

    .line 83
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ForceUniqueEnclosureNames:Z

    .line 84
    iput-object p9, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->TempTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 91
    :goto_0
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    .line 92
    iput-boolean p2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ForceUniqueEnclosureNames:Z

    return-void
.end method

.method private tryGuessEnclosureExtension()Ljava/lang/String;
    .locals 2

    .line 411
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 418
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileExtensionForType(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mpga"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "mp3"

    :cond_2
    return-object v0
.end method


# virtual methods
.method public addExtendedEncoding(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;)V
    .locals 1

    .line 369
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ExtendedEncodingInfo:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ExtendedEncodingInfo:Ljava/util/ArrayList;

    .line 372
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ExtendedEncodingInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public description()Ljava/lang/String;
    .locals 1

    .line 387
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    iget-object v0, v0, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->Description:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->shortTaglessDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public downloaded()Z
    .locals 1

    .line 143
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dumpEnclosure()Ljava/lang/StringBuilder;
    .locals 13

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Episode Details"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x5

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v1, :cond_2

    .line 315
    iget-wide v10, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Duration:J

    cmp-long v1, v10, v5

    if-lez v1, :cond_0

    iget-wide v5, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Duration:J

    invoke-static {v5, v6, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "N/A"

    .line 316
    :goto_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureSizeAsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    const-string v5, "N/A"

    :goto_1
    const-string v6, "\n  \u2022 type: %s\n  \u2022 Size: %s\n  \u2022 duration: %s\n  \u2022 url: %s\n  \u2022 Download Path: %s\n\n"

    .line 318
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v10, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    aput-object v10, v4, v8

    aput-object v5, v4, v9

    aput-object v1, v4, v7

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    aput-object v1, v4, v3

    .line 320
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    .line 319
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 324
    :cond_2
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v10

    cmp-long v12, v10, v5

    if-lez v12, :cond_3

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v5

    invoke-static {v5, v6, v9}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(JZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    const-string v5, "N/A"

    :goto_2
    const-string v6, "\n  \u2022 type: %s\n  \u2022 File Size: %s\n  \u2022 downloaded: %s of %s\n  \u2022 duration: %s\n  \u2022 Added by: %s device\n  \u2022 url: %s\n  \u2022 Download Path: %s\n\n"

    const/16 v10, 0x8

    .line 327
    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    aput-object v11, v10, v8

    .line 329
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getSizeOnDisk()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v3

    aput-object v5, v10, v2

    .line 330
    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/Track;->isRemoteEpisode()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Remote"

    goto :goto_3

    :cond_4
    const-string v1, "Local"

    :goto_3
    aput-object v1, v10, v4

    const/4 v1, 0x6

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    aput-object v2, v10, v1

    const/4 v1, 0x7

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v1

    .line 328
    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :goto_4
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->enableLoggingInProduction()Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    .line 336
    :cond_5
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ExtendedEncodingInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ExtendedEncodingInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 338
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ExtendedEncodingInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;

    const-string v3, "\n---- %s Info ---\n"

    .line 340
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->type:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * Mime type: %s\n"

    .line 341
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->mimeType:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * Codec: %s (%s)\n"

    .line 342
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->format:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->codecID:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Video"

    .line 344
    iget-object v4, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, " * width: %s\n"

    .line 346
    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->width:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * height: %s\n"

    .line 347
    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->height:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * Display Aspect Ratio: %s\n"

    .line 348
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->displayAspectRatio:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * Frame Rate: %s (%s)\n"

    .line 349
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->frameRate:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->frameRateMode:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * standard: %s\n"

    .line 350
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->standard:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v3, " * bitrate: %s (%s)\n"

    .line 353
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->bitrateString:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->bitRateMode:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * duration: %s (%s)\n"

    .line 354
    new-array v4, v7, [Ljava/lang/Object;

    iget-wide v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->duration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-wide v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->duration:J

    .line 355
    invoke-static {v5, v6}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 354
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * File Size: %s (%s)\n"

    .line 356
    new-array v4, v7, [Ljava/lang/Object;

    iget-wide v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-wide v5, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSize:J

    .line 357
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 356
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " * File Size String: %s\n"

    .line 358
    new-array v4, v9, [Ljava/lang/Object;

    iget-object v2, v2, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure$ExtendedEncoding;->fileSizeString:Ljava/lang/String;

    aput-object v2, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_7
    const-string v1, "-------------------\n"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->description()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public enclosureAlternativeID()I
    .locals 1

    .line 295
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public enclosureFileLength()Ljava/lang/Long;
    .locals 1

    .line 382
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_Length:Ljava/lang/Long;

    return-object v0
.end method

.method public enclosureID()I
    .locals 2

    .line 271
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    if-nez v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->parentItemID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->parentItemID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->isGreaderId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->parentItemID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    goto :goto_0

    .line 278
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->parentItemID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->safeParseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    .line 282
    :cond_1
    :goto_0
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    if-nez v0, :cond_2

    .line 283
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureRelativePathID()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    .line 285
    :cond_2
    iget v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    return v0
.end method

.method public enclosureOldMountID()I
    .locals 2

    .line 300
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureAlternativeID()I

    move-result v0

    return v0
.end method

.method public enclosureRelativePathID()I
    .locals 1

    .line 290
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->relativeLocalFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public enclosureSizeAsString()Ljava/lang/String;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->enclosureFileLength()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    .line 103
    :cond_2
    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    iget-object v3, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    iget-object p1, p1, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public fileName()Ljava/lang/String;
    .locals 5

    .line 217
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_FileName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 219
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->originatingFeedID()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getFeedById(Ljava/util/UUID;)Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 221
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    iget-boolean v2, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ForceUniqueEnclosureNames:Z

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3, v4}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->createFileNameFromUrl(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_FileName:Ljava/lang/String;

    .line 225
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_FileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;
    .locals 2

    .line 183
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getTrackByPathOrUrl(Ljava/lang/String;Ljava/lang/String;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 110
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1d

    iget-object v3, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public isAllowed()Z
    .locals 1

    .line 403
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getHideUnsupportedFileTypes()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 406
    :cond_0
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->tryGuessEnclosureExtension()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Track;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnclosureInHistory()Z
    .locals 1

    .line 191
    invoke-static {p0}, Lmobi/beyondpod/rsscore/rss/EnclosureDownloadHistory;->hasEntryFor(Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;)Z

    move-result v0

    return v0
.end method

.method public isIgnorable()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    const-string v1, "gravatar.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public localFileName()Ljava/lang/String;
    .locals 3

    .line 201
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_FullPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->DownloadPath:Ljava/lang/String;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->fileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_FullPath:Ljava/lang/String;

    .line 204
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_FullPath:Ljava/lang/String;

    return-object v0
.end method

.method public parentItemID()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ParentItemId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->itemID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ParentItemId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 263
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ParentItemId:Ljava/lang/String;

    .line 266
    :cond_1
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ParentItemId:Ljava/lang/String;

    return-object v0
.end method

.method public playableState()I
    .locals 1

    .line 149
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->getLocalEnclosureTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    .line 150
    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->playableState(Lmobi/beyondpod/rsscore/Track;)I

    move-result v0

    return v0
.end method

.method public playableState(Lmobi/beyondpod/rsscore/Track;)I
    .locals 4

    if-eqz p1, :cond_6

    .line 157
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 158
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    .line 159
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getDownloadStatus()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p1

    if-ne p1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2

    .line 171
    :cond_3
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Track;->getCurrentPlayState()I

    move-result p1

    if-ne p1, v2, :cond_4

    const/4 v1, 0x7

    :cond_4
    return v1

    :cond_5
    :goto_1
    const/4 p1, 0x5

    return p1

    .line 177
    :cond_6
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->isEnclosureInHistory()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    goto :goto_2

    :cond_7
    const/4 p1, 0x4

    :goto_2
    return p1
.end method

.method public pubDate()Ljava/util/Date;
    .locals 1

    .line 242
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_PubDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->pubDate()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_PubDate:Ljava/util/Date;

    .line 248
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_PubDate:Ljava/util/Date;

    return-object v0
.end method

.method public relativeLocalFileName()Ljava/lang/String;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->localFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->convertToRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetParentItemId()V
    .locals 1

    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->m_ParentItemId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 431
    iput v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_EnclosureID:I

    return-void
.end method

.method public setEnclosureFileLength(Ljava/lang/Long;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->_Length:Ljava/lang/Long;

    return-void
.end method

.method public showNotes()Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Parent:Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;->getShowNotes()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method verifyAndFixEnclosure()V
    .locals 2

    .line 437
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 439
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 440
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->getFileType(Ljava/lang/String;)Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 445
    iget v1, v0, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;->fileType:I

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "audio/mpeg"

    .line 446
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    goto :goto_0

    .line 447
    :cond_0
    iget v0, v0, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;->fileType:I

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "video/mp4"

    .line 448
    iput-object v0, p0, Lmobi/beyondpod/rsscore/rss/entities/RssEnclosure;->Type:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
