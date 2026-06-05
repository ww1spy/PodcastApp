.class Lmobi/beyondpod/services/player/impl/SonicPlayer$1;
.super Ljava/lang/Object;
.source "SonicPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/impl/SonicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    :try_start_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    invoke-static {v0}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$300(Lmobi/beyondpod/services/player/impl/SonicPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$402(Lmobi/beyondpod/services/player/impl/SonicPlayer;I)I

    .line 280
    iget-object v0, p0, Lmobi/beyondpod/services/player/impl/SonicPlayer$1;->this$0:Lmobi/beyondpod/services/player/impl/SonicPlayer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x64

    aput v3, v1, v2

    invoke-static {v0, v1}, Lmobi/beyondpod/services/player/impl/SonicPlayer;->access$500(Lmobi/beyondpod/services/player/impl/SonicPlayer;[I)V

    :goto_0
    return-void
.end method
