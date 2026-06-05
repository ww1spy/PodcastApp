.class public Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/helpers/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public fileType:I

.field public mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;->fileType:I

    .line 89
    iput-object p2, p0, Lmobi/beyondpod/rsscore/helpers/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    return-void
.end method
