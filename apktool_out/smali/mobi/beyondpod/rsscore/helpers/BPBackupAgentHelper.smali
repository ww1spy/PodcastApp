.class public Lmobi/beyondpod/rsscore/helpers/BPBackupAgentHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "BPBackupAgentHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BPBackupAgentHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-super {p0, p1}, Landroid/app/backup/BackupAgentHelper;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 24
    sget-object p1, Lmobi/beyondpod/rsscore/helpers/BPBackupAgentHelper;->TAG:Ljava/lang/String;

    const-string v0, "Android Backup complete!"

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreFinished()V
    .locals 4

    .line 30
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onRestoreFinished()V

    .line 32
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/BPBackupAgentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Android Restore complete! Post-processing..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->apiLevel()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 36
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/BPBackupAgentHelper;->TAG:Ljava/lang/String;

    const-string v1, "  Setting restore flag..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lmobi/beyondpod/rsscore/helpers/BPBackupAgentHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "androidBackupRestored"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 40
    sget-object v1, Lmobi/beyondpod/rsscore/helpers/BPBackupAgentHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Restore flag set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/BPBackupAgentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Restoring on pre M device. Nothing to do!"

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    sget-object v0, Lmobi/beyondpod/rsscore/helpers/BPBackupAgentHelper;->TAG:Ljava/lang/String;

    const-string v1, "Restore post-processing completed! Exiting..."

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
