.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP$Holder;
.super Ljava/lang/Object;
.source "RemoteControlLP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getInstance(Landroid/app/PendingIntent;)Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;
    .locals 1

    .line 72
    new-instance v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlLP;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method
