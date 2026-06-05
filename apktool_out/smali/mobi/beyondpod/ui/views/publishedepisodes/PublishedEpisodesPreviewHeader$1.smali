.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$1;
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

    .line 89
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->_ExtrasGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesPreviewHeader;Z)V

    return-void
.end method
