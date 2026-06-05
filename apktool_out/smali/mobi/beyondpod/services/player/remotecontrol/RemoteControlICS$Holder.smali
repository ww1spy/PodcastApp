.class Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS$Holder;
.super Ljava/lang/Object;
.source "RemoteControlICS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getInstance(Landroid/app/PendingIntent;)Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;
    .locals 1

    .line 33
    new-instance v0, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;

    invoke-direct {v0, p0}, Lmobi/beyondpod/services/player/remotecontrol/RemoteControlICS;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method
