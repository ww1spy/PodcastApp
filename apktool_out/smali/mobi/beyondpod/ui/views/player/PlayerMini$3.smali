.class Lmobi/beyondpod/ui/views/player/PlayerMini$3;
.super Ljava/lang/Object;
.source "PlayerMini.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/SwipeDismissTouchListener$DismissCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlayerMini;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlayerMini;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlayerMini;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini$3;->this$0:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDismiss(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDismiss(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini$3;->this$0:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerMini;->access$000(Lmobi/beyondpod/ui/views/player/PlayerMini;)Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 138
    invoke-static {p1}, Lmobi/beyondpod/rsscore/ConfigurationHD;->setPlayerDismissedByUser(Z)V

    .line 139
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini$3;->this$0:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerMini;->access$000(Lmobi/beyondpod/ui/views/player/PlayerMini;)Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;->dismissPlayer()V

    :cond_0
    return-void
.end method
