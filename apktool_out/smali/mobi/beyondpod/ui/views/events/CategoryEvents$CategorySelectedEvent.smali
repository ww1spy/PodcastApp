.class public Lmobi/beyondpod/ui/views/events/CategoryEvents$CategorySelectedEvent;
.super Ljava/util/EventObject;
.source "CategoryEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/events/CategoryEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategorySelectedEvent"
.end annotation


# instance fields
.field public Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object p2, p0, Lmobi/beyondpod/ui/views/events/CategoryEvents$CategorySelectedEvent;->Category:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    return-void
.end method
