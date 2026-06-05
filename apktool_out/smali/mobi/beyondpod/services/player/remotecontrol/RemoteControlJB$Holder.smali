.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB$Holder;
.super Ljava/lang/Object;
.source "RemoteControlJB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance(Landroid/app/PendingIntent;)Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;
    .locals 1

    .line 27
    new-instance v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlJB;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method
