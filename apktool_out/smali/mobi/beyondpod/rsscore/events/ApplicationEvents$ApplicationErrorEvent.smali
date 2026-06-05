.class public Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;
.super Ljava/util/EventObject;
.source "ApplicationEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/rsscore/events/ApplicationEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationErrorEvent"
.end annotation


# static fields
.field public static final EVENT_IntializationError:I = 0x2

.field public static final EVENT_InvalidGoogleLogin:I = 0x1

.field public static final EVENT_LocalTimeDrifted:I = 0x6

.field public static final EVENT_PodcastDownloadSkipped_DeviceIsNotPluggedIn:I = 0x3

.field public static final EVENT_PodcastDownloadSkipped_WiFiNotDetected:I = 0x4

.field public static final EVENT_StorageCardCorrupted:I = 0x0

.field public static final EVENT_UpdateAndDownload_Error:I = 0x5


# instance fields
.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 43
    iput p2, p0, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;->type:I

    return-void
.end method

.method private getEventName()Ljava/lang/String;
    .locals 1

    .line 54
    iget v0, p0, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;->type:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown event!"

    return-object v0

    :pswitch_0
    const-string v0, "Local Time Drifted"

    return-object v0

    :pswitch_1
    const-string v0, "Update And Download Error"

    return-object v0

    :pswitch_2
    const-string v0, "Podcast Download Skipped WiFi Not Detected"

    return-object v0

    :pswitch_3
    const-string v0, "Podcast Download Skipped Device Is Not Plugged In"

    return-object v0

    :pswitch_4
    const-string v0, "Initialization Error"

    return-object v0

    :pswitch_5
    const-string v0, "Invalid Google Login"

    return-object v0

    :pswitch_6
    const-string v0, "Storage Card Corrupted"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    const-string v0, "ApplicationErrorEvent: %s"

    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lmobi/beyondpod/rsscore/events/ApplicationEvents$ApplicationErrorEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
