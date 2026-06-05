.class Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;
.super Ljava/lang/Object;
.source "FeedsListView.java"

# interfaces
.implements Landroid/support/v7/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/navigator/FeedsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 133
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return p2

    .line 136
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdAddNewCategory(Landroid/content/Context;)V

    return p2
.end method

.method public onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 120
    iget-object p2, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iput-object p1, p2, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    .line 122
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->refreshFeeds()V

    .line 123
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->switchToEditMode()V

    .line 124
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 125
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    const p2, 0x7f1002a0

    invoke-virtual {p1, p2}, Landroid/support/v7/view/ActionMode;->setTitle(I)V

    .line 126
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/support/v7/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    const/4 v0, 0x0

    iput-object v0, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_ActionMode:Landroid/support/v7/view/ActionMode;

    .line 109
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    instance-of p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Owner:Landroid/support/v4/app/Fragment;

    check-cast p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lmobi/beyondpod/ui/views/navigator/FeedsListView$IFeedsListViewOwner;->switchToReorderCategoriesMode(Z)V

    .line 112
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Extras:Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/views/navigator/NavigatorExtras;->switchToNonEditMode()V

    .line 113
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->_Home:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 114
    iget-object p1, p0, Lmobi/beyondpod/ui/views/navigator/FeedsListView$1;->this$0:Lmobi/beyondpod/ui/views/navigator/FeedsListView;

    invoke-static {p1}, Lmobi/beyondpod/ui/views/navigator/FeedsListView;->access$000(Lmobi/beyondpod/ui/views/navigator/FeedsListView;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
