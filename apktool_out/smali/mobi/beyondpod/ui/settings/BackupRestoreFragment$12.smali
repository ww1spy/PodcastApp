.class Lmobi/beyondpod/ui/settings/BackupRestoreFragment$12;
.super Ljava/lang/Object;
.source "BackupRestoreFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/settings/BackupRestoreFragment;->restoreFromSnapshot(Lmobi/beyondpod/rsscore/BackupManifest;)V
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

    .line 649
    iput-object p1, p0, Lmobi/beyondpod/ui/settings/BackupRestoreFragment$12;->this$0:Lmobi/beyondpod/ui/settings/BackupRestoreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 653
    invoke-static {}, Lmobi/beyondpod/rsscore/BackupRestore;->cleanSnapshotFolder()V

    return-void
.end method
