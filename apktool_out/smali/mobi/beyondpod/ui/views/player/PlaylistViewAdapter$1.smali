.class Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$1;
.super Ljava/lang/Object;
.source "PlaylistViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/rsscore/Track;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter$1;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->access$100(Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;)Lmobi/beyondpod/ui/views/player/PlaylistListView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->openTrackOverflow(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V

    return-void
.end method
