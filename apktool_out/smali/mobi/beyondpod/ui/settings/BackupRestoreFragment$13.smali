.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->selectBackupFile(ILmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

.field final synthetic val$backups:[Ljava/io/File;

.field final synthetic val$items:[Ljava/lang/String;

.field final synthetic val$listener:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/settings/BackupRestoreFragment;Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;[Ljava/lang/String;[Ljava/io/File;)V
    .locals 0

    .line 729
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    iput-object p2, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;->val$listener:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;

    iput-object p3, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;->val$items:[Ljava/lang/String;

    iput-object p4, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;->val$backups:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 733
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;->val$listener:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;

    if-eqz p1, :cond_0

    .line 735
    iget-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;->val$listener:Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;

    iget-object v0, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$13;->val$backups:[Ljava/io/File;

    aget-object p2, v1, p2

    invoke-interface {p1, v0, p2}, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$BackupSelectedListener;->onBackupSelected(Ljava/lang/String;Ljava/io/File;)V

    :cond_0
    return-void
.end method
