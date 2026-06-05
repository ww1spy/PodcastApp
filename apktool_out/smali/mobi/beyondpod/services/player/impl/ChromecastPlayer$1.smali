.class Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;
.super Ljava/lang/Object;
.source "ChromecastPlayer.java"

# interfaces
.implements Lmobi/beyondpod/services/player/impl/ChromecastDevice$MediaControlChannel$StreamNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/services/player/impl/ChromecastPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCompleted()V
    .locals 4

    .line 93
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V

    .line 94
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {v0, v2}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x64
    .end array-data
.end method

.method public onLoadFailed()V
    .locals 4

    .line 87
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x64

    aput v3, v1, v2

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V

    return-void
.end method

.method public onSeekCompleted()V
    .locals 4

    .line 100
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V

    return-void
.end method

.method public onSeekFailed()V
    .locals 4

    .line 106
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x64

    aput v3, v1, v2

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V

    return-void
.end method

.method public onSessionInterrupted(II)V
    .locals 5

    .line 79
    iget-object p2, p0, Lmobi/beyondpod/services/player/impl/ChromecastPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/ChromecastPlayer;

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0x64

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v3, 0x1

    const v4, 0x18a92

    aput v4, v1, v3

    if-ne p1, v0, :cond_0

    const/16 v2, 0xc8

    :cond_0
    const/4 p1, 0x2

    aput v2, v1, p1

    invoke-static {p2, v1}, Lmobi/beyondpod/services/player/impl/ChromecastPlayer;->access$000(Lmobi/beyondpod/services/player/impl/ChromecastPlayer;[I)V

    return-void
.end method
