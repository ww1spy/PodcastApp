.class Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;
.super Ljava/lang/Object;
.source "DeletePodcastDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

.field final synthetic val$msg:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;Landroid/widget/TextView;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

    iput-object p2, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;->val$msg:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 106
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

    invoke-static {p1, p2}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->access$002(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;Z)Z

    .line 107
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;->val$msg:Landroid/widget/TextView;

    iget-object p2, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog$1;->this$0:Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;

    invoke-static {v0}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->access$000(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;->access$100(Lmobi/beyondpod/ui/dialogs/DeletePodcastDialog;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
