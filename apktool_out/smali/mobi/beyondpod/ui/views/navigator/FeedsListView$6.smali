.class Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;
.super Ljava/lang/Object;
.source "FeedsListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsListView;->editFeed(Landroid/view/View;Lmobi/beyondpod/rsscore/Feed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

.field final synthetic val$feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 683
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    return v0

    .line 690
    :sswitch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-static {p1, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeleteFeed(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;)V

    return v0

    .line 694
    :sswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditFeed(Lmobi/beyondpod/rsscore/Feed;I)V

    return v0

    .line 698
    :sswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v2}, Lmobi/beyondpod/rsscore/Feed;->getLocalOrInheritedTrackSortOrder()I

    move-result v2

    invoke-static {p1, v1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdPlayFeedEpisodes(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;I)Z

    move-result p1

    .line 699
    invoke-static {p1}, Lmobi/beyondpod/rsscore/Configuration;->shouldAutoOpenPlayer(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 701
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    if-eqz p1, :cond_0

    .line 702
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->autoExpandPlayerOnNextPlay()V

    .line 703
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    invoke-interface {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->requestNavigatorClose()V

    :cond_1
    return v0

    .line 686
    :sswitch_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$6;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeedOrCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    return v0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
    .end sparse-switch
.end method
