.class public Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;
.super Landroid/support/v4/app/Fragment;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/core/volley/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetainFragment"
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "BitmapCache"

    const-string v1, "Bitmap Memory Cache fragment holder finalized!"

    .line 286
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 280
    iget-object v0, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 251
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BitmapCache"

    const-string v0, "Bitmap Memory Cache fragment holder created!"

    .line 253
    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 255
    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BitmapCache"

    const-string v1, "Bitmap Memory Cache fragment holder destroyed!"

    .line 261
    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntryInDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public setObject(Ljava/lang/Object;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lmobi/beyondpod/ui/core/volley/BitmapCache$RetainFragment;->mObject:Ljava/lang/Object;

    return-void
.end method
