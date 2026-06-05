.class Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;
.super Ljava/lang/Object;
.source "ImportFeedlyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->success(Lmobi/beyondpod/aggregators/GDataObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;

.field final synthetic val$feed:Lmobi/beyondpod/rsscore/Feed;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;Lmobi/beyondpod/rsscore/Feed;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;->this$1:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 206
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;->this$1:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->TAG:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;-><init>()V

    .line 212
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;->this$1:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0901f3

    .line 213
    sget-object v3, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v2, 0x1003

    .line 214
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 215
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 216
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;->this$1:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-virtual {v1}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 219
    :cond_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$3$1;->val$feed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->initialize(Lmobi/beyondpod/rsscore/Feed;)V

    .line 220
    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->loadCurrentFeed()V

    return-void
.end method
