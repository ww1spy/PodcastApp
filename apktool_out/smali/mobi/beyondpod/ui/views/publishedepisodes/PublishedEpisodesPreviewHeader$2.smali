.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$2;
.super Ljava/lang/Object;
.source "PublishedEpisodesPreviewHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 102
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$2;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->subscribeToCurrentFeed()V

    return-void
.end method
