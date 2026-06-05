.class Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;
.super Ljava/lang/Object;
.source "DetectEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/helpers/DetectEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Magic"
.end annotation


# instance fields
.field hasBOM:Z

.field magic:[B

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZBB)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 77
    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    .line 78
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 79
    iget-object p3, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 v0, 0x1

    aput-byte p4, p3, v0

    .line 80
    iput-boolean p2, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->hasBOM:Z

    .line 81
    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZBBB)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 67
    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 69
    iget-object p3, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 v0, 0x1

    aput-byte p4, p3, v0

    .line 70
    iget-object p3, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 p4, 0x2

    aput-byte p5, p3, p4

    .line 71
    iput-boolean p2, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->hasBOM:Z

    .line 72
    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZBBBB)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 56
    new-array v0, v0, [B

    iput-object v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    .line 57
    iget-object v0, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 58
    iget-object p3, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 v0, 0x1

    aput-byte p4, p3, v0

    .line 59
    iget-object p3, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 p4, 0x2

    aput-byte p5, p3, p4

    .line 60
    iget-object p3, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->magic:[B

    const/4 p4, 0x3

    aput-byte p6, p3, p4

    .line 61
    iput-boolean p2, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->hasBOM:Z

    .line 62
    iput-object p1, p0, Lmobi/beyondpod/rsscore/helpers/DetectEncoding$Magic;->name:Ljava/lang/String;

    return-void
.end method
