.class Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus$Holder;
.super Ljava/lang/Object;
.source "TransportFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;-><init>(Lmobi/beyondpod/services/player/TransportFocusHelper$1;)V

    sput-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus$Holder;->sInstance:Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;
    .locals 1

    .line 38
    sget-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus$Holder;->sInstance:Lmobi/beyondpod/services/player/TransportFocusHelper$BroadcastReceiverTransportFocus;

    return-object v0
.end method
