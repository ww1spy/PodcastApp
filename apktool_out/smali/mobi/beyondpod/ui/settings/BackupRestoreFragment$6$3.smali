.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$3;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$3;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 335
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6$3;->this$1:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;

    iget-object p1, p1, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$6;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-virtual {p1}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->createBackup()V

    return-void
.end method
