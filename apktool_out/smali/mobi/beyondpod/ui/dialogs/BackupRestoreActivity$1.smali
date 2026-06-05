.class Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity$1;
.super Ljava/lang/Object;
.source "BackupRestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity$1;->this$0:Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/dialogs/BackupRestoreActivity;->finish()V

    return-void
.end method
