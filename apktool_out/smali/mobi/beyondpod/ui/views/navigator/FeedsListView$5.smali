.class Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;
.super Ljava/lang/Object;
.source "FeedsListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsListView;->editCategory(Landroid/view/View;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

.field final synthetic val$selected:Lmobi/beyondpod/rsscore/categories/FeedCategory;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->val$selected:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 630
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 650
    :pswitch_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    if-nez p1, :cond_0

    .line 651
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_multiChoiceListener:Landroid/support/v7/view/ActionMode$Callback;

    invoke-virtual {p1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)V

    .line 653
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    if-eqz p1, :cond_1

    .line 654
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    invoke-interface {p1, v1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->switchToReorderCategoriesMode(Z)V

    :cond_1
    return v1

    .line 645
    :pswitch_1
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->val$selected:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSetUpdateSchedule(Lmobi/beyondpod/rsscore/categories/FeedCategory;Landroid/content/Context;Z)V

    return v1

    .line 641
    :pswitch_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->val$selected:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdEditCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return v1

    .line 637
    :pswitch_3
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->val$selected:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {p1, v0}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdDeleteCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/categories/FeedCategory;)V

    return v1

    .line 633
    :cond_2
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$5;->val$selected:Lmobi/beyondpod/rsscore/categories/FeedCategory;

    invoke-static {p1, v0, v2}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdUpdateFeedOrCategory(Landroid/content/Context;Lmobi/beyondpod/rsscore/Feed;Lmobi/beyondpod/rsscore/categories/FeedCategory;)Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
