.class public Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;
.super Ljava/util/EventObject;
.source "PlayListEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/PlayListEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayListEvent"
.end annotation


# static fields
.field public static final EVENT_CurrentTrackChanged:I = 0x1

.field public static final EVENT_EndOfPlayList:I = 0x3

.field public static final EVENT_PlaylistChanged:I = 0x0

.field public static final EVENT_PlaystateChanged:I = 0x2


# instance fields
.field public Type:I


# direct methods
.method public constructor <init>(Lmobi/beyondpod/services/player/PlayList;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 40
    iput p2, p0, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    return-void
.end method

.method private getEventName()Ljava/lang/String;
    .locals 1

    .line 51
    iget v0, p0, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->Type:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown event!"

    return-object v0

    :pswitch_0
    const-string v0, "EndOfPlayList"

    return-object v0

    :pswitch_1
    const-string v0, "Playstate Changed"

    return-object v0

    :pswitch_2
    const-string v0, "Current track Changed"

    return-object v0

    :pswitch_3
    const-string v0, "Playlist Changed"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "PlayListEvent: %s"

    const/4 v1, 0x1

    .line 46
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
