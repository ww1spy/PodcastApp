.class Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;
.super Ljava/lang/Object;
.source "ImportFeedlyFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->showProgressDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    invoke-virtual {v2}, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    .line 136
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 138
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 139
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-object v1, v1, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment$1;->this$0:Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/impexp/ImportFeedlyFragment;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
