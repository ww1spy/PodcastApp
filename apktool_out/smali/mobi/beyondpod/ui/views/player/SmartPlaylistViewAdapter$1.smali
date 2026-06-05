.class Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$1;
.super Ljava/lang/Object;
.source "SmartPlaylistViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;->access$100(Lmobi/beyondpod/ui/views/player/SmartPlaylistViewAdapter;)Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->openPlaylistOverflow(Landroid/view/View;Lmobi/beyondpod/services/player/smartplay/SmartPlaylist;)V

    return-void
.end method
