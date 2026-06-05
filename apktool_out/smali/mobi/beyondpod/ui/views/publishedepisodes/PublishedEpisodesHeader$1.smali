.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$1;
.super Ljava/lang/Object;
.source "PublishedEpisodesHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 123
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 127
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditFeed(Lmobi/beyondpod/rsscore/Feed;I)V

    return-void
.end method
