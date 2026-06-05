.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;
.super Ljava/lang/Object;
.source "OpmlListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->loadCurrentFeedInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 219
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 222
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    .line 224
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {}, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v5, v5, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_CurrentFeed:Lmobi/beyondpod/rsscore/Feed;

    invoke-virtual {v5}, Lmobi/beyondpod/rsscore/Feed;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 228
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 229
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$3;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
