.class public Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;
.super Ljava/util/EventObject;
.source "RepositoryEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/repository/RepositoryEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepositoryEvent"
.end annotation


# static fields
.field public static final EVENT_CategoryAdded:I = 0xc

.field public static final EVENT_CategoryChanged:I = 0xe

.field public static final EVENT_CategoryDeleted:I = 0xd

.field public static final EVENT_FeedAdded:I = 0x6

.field public static final EVENT_FeedChanged:I = 0x5

.field public static final EVENT_FeedDeleted:I = 0x7

.field public static final EVENT_ItemStatusChanged:I = 0xf

.field public static final EVENT_LoadComplete:I = 0x2

.field public static final EVENT_LoadingFeeds:I = 0x0

.field public static final EVENT_RepositoryErrorOccurred:I = -0x1

.field public static final EVENT_SaveComplete:I = 0x4

.field public static final EVENT_SaveStarted:I = 0x3

.field public static final EVENT_ScanningForChanges:I = 0x1

.field public static final EVENT_TrackAdded:I = 0x8

.field public static final EVENT_TrackBeforeDelete:I = 0x9

.field public static final EVENT_TrackChanged:I = 0xb

.field public static final EVENT_TrackDeleted:I = 0xa

.field public static final EVENT_VirtualFeedUpdated:I = 0x10


# instance fields
.field public Feed:Lmobi/beyondpod/rsscore/Feed;

.field public LastException:Ljava/lang/Exception;

.field public Track:Lmobi/beyondpod/rsscore/Track;

.field public Type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 63
    const-class v0, Lmobi/beyondpod/rsscore/repository/FeedRepository;

    invoke-direct {p0, v0}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 64
    iput p1, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    return-void
.end method

.method public constructor <init>(ILmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    .line 76
    iput-object p2, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    return-void
.end method

.method public constructor <init>(ILmobi/beyondpod/rsscore/Track;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    .line 70
    iput-object p2, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    return-void
.end method

.method public static fromException(Ljava/lang/Exception;)Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;
    .locals 2

    .line 81
    new-instance v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;-><init>(I)V

    .line 82
    iput-object p0, v0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->LastException:Ljava/lang/Exception;

    return-object v0
.end method

.method private getEventName()Ljava/lang/String;
    .locals 1

    .line 95
    iget v0, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Type:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown event!"

    return-object v0

    :pswitch_0
    const-string v0, "TrackChanged"

    return-object v0

    :pswitch_1
    const-string v0, "TrackDeleted"

    return-object v0

    :pswitch_2
    const-string v0, "TrackBeforeDelete"

    return-object v0

    :pswitch_3
    const-string v0, "TrackAdded"

    return-object v0

    :pswitch_4
    const-string v0, "FeedDeleted"

    return-object v0

    :pswitch_5
    const-string v0, "FeedAdded"

    return-object v0

    :pswitch_6
    const-string v0, "FeedChanged"

    return-object v0

    :pswitch_7
    const-string v0, "SaveComplete"

    return-object v0

    :pswitch_8
    const-string v0, "SaveStarted"

    return-object v0

    :pswitch_9
    const-string v0, "LoadComplete"

    return-object v0

    :pswitch_a
    const-string v0, "ScanningForChanges"

    return-object v0

    :pswitch_b
    const-string v0, "LoadingFeeds"

    return-object v0

    :pswitch_c
    const-string v0, "RepositoryErrorOccurred"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "RepositoryEvent: %s - %s%s%s"

    const/4 v1, 0x4

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->Track:Lmobi/beyondpod/rsscore/Track;

    .line 90
    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/Track;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->LastException:Ljava/lang/Exception;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmobi/beyondpod/rsscore/repository/RepositoryEvents$RepositoryEvent;->LastException:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const-string v3, ""

    :goto_2
    aput-object v3, v1, v2

    .line 89
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
