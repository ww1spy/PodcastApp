.class Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/player/PlaylistFragment;->switchToSmartPlay()V
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

    .line 266
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 279
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_PlayList:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_Expander:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 281
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_Expander:Landroid/widget/ImageView;

    const v0, 0x7f0800fa

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 270
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->access$100(Lmobi/beyondpod/ui/views/player/PlaylistFragment;)V

    .line 271
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayList:Lmobi/beyondpod/ui/views/player/SmartPlayListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/SmartPlayListView;->reloadList()V

    .line 272
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_Expander:Landroid/widget/ImageView;

    const v0, 0x7f0800f7

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistFragment$4;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistFragment;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/player/PlaylistFragment;->_SmartPlayPanel:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
