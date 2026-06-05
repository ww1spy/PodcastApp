.class public Lmobi/beyondpod/rsscore/Track;
.super Ljava/lang/Object;
.source "Track.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "track"

.field private static final m_InternalPlayerExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public changeTrackingEnabled:Z

.field private m_BufferedPercent:I

.field private m_ContentMimeType:Ljava/lang/String;

.field private m_ContentType:Ljava/lang/Integer;

.field private m_CurrentPlayState:I

.field private m_Deleted:Z

.field private m_DownloadSize:J

.field private m_DownloadStatus:I

.field private m_DownloadedPortion:J

.field private m_LastModifiedDate:Ljava/util/Date;

.field private m_Locked:Z

.field private m_Modified:Z

.field private m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

.field private m_Path:Ljava/lang/String;

.field private m_PlaybackSpeed:F

.field private m_Played:Z

.field private m_PlayedTime:J

.field private m_Protocol:Ljava/lang/String;

.field private m_ShowNotes:Ljava/lang/String;

.field private m_ShowNotesSize:J

.field private m_SizeOnDisk:J

.field private m_SortOrder:I

.field private m_StorageRowID:Ljava/lang/Long;

.field private m_TotalTime:J

.field private m_TrackDescription:Ljava/lang/String;

.field private m_TrackImagePath:Ljava/lang/String;

.field private m_Uri:Landroid/net/Uri;

.field private m_Url:Ljava/lang/String;

.field private m_postTitle:Ljava/lang/String;

.field private m_postUrl:Ljava/lang/String;

.field private m_rssItemID:Ljava/lang/String;

.field private m_trackName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/Track;->m_InternalPlayerExtensions:Ljava/util/ArrayList;

    .line 84
    invoke-static {}, Lmobi/beyondpod/rsscore/Track;->reloadSupportedFileTypes()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 2

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lmobi/beyondpod/rsscore/Track;-><init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;)V

    .line 100
    new-instance p2, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p0, Lmobi/beyondpod/rsscore/Track;->m_LastModifiedDate:Ljava/util/Date;

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Track;->m_SizeOnDisk:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Deleted:Z

    const-wide/16 v1, 0x0

    .line 49
    iput-wide v1, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadedPortion:J

    .line 50
    iput-wide v1, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadSize:J

    .line 51
    iput v0, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadStatus:I

    .line 53
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Modified:Z

    .line 56
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Played:Z

    const-string v3, ""

    .line 58
    iput-object v3, p0, Lmobi/beyondpod/rsscore/Track;->m_Protocol:Ljava/lang/String;

    const/16 v3, 0x2710

    .line 59
    iput v3, p0, Lmobi/beyondpod/rsscore/Track;->m_SortOrder:I

    const/4 v3, 0x0

    .line 61
    iput-object v3, p0, Lmobi/beyondpod/rsscore/Track;->m_trackName:Ljava/lang/String;

    .line 63
    iput-object v3, p0, Lmobi/beyondpod/rsscore/Track;->m_Uri:Landroid/net/Uri;

    const/4 v4, 0x2

    .line 64
    iput v4, p0, Lmobi/beyondpod/rsscore/Track;->m_CurrentPlayState:I

    const/16 v4, 0x64

    .line 65
    iput v4, p0, Lmobi/beyondpod/rsscore/Track;->m_BufferedPercent:I

    .line 67
    iput-object v3, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentType:Ljava/lang/Integer;

    .line 70
    iput-wide v1, p0, Lmobi/beyondpod/rsscore/Track;->m_SizeOnDisk:J

    .line 75
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Locked:Z

    .line 77
    iput-wide v1, p0, Lmobi/beyondpod/rsscore/Track;->m_ShowNotesSize:J

    const/high16 v3, 0x3f800000    # 1.0f

    .line 78
    iput v3, p0, Lmobi/beyondpod/rsscore/Track;->m_PlaybackSpeed:F

    const/4 v3, 0x1

    .line 80
    iput-boolean v3, p0, Lmobi/beyondpod/rsscore/Track;->changeTrackingEnabled:Z

    .line 90
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_Path:Ljava/lang/String;

    .line 91
    iput-wide v1, p0, Lmobi/beyondpod/rsscore/Track;->m_TotalTime:J

    .line 92
    iput-wide v1, p0, Lmobi/beyondpod/rsscore/Track;->m_PlayedTime:J

    .line 93
    iput-object p2, p0, Lmobi/beyondpod/rsscore/Track;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    const-string p1, ""

    .line 94
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_Protocol:Ljava/lang/String;

    .line 95
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Played:Z

    return-void
.end method

.method private getDefaultTrackName()Ljava/lang/String;
    .locals 5

    .line 272
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/Path;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isSupportedFileType()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static isSupportedExtension(Ljava/lang/String;)Z
    .locals 2

    .line 202
    invoke-static {p0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lmobi/beyondpod/rsscore/Track;->m_InternalPlayerExtensions:Ljava/util/ArrayList;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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
    return p0
.end method

.method private markModified()V
    .locals 1

    const/4 v0, 0x1

    .line 813
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Modified:Z

    .line 814
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->publishTrackChangedEvent()V

    return-void
.end method

.method private publishTrackChangedEvent()V
    .locals 0

    .line 791
    invoke-static {p0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->notifyTrackChanged(Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method

.method public static reloadSupportedFileTypes()V
    .locals 5

    .line 167
    sget-object v0, Lmobi/beyondpod/rsscore/Track;->m_InternalPlayerExtensions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getInternalPlayerSupportedFileExtensions()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getInternalPlayerSupportedFileExtensions()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    sget-object v4, Lmobi/beyondpod/rsscore/Track;->m_InternalPlayerExtensions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public allowAutoDelete()Z
    .locals 2

    .line 560
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 563
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isFullyDownloaded()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 566
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->canDeleteTracks()Z

    move-result v0

    return v0
.end method

.method public belongsTo(Lmobi/beyondpod/rsscore/Feed;)Z
    .locals 2

    .line 933
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    .line 937
    :cond_0
    invoke-virtual {v0, p1}, Lmobi/beyondpod/rsscore/Feed;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 939
    :cond_1
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->parentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public canSetAsFavorite()Z
    .locals 1

    .line 576
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->canDeleteTracks()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->locked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearPlayed()V
    .locals 5

    .line 141
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 143
    :goto_0
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Played:Z

    .line 144
    invoke-virtual {p0, v2, v3}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    if-eqz v1, :cond_1

    .line 148
    invoke-static {p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalEpisodePlayedChange(Lmobi/beyondpod/rsscore/Track;)V

    :cond_1
    return-void
.end method

.method public contentMimeType()Ljava/lang/String;
    .locals 1

    .line 826
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public contentType()I
    .locals 3

    .line 831
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentType:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 833
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentMimeType:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    invoke-static {p0}, Lmobi/beyondpod/ui/core/TrackMetadataParser;->loadMetadataFor(Lmobi/beyondpod/rsscore/Track;)Z

    .line 838
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentMimeType:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->mapMimeToContentType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentType:Ljava/lang/Integer;

    .line 840
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentType:Ljava/lang/Integer;

    .line 841
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 843
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentMimeType:Ljava/lang/String;

    .line 844
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v2

    .line 843
    invoke-static {v0, v1, v2}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->convertToStreamableMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/MediaFile;->mapMimeToContentType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentType:Ljava/lang/Integer;

    .line 848
    :cond_2
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public delete()V
    .locals 2

    .line 156
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Deleted:Z

    return-void
.end method

.method public displayName()Ljava/lang/String;
    .locals 2

    .line 361
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->podcastNamingScheme()I

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPostTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 364
    :goto_0
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public ensureTrackHasContentType()V
    .locals 1

    .line 906
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasContentType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    invoke-static {p0}, Lmobi/beyondpod/ui/core/TrackMetadataParser;->loadMetadataFor(Lmobi/beyondpod/rsscore/Track;)Z

    :cond_0
    return-void
.end method

.method public exists()Z
    .locals 1

    .line 552
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .line 772
    iget v0, p0, Lmobi/beyondpod/rsscore/Track;->m_BufferedPercent:I

    return v0
.end method

.method public getCurrentPlayState()I
    .locals 1

    .line 744
    iget v0, p0, Lmobi/beyondpod/rsscore/Track;->m_CurrentPlayState:I

    return v0
.end method

.method public getCurrentPlaybackSpeed()F
    .locals 1

    .line 730
    iget v0, p0, Lmobi/beyondpod/rsscore/Track;->m_PlaybackSpeed:F

    return v0
.end method

.method public getDownloadPercent()F
    .locals 5

    .line 670
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadSize()J
    .locals 2

    .line 628
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadSize:J

    return-wide v0
.end method

.method public getDownloadStatus()I
    .locals 1

    .line 714
    iget v0, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadStatus:I

    return v0
.end method

.method public getDownloadedPortion()J
    .locals 2

    .line 649
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadedPortion:J

    return-wide v0
.end method

.method public getIsDeleted()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Deleted:Z

    return v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 1

    .line 237
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_LastModifiedDate:Ljava/util/Date;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->getLastWriteTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_LastModifiedDate:Ljava/util/Date;

    .line 241
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_LastModifiedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_trackName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->getDefaultTrackName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_trackName:Ljava/lang/String;

    .line 261
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_trackName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFeed()Lmobi/beyondpod/rsscore/Feed;
    .locals 1

    .line 212
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-object v0
.end method

.method public getPlayedTime()J
    .locals 2

    .line 468
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_PlayedTime:J

    return-wide v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 531
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getShowNotes()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ShowNotes:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeOnDisk()J
    .locals 5

    .line 858
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_SizeOnDisk:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_SizeOnDisk:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadSize:J

    :goto_0
    return-wide v0
.end method

.method public getSortOrder()I
    .locals 1

    .line 377
    iget v0, p0, Lmobi/beyondpod/rsscore/Track;->m_SortOrder:I

    return v0
.end method

.method public getTotalTime()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_TotalTime:J

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 612
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Uri:Landroid/net/Uri;

    return-object v0

    .line 615
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Url:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 618
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Uri:Landroid/net/Uri;

    .line 620
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Uri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Url:Ljava/lang/String;

    return-object v0
.end method

.method public hasContentType()Z
    .locals 1

    .line 853
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDownloadStarted()Z
    .locals 5

    .line 698
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadedPortion:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

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

.method public hasImage()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_TrackImagePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_TrackImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShowNotes()Z
    .locals 5

    .line 329
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ShowNotesSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ShowNotes:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

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

.method public hasUrl()Z
    .locals 1

    .line 706
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initRowID(Ljava/lang/Long;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_StorageRowID:Ljava/lang/Long;

    return-void
.end method

.method public initializePlayedTimes(JJZ)V
    .locals 0

    .line 106
    iput-wide p3, p0, Lmobi/beyondpod/rsscore/Track;->m_TotalTime:J

    .line 107
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Track;->m_PlayedTime:J

    .line 108
    iput-boolean p5, p0, Lmobi/beyondpod/rsscore/Track;->m_Played:Z

    .line 109
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public isFullyDownloaded()Z
    .locals 6

    .line 682
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 689
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadedPortion()J

    move-result-wide v2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getDownloadSize()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isModified()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Modified:Z

    return v0
.end method

.method public isNew()Z
    .locals 5

    .line 427
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPartialyPlayed()Z
    .locals 1

    .line 435
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isNew()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlayed()Z
    .locals 6

    .line 443
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Played:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    const-wide/16 v0, 0x5

    cmp-long v2, v4, v0

    if-gez v2, :cond_0

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

.method public isRemoteEpisode()Z
    .locals 2

    const-string v0, "REMOTE_ADD"

    .line 542
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportedFileType()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Path:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/Path;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/Track;->isSupportedExtension(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUsingParentImage()Z
    .locals 2

    .line 893
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->topLevelParentID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lmobi/beyondpod/rsscore/Track;->m_TrackImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public locked()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Locked:Z

    return v0
.end method

.method public markPlayed()V
    .locals 5

    .line 127
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Played:Z

    .line 130
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    .line 131
    invoke-static {p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalEpisodePlayedChange(Lmobi/beyondpod/rsscore/Track;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmobi/beyondpod/rsscore/Track;->setPlayedTime(J)V

    :goto_0
    return-void
.end method

.method public patchTrackPathForCurrentRoot(Z)V
    .locals 3

    .line 863
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 865
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->patchRootPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    .line 866
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "track"

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Patching track path from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/rsscore/Track;->m_Path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iput-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Path:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public patchTrackPathToMatchParent()Z
    .locals 4

    .line 876
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 878
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->trackPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 879
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 882
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Path:Ljava/lang/String;

    .line 883
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public playbackVolumeBoost()F
    .locals 1

    .line 928
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->playbackVolumeBoost()F

    move-result v0

    return v0
.end method

.method public playedAsFraction()F
    .locals 3

    .line 502
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 505
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isNew()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 509
    :cond_1
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public playedTimeAsString()Ljava/lang/String;
    .locals 2

    .line 520
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getPlayedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public preferredPlaybackSpeed()F
    .locals 1

    .line 923
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getParentFeed()Lmobi/beyondpod/rsscore/Feed;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->preferredPlaybackSpeed()F

    move-result v0

    return v0
.end method

.method public rowID()Ljava/lang/Long;
    .locals 1

    .line 114
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_StorageRowID:Ljava/lang/Long;

    return-object v0
.end method

.method public rssItemID()Ljava/lang/String;
    .locals 1

    .line 796
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_rssItemID:Ljava/lang/String;

    return-object v0
.end method

.method public setBufferedPercent(I)V
    .locals 1

    .line 777
    iget v0, p0, Lmobi/beyondpod/rsscore/Track;->m_BufferedPercent:I

    if-eq v0, p1, :cond_0

    .line 779
    iput p1, p0, Lmobi/beyondpod/rsscore/Track;->m_BufferedPercent:I

    .line 780
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->publishTrackChangedEvent()V

    :cond_0
    return-void
.end method

.method public setContentMimeType(Ljava/lang/String;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentMimeType:Ljava/lang/String;

    const/4 p1, 0x0

    .line 820
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_ContentType:Ljava/lang/Integer;

    .line 821
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setCurrentPlayState(I)V
    .locals 1

    .line 749
    iget v0, p0, Lmobi/beyondpod/rsscore/Track;->m_CurrentPlayState:I

    if-eq v0, p1, :cond_3

    .line 751
    iput p1, p0, Lmobi/beyondpod/rsscore/Track;->m_CurrentPlayState:I

    .line 753
    iget p1, p0, Lmobi/beyondpod/rsscore/Track;->m_CurrentPlayState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget p1, p0, Lmobi/beyondpod/rsscore/Track;->m_CurrentPlayState:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 755
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->shouldRememberPlayedPosition()Z

    move-result p1

    if-nez p1, :cond_1

    .line 756
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->clearPlayed()V

    .line 760
    :cond_1
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->allowSeekingOfInternetStreams()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->hasDownloadStarted()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->isPlayed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 761
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->clearPlayed()V

    .line 764
    :cond_2
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lmobi/beyondpod/services/player/PlayList;->onTrackPlayStateChanged(Lmobi/beyondpod/rsscore/Track;)V

    .line 766
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->publishTrackChangedEvent()V

    :cond_3
    return-void
.end method

.method public setCurrentPlaybackSpeed(F)V
    .locals 1

    .line 735
    iget v0, p0, Lmobi/beyondpod/rsscore/Track;->m_PlaybackSpeed:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 737
    iput p1, p0, Lmobi/beyondpod/rsscore/Track;->m_PlaybackSpeed:F

    :cond_0
    return-void
.end method

.method public setDownloadSize(J)V
    .locals 3

    .line 633
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadSize:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 635
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadSize:J

    const/4 p1, 0x1

    .line 640
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Track;->m_Modified:Z

    :cond_0
    return-void
.end method

.method public setDownloadStatus(I)V
    .locals 0

    .line 724
    iput p1, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadStatus:I

    return-void
.end method

.method public setDownloadedPortion(J)V
    .locals 3

    .line 654
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadedPortion:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 656
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Track;->m_DownloadedPortion:J

    const/4 p1, 0x1

    .line 661
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Track;->m_Modified:Z

    :cond_0
    return-void
.end method

.method public setIsModified(Z)V
    .locals 0

    .line 419
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Track;->m_Modified:Z

    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_LastModifiedDate:Ljava/util/Date;

    return-void
.end method

.method public setLocked(Z)V
    .locals 1

    .line 586
    iget-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Locked:Z

    if-eq v0, p1, :cond_0

    .line 588
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/Track;->m_Locked:Z

    .line 589
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_trackName:Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setParentFeed(Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method public setPlayedTime(J)V
    .locals 5

    .line 473
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_PlayedTime:J

    cmp-long v2, v0, p1

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 475
    :goto_0
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Track;->m_PlayedTime:J

    .line 483
    iget-wide p1, p0, Lmobi/beyondpod/rsscore/Track;->m_PlayedTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 484
    iput-boolean v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Played:Z

    .line 486
    :cond_1
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    if-eqz v1, :cond_2

    .line 490
    invoke-static {p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalEpisodePlayedChange(Lmobi/beyondpod/rsscore/Track;)V

    .line 491
    invoke-static {p0}, Lmobi/beyondpod/rsscore/history/EpisodeHistoryManager;->addEpisodePlayedHistoryEntry(Lmobi/beyondpod/rsscore/Track;)V

    :cond_2
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_Protocol:Ljava/lang/String;

    .line 537
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setRssItemID(Ljava/lang/String;)V
    .locals 1

    .line 801
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_rssItemID:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 804
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_rssItemID:Ljava/lang/String;

    .line 805
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setSavedShowNotesSize(J)V
    .locals 0

    .line 324
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Track;->m_ShowNotesSize:J

    return-void
.end method

.method public setShowNotes(Ljava/lang/String;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_ShowNotes:Ljava/lang/String;

    .line 319
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setSortOrder(I)V
    .locals 0

    .line 382
    iput p1, p0, Lmobi/beyondpod/rsscore/Track;->m_SortOrder:I

    .line 383
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setTotalTime(J)V
    .locals 3

    .line 398
    iget-wide v0, p0, Lmobi/beyondpod/rsscore/Track;->m_TotalTime:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 400
    :goto_0
    iput-wide p1, p0, Lmobi/beyondpod/rsscore/Track;->m_TotalTime:J

    .line 401
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    if-eqz v0, :cond_1

    .line 404
    invoke-static {p0}, Lmobi/beyondpod/sync/ChangeTracker;->addLocalEpisodeUpdatedChange(Lmobi/beyondpod/rsscore/Track;)V

    :cond_1
    return-void
.end method

.method public setTrackDescription(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_TrackDescription:Ljava/lang/String;

    .line 307
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setTrackImagePath(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_TrackImagePath:Ljava/lang/String;

    .line 291
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setTrackPostTitle(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_postTitle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 342
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_postTitle:Ljava/lang/String;

    .line 343
    :goto_0
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setTrackPostUrl(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_postUrl:Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Url:Ljava/lang/String;

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iput-object p1, p0, Lmobi/beyondpod/rsscore/Track;->m_Url:Ljava/lang/String;

    .line 606
    invoke-direct {p0}, Lmobi/beyondpod/rsscore/Track;->markModified()V

    :cond_0
    return-void
.end method

.method public setUseParentImage()V
    .locals 1

    .line 901
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->topLevelParentID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/rsscore/Track;->setTrackImagePath(Ljava/lang/String;)V

    return-void
.end method

.method public shouldRememberPlayedPosition()Z
    .locals 1

    .line 786
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_ParentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/Feed;->shouldRememberPlayedPosition()Z

    move-result v0

    return v0
.end method

.method public temporaryLocked()Z
    .locals 1

    .line 571
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->playList()Lmobi/beyondpod/services/player/PlayList;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/services/player/PlayList;->currentTrack()Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "track: %s (%s/%s)"

    const/4 v1, 0x3

    .line 162
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->totalTimeAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->playedTimeAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalTimeAsMinuteString()Ljava/lang/String;
    .locals 2

    .line 458
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatSecondsAsMinutes(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalTimeAsString()Ljava/lang/String;
    .locals 2

    .line 453
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Track;->getTotalTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->formatTimeAsString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackDescription()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_TrackDescription:Ljava/lang/String;

    return-object v0
.end method

.method public trackImagePath()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_TrackImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public trackPath()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_Path:Ljava/lang/String;

    return-object v0
.end method

.method public trackPostTitle()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_postTitle:Ljava/lang/String;

    return-object v0
.end method

.method public trackPostUrl()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lmobi/beyondpod/rsscore/Track;->m_postUrl:Ljava/lang/String;

    return-object v0
.end method
