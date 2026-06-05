.class public Lmobi/beyondpod/ui/views/events/NavigationEvents$NavigationEvent;
.super Ljava/util/EventObject;
.source "NavigationEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/events/NavigationEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationEvent"
.end annotation


# static fields
.field public static NAVIGATE_BACK:I = 0x1

.field public static NAVIGATE_FORWARD:I


# instance fields
.field public direction:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 39
    iput p2, p0, Lmobi/beyondpod/ui/views/events/NavigationEvents$NavigationEvent;->direction:I

    return-void
.end method
