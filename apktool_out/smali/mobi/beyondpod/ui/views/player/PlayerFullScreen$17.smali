.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$17;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->loadCharms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$17;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 512
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$17;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->playerCarModeVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$400(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;Z)V

    return-void
.end method
