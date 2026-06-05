.class Lmobi/beyondpod/services/player/PlayList$1;
.super Ljava/lang/Object;
.source "PlayList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/player/PlayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/services/player/PlayList;


# direct methods
.method constructor <init>(Lmobi/beyondpod/services/player/PlayList;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lmobi/beyondpod/services/player/PlayList$1;->this$0:Lmobi/beyondpod/services/player/PlayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 693
    iget-object v0, p0, Lmobi/beyondpod/services/player/PlayList$1;->this$0:Lmobi/beyondpod/services/player/PlayList;

    invoke-static {v0}, Lmobi/beyondpod/services/player/PlayList;->access$000(Lmobi/beyondpod/services/player/PlayList;)V

    return-void
.end method
