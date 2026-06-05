.class Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$1;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueActivityDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;


# direct methods
.method constructor <init>(Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$1;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$1;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowUpdateLog(Landroid/content/Context;)V

    return-void
.end method
