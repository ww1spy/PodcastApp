.class Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$5;
.super Ljava/lang/Object;
.source "MoveFilesDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->notifyAndRestart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 576
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/beyondpod/BeyondPodApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "mobi.beyondpod.action.VIEW_MASTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long v6, v2, v4

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 581
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-static {v0, v2}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->access$1502(Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;Z)Z

    .line 582
    iget-object v0, p0, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog$5;->this$0:Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/dialogs/MoveFilesDialog;->finish()V

    return-void
.end method
