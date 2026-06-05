.class Lmobi/beyondpod/ui/views/player/PlayerFullScreen$11;
.super Ljava/lang/Object;
.source "PlayerFullScreen.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/player/PlayerFullScreen;
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

    .line 226
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$11;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 230
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$11;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlayerFullScreen$11;->this$0:Lmobi/beyondpod/ui/views/player/PlayerFullScreen;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->access$100(Lmobi/beyondpod/ui/views/player/PlayerFullScreen;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/player/PlayerFullScreen;->togglePlaylistPager(Z)V

    return v1
.end method
