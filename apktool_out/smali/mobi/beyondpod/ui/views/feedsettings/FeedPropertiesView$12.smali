.class Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;
.super Ljava/lang/Object;
.source "FeedPropertiesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->showPatchFound(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

.field final synthetic val$patched:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;Ljava/lang/String;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->val$patched:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 665
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    iget-object v0, v0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->_ProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 668
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->this$0:Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 669
    invoke-static {}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView;->access$800()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;->val$patched:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100162

    .line 670
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100091

    const/4 v2, 0x0

    .line 671
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f100096

    .line 672
    new-instance v2, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12$1;

    invoke-direct {v2, p0}, Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12$1;-><init>(Lmobi/beyondpod/ui/views/feedsettings/FeedPropertiesView$12;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
