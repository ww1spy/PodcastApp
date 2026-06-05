.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Ljava/lang/String;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 626
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 629
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 630
    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100162

    .line 631
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f10008a

    const/4 v2, 0x0

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100090

    .line 633
    new-instance v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f10008f

    .line 642
    new-instance v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$2;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11$2;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$11;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
