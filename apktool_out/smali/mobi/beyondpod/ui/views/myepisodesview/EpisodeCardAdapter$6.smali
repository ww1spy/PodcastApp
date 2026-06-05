.class Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$6;
.super Ljava/lang/Object;
.source "EpisodeCardAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 111
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$6;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$6;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    invoke-static {v0, p1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;Landroid/view/View;)Lmobi/beyondpod/rsscore/Track;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$6;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->access$100(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    move-result-object v1

    invoke-interface {v1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;->isMultiSelecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$6;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    invoke-static {v1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->access$100(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;->onItemSelected(Landroid/view/View;Lmobi/beyondpod/rsscore/Track;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$6;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;->access$100(Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter;)Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;

    move-result-object p1

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/EpisodeCardAdapter$ICardAdapterOwner;->onAddRemovePlaylist(Lmobi/beyondpod/rsscore/Track;)V

    :cond_1
    return-void
.end method
