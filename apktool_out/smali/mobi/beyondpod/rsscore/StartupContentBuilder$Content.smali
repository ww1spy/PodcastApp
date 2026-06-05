.class public Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;
.super Ljava/lang/Object;
.source "StartupContentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/StartupContentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field public assetName:Ljava/lang/String;

.field public destinationFile:Ljava/io/File;

.field public sourceResourceID:I


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->sourceResourceID:I

    .line 66
    iput-object p2, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->destinationFile:Ljava/io/File;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->assetName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->sourceResourceID:I

    .line 74
    iput-object p1, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->assetName:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lmobi/beyondpod/rsscore/StartupContentBuilder$Content;->destinationFile:Ljava/io/File;

    return-void
.end method
