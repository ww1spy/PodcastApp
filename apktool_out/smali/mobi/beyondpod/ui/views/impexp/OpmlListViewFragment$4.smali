.class Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$4;
.super Ljava/lang/Object;
.source "OpmlListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->dismissProgressDialog()V
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

    .line 261
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 265
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment$4;->this$0:Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/OpmlListViewFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
