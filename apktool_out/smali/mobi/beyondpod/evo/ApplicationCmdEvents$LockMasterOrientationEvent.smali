.class public Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;
.super Ljava/util/EventObject;
.source "ApplicationCmdEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/evo/ApplicationCmdEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LockMasterOrientationEvent"
.end annotation


# instance fields
.field public Lock:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;->Lock:Z

    .line 68
    iput-boolean p2, p0, Lmobi/beyondpod/evo/ApplicationCmdEvents$LockMasterOrientationEvent;->Lock:Z

    return-void
.end method
