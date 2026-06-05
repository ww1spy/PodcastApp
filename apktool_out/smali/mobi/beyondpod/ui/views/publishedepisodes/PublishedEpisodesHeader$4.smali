.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;
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

    .line 187
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    if-nez p1, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 195
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    .line 198
    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/Feed;->getPodcastDownloadAction()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 199
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const v0, 0x7f090137

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditFeed(Lmobi/beyondpod/rsscore/Feed;I)V

    goto :goto_1

    .line 196
    :cond_3
    :goto_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader$4;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesHeader;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const v0, 0x7f090132

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditFeed(Lmobi/beyondpod/rsscore/Feed;I)V

    :cond_4
    :goto_1
    return-void
.end method
