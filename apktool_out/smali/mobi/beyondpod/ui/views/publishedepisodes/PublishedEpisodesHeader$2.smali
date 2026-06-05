.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$2;
.super Ljava/lang/Object;
.source "PublishedEpisodesHeader.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 136
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->refreshCurrentFeed(ZZ)Z

    return v0
.end method
