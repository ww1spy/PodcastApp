.class public Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;
.super Ljava/util/EventObject;
.source "UpdateAndDownloadEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateAndDownloadEvent"
.end annotation


# static fields
.field public static ENCLOSURE_DOWNLOAD_COMPLETED:I = 0x2

.field public static ENCLOSURE_DOWNLOAD_QUEUE_CHANGED:I = 0x4

.field public static ENCLOSURE_DOWNLOAD_STARTED:I = 0x3

.field public static UPDATE_AND_DOWNLOAD_COMPLETED:I = 0x1

.field public static UPDATE_AND_DOWNLOAD_STARTED:I


# instance fields
.field public Track:Lmobi/beyondpod/rsscore/Track;

.field public Type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 44
    iput p2, p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;-><init>(Ljava/lang/Object;I)V

    .line 50
    iput-object p3, p0, Lmobi/beyondpod/downloadengine/UpdateAndDownloadEvents$UpdateAndDownloadEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    return-void
.end method
