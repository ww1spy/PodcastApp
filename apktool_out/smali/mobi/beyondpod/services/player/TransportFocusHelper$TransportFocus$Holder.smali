.class Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus$Holder;
.super Ljava/lang/Object;
.source "TransportFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;-><init>(Lmobi/beyondpod/services/player/TransportFocusHelper$1;)V

    sput-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus$Holder;->sInstance:Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;
    .locals 1

    .line 73
    sget-object v0, Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus$Holder;->sInstance:Lmobi/beyondpod/services/player/TransportFocusHelper$TransportFocus;

    return-object v0
.end method
