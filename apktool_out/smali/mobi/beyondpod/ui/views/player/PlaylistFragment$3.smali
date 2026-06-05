.class Lmobi/beyondpod/ui/views/player/PlaylistFragment$3;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$3;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, -0x1

    .line 119
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditSmartPlayList(I)V

    return-void
.end method
