.class Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$2;
.super Ljava/lang/Object;
.source "UpdateAndDownloadQueueActivityDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 89
    iput-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$2;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 94
    invoke-static {}, Lmobi/beyondpod/downloadengine/UpdateAndDownloadManager;->hasWorkToDo()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lmobi/beyondpod/downloadengine/EnclosureDownloadManager;->queueCount()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog$2;->this$0:Lmobi/beyondpod/ui/views/UpdateAndDownloadQueueActivityDialog;

    invoke-static {p1}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdShowUpdateLog(Landroid/content/Context;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
