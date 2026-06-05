.class public Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;
.super Ljava/lang/Object;
.source "BackupManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/BackupManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field public fileName:Ljava/lang/String;

.field public fileSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;->fileName:Ljava/lang/String;

    .line 49
    iput-wide p2, p0, Lmobi/beyondpod/rsscore/BackupManifest$FileInfo;->fileSize:J

    return-void
.end method
