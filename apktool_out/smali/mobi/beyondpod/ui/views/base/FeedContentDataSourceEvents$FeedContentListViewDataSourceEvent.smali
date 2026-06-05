.class public Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;
.super Ljava/util/EventObject;
.source "FeedContentDataSourceEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedContentListViewDataSourceEvent"
.end annotation


# static fields
.field public static LOAD_COMPLETED:I = 0x1

.field public static LOAD_STARTED:I


# instance fields
.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 38
    iput p2, p0, Lmobi/beyondpod/ui/views/base/FeedContentDataSourceEvents$FeedContentListViewDataSourceEvent;->type:I

    return-void
.end method
