.class public abstract Lmobi/beyondpod/services/player/AudioFocusHelper;
.super Ljava/lang/Object;
.source "AudioFocusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "AudioFocusHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lmobi/beyondpod/services/player/AudioFocusHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lmobi/beyondpod/services/player/AudioFocusHelper;
    .locals 1

    .line 30
    invoke-static {}, Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus$Holder;->access$000()Lmobi/beyondpod/services/player/AudioFocusHelper$AudioFocus;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract releaseAudioFocus()V
.end method

.method abstract trySetAudioFocus()Z
.end method
