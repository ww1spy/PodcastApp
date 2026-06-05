.class public Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;
.super Ljava/util/EventObject;
.source "ApplicationEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/events/ApplicationEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainUIVisibilityChangedEvent"
.end annotation


# instance fields
.field public isVisible:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;->isVisible:Z

    .line 96
    iput-boolean p2, p0, Lmobi/beyondpod/rsscore/events/ApplicationEvents$MainUIVisibilityChangedEvent;->isVisible:Z

    return-void
.end method
