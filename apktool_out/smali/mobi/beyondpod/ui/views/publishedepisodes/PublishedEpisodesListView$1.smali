.class Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;
.super Ljava/lang/Object;
.source "PublishedEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private refreshActionModeTitle(Landroid/view/ActionMode;)V
    .locals 4

    .line 215
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "%s %s %s %s"

    const/4 v1, 0x4

    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object v3, v3, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$300()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    .line 218
    invoke-static {v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->getAllSectionItemsCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$400()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 217
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, ""

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {v0, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$200(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 195
    iget-object p2, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iput-object p1, p2, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    .line 196
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setLongClickable(Z)V

    .line 197
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->enableDisablePullToRefresh(Z)V

    .line 198
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 185
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v0, 0x0

    iput-object v0, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    .line 186
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_SelectedItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 187
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->setLongClickable(Z)V

    .line 188
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$FeedContentListViewOwner;->enableDisablePullToRefresh(Z)V

    .line 189
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$100(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;)Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;Lmobi/beyondpod/rsscore/rss/entities/RssFeedItem;)V
    .locals 0

    .line 231
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 232
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->refreshActionModeTitle(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->refreshActionModeTitle(Landroid/view/ActionMode;)V

    .line 177
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 178
    iget-object p1, p0, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/publishedepisodes/PublishedEpisodesListView;Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
