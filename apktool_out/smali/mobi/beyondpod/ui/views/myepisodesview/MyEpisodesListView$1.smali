.class Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;
.super Ljava/lang/Object;
.source "MyEpisodesListView.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v0, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$100(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;Landroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 129
    iget-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iput-object p1, p2, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    .line 130
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setLongClickable(Z)V

    .line 131
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    const/4 v0, 0x0

    iput-object v0, p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_ActionMode:Landroid/view/ActionMode;

    .line 119
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p1}, Lmobi/beyondpod/rsscore/TrackList;->clear()V

    .line 120
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->setLongClickable(Z)V

    .line 121
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->notifyDataSetChanged()V

    .line 122
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->enableDisablePullToRefresh(Z)V

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->enableFastScrollIfNeeded()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;Lmobi/beyondpod/rsscore/Track;)V
    .locals 13
    .param p2    # Lmobi/beyondpod/rsscore/Track;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 151
    iget-object p2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {p2, v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->getCheckedSizeOnDiskFor(Lmobi/beyondpod/rsscore/TrackList;)Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    move-result-object p2

    .line 152
    iget-object v0, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-static {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$000(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListViewAdapter;->getCurrentTracksSizeOnDisk()Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;

    move-result-object v0

    .line 153
    new-instance v1, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;

    invoke-static {}, Lmobi/beyondpod/rsscore/repository/FeedRepository;->getRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmobi/beyondpod/rsscore/repository/FlashStorageLocation;->freeSpace()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 155
    iget-object v2, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v2, v2, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    const-string v2, "%s %s %s %s"

    const/4 v7, 0x4

    .line 157
    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object v8, v8, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_SelectedEpisodes:Lmobi/beyondpod/rsscore/TrackList;

    .line 159
    invoke-virtual {v8}, Lmobi/beyondpod/rsscore/TrackList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 160
    invoke-static {}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$200()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v8, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    .line 161
    invoke-static {v8}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$300(Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 162
    invoke-static {}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$400()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 157
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 166
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v2, "%s %s %s"

    .line 169
    new-array v7, v3, [Ljava/lang/Object;

    iget-wide v8, p2, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-lez v12, :cond_1

    const-string v8, "%s %s %s \u2022"

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v9, p2, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    .line 171
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v6

    invoke-static {}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$200()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v5

    iget-wide v9, v0, Lmobi/beyondpod/rsscore/helpers/CoreHelper$TrackSizeInfo;->sizeOnDisk:J

    .line 172
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    .line 170
    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    aput-object p2, v7, v6

    if-eqz v1, :cond_2

    .line 173
    invoke-static {v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->getFileLengthAsString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    const-string p2, "N/A"

    :goto_2
    aput-object p2, v7, v5

    .line 174
    invoke-static {}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->access$500()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v4

    .line 169
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 109
    invoke-interface {p2}, Landroid/view/Menu;->clear()V

    .line 110
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    invoke-virtual {p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->prepareActionModeOptionsMenu(Landroid/view/Menu;)V

    .line 111
    iget-object p1, p0, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$1;->this$0:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView;->_Owner:Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lmobi/beyondpod/ui/views/myepisodesview/MyEpisodesListView$IMyEpisodesListviewOwner;->enableDisablePullToRefresh(Z)V

    const/4 p1, 0x1

    return p1
.end method
