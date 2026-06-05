.class public Lmobi/beyondpod/ui/core/ImageCacheEvents$ImageCacheEvent;
.super Ljava/util/EventObject;
.source "ImageCacheEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/core/ImageCacheEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageCacheEvent"
.end annotation


# static fields
.field public static final EVENT_FeedImageCacheCleared:I = 0x1

.field public static final EVENT_TrackImageCacheCleared:I


# instance fields
.field public Type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 18
    const-class v0, Lmobi/beyondpod/ui/core/ImageCacheEvents$ImageCacheEvent;

    invoke-direct {p0, v0}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 19
    iput p1, p0, Lmobi/beyondpod/ui/core/ImageCacheEvents$ImageCacheEvent;->Type:I

    return-void
.end method

.method private getEventName()Ljava/lang/String;
    .locals 1

    .line 30
    iget v0, p0, Lmobi/beyondpod/ui/core/ImageCacheEvents$ImageCacheEvent;->Type:I

    if-eqz v0, :cond_0

    const-string v0, "Unknown event!"

    return-object v0

    :cond_0
    const-string v0, "track Image Cache Cleared"

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ImageCacheEvent: %s"

    const/4 v1, 0x1

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lmobi/beyondpod/ui/core/ImageCacheEvents$ImageCacheEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
