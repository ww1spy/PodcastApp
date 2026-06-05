.class Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$1;
.super Ljava/lang/Object;
.source "PlaylistHeaderActionbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistHeaderActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, -0x1

    .line 63
    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditSmartPlayList(I)V

    return-void
.end method
