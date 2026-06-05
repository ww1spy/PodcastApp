.class public Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;
.super Ljava/lang/Object;
.source "FlashStorageLocation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashStorageLocation"


# instance fields
.field _LocationStats:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->_LocationStats:Landroid/os/StatFs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    sget-object v0, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get the free space at location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static checkIfSpaceIsAvailable(Ljava/lang/String;J)Z
    .locals 1

    .line 54
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->checkIfSpaceIsAvailable(J)Z

    move-result p0

    return p0
.end method

.method public static getFreeSpaceAtFeedDownloadPath(Lmobi/beyondpod/rsscore/Feed;)J
    .locals 2

    .line 49
    new-instance v0, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;

    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/Feed;->getFeedPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->freeSpace()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public checkIfSpaceIsAvailable(J)Z
    .locals 3

    .line 59
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->freeSpace()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public freeSpace()J
    .locals 2

    .line 64
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->_LocationStats:Landroid/os/StatFs;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 67
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->_LocationStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    return-wide v0
.end method
