.class Lmobi/beyondpod/ui/views/player/PlaylistListView$4;
.super Ljava/lang/Object;
.source "PlaylistListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistListView;->initializeView(Lmobi/beyondpod/ui/views/player/PlaylistListView$IPlayListOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/player/PlaylistListView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->openShopercutOverflow(Landroid/view/View;)V

    return-void
.end method
