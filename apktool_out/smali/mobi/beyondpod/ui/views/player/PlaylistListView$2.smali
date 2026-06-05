.class Lmobi/beyondpod/ui/views/player/PlaylistListView$2;
.super Ljava/lang/Object;
.source "PlaylistListView.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


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

    .line 121
    iput-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private refreshActionModeTitle(Landroid/view/ActionMode;)V
    .locals 4

    .line 166
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getCheckedItems()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-static {}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$200()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {v3}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$300(Lmobi/beyondpod/ui/views/player/PlaylistListView;)Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/player/PlaylistViewAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    .line 150
    iget-object v0, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->getCheckedItems()Lmobi/beyondpod/rsscore/TrackList;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$100(Lmobi/beyondpod/ui/views/player/PlaylistListView;Landroid/view/MenuItem;Lmobi/beyondpod/rsscore/TrackList;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 141
    iget-object p2, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    iput-object p1, p2, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_ActionMode:Landroid/view/ActionMode;

    .line 142
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->clearChoices()V

    .line 143
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setDragEnabled(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 134
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    const/4 v0, 0x0

    iput-object v0, p1, Lmobi/beyondpod/ui/views/player/PlaylistListView;->_ActionMode:Landroid/view/ActionMode;

    .line 135
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->setDragEnabled(Z)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0

    .line 161
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->refreshActionModeTitle(Landroid/view/ActionMode;)V

    .line 126
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 127
    iget-object p1, p0, Lmobi/beyondpod/ui/views/player/PlaylistListView$2;->this$0:Lmobi/beyondpod/ui/views/player/PlaylistListView;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/views/player/PlaylistListView;->access$000(Lmobi/beyondpod/ui/views/player/PlaylistListView;Landroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method
