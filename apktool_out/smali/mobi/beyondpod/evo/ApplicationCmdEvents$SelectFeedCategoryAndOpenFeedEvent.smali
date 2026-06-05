.class public Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;
.super Ljava/util/EventObject;
.source "ApplicationCmdEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/evo/ApplicationCmdEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectFeedCategoryAndOpenFeedEvent"
.end annotation


# instance fields
.field public Feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object p2, p0, Lmobi/beyondpod/evo/ApplicationCmdEvents$SelectFeedCategoryAndOpenFeedEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method
