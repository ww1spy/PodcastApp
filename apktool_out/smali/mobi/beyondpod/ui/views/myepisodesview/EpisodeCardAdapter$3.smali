.class Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$3;
.super Ljava/lang/Object;
.source "EpisodeCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$3;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$3;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->access$100(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    move-result-object v0

    invoke-interface {v0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;->isMultiSelecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 68
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$3;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->access$100(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    move-result-object v0

    const v2, 0x7f09006e

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmobi/beyondpod/rsscore/Track;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;->onItemLongPressed(Lmobi/beyondpod/rsscore/Track;)V

    return v1
.end method
