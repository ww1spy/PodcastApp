.class Lmobi/beyondpod/ui/views/player/PlayerMini$1;
.super Ljava/lang/Object;
.source "PlayerMini.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 92
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerMini$1;->this$0:Lmobi/beyondpod/ui/views/player/PlayerMini;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlayerMini;->access$000(Lmobi/beyondpod/ui/views/player/PlayerMini;)Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;

    move-result-object p1

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/player/PlayerMini$IMiniPlayerOwner;->togglePlayPause()V

    return-void
.end method
