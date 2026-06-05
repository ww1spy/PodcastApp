.class Lmobi/beyondpod/BeyondPodApplication$7;
.super Ljava/lang/Object;
.source "BeyondPodApplication.java"

# interfaces
.implements Lmobi/beyondpod/services/player/PlayListEvents$PlayListEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/BeyondPodApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/BeyondPodApplication;


# direct methods
.method constructor <init>(Lmobi/beyondpod/BeyondPodApplication;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lmobi/beyondpod/BeyondPodApplication$7;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayListEvent(Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V
    .locals 1

    .line 665
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication$7;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-static {v0, p1}, Lmobi/beyondpod/BeyondPodApplication;->access$400(Lmobi/beyondpod/BeyondPodApplication;Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V

    .line 666
    iget-object v0, p0, Lmobi/beyondpod/BeyondPodApplication$7;->this$0:Lmobi/beyondpod/BeyondPodApplication;

    invoke-static {v0, p1}, Lmobi/beyondpod/BeyondPodApplication;->access$500(Lmobi/beyondpod/BeyondPodApplication;Lmobi/beyondpod/services/player/PlayListEvents$PlayListEvent;)V

    return-void
.end method
