.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;)V
    .locals 0

    .line 467
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 471
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    new-instance v0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9$1;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9$1;-><init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment$9;)V

    const v1, 0x7f1000bf

    invoke-static {p1, v1, v0}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->access$500(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;ILmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;)V

    return-void
.end method
