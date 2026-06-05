.class Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$Holder;
.super Ljava/lang/Object;
.source "AudioFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;-><init>(Lmobi/beyondpod/services/player/AudioFocusHelper$1;)V

    sput-object v0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$Holder;->sInstance:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;
    .locals 1

    .line 42
    sget-object v0, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$Holder;->sInstance:Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    return-object v0
.end method
